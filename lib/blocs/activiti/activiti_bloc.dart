import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:built_value/json_object.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/form_data_response.dart';
import 'package:openapi/model/served_product_warranty.dart';
import 'package:openapi/model/ticket.dart';

part 'activiti_event.dart';
part 'activiti_state.dart';

class ActivitiBloc extends Bloc<ActivitiEvent, ActivitiState> {
  ActivitiBloc() : super(ActivitiInitial());
  final Openapi _openapi = Openapi();
  FormDataResponse formVariable;
  List<ServedProductWarranty> warranties;
  String taskId;
  List<dynamic> tasks;
  @override
  Stream<ActivitiState> mapEventToState(
    ActivitiEvent event,
  ) async* {
    if (event is GetAllTaskEvent) {
      warranties = event.ticket.product.warranties.toList();
      try {
        await _openapi
            .getQueryResourceApi()
            .getTasksUsingGET(
                trackingId: event.ticket.trackingId,
                candidateGroup: 'ROLE_USER',
                headers: Config.TOKEN)
            .then((value) => tasks = value.data.data.asList);

        if (tasks.length > 0) {
          taskId = tasks.first['id'];
          print(tasks.first['name'].toString());
        }
      } on Exception catch (e) {
        print('getTasksUsingGET ' + e.toString());
      }
      if (tasks.length > 0) {
        try {
          await _openapi
              .getQueryResourceApi()
              .getFormDataVariablesUsingGET(tasks[0]['id'],
                  headers: Config.TOKEN)
              .then((value) => formVariable = value.data);
        } on Exception catch (e) {
          print('getFormDataVariablesUsingGET ' + e.toString());
        }
      }
      yield FormDataLoadedState();
    }
    if (event is CompleteTaskEvent) {
      try {
        await _openapi
            .getCommandResourceApi()
            .completeTasksWithFormUsingPOST(event.data, headers: Config.TOKEN)
            .then((value) => print(value.toString()));
        yield TaskCompletedState();
        yield FormDataLoadedState();
      } on Exception catch (e) {
        yield TaskCompletedState();
        yield FormDataLoadedState();

        print('completeTasksUsingPOST ' + e.toString());
      }
    }
  }
}
