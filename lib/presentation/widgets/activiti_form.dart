import 'package:EsquireCustomerApp/blocs/activiti/activiti_bloc.dart';
import 'package:EsquireCustomerApp/blocs/initial/intial_bloc.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:openapi/model/form_data_response.dart';
import 'package:openapi/model/rest_form_property.dart';
import 'package:openapi/model/ticket.dart';

class ActivitiForm extends StatelessWidget {
  final Ticket ticket;
  ActivitiForm({this.ticket});
  @override
  Widget build(BuildContext context) {
    final ActivitiBloc _activitiBloc = BlocProvider.of<ActivitiBloc>(context);
    print(ticket.ticketHistories.first.serviceExecutive);
    final GlobalKey<FormBuilderState> _form = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(_activitiBloc.tasks.first['name']),
      ),
      body: BlocBuilder<ActivitiBloc, ActivitiState>(
        builder: (context, state) {
          return state is FormDataLoadedState
              ? FormBuilder(
                  key: _form,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                            children: _activitiBloc.formVariable.formProperties
                                .map((formField) {
                          if (formField.id == 'executiveId' ||
                              formField.id == 'statusUpdate' ||
                              formField.id == 'userId') {
                            return Container();
                          } else if (formField.type == 'boolean') {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FormBuilderSwitch(
                                  initialValue: true,
                                  attribute: formField.id,
                                  label: Text(formField.name)),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FormBuilderTextField(
                                attribute: formField.id,
                                initialValue: '',
                                decoration:
                                    InputDecoration(labelText: formField.name),
                              ),
                            );
                          }
                        }).toList()),
                      ),
                      FlatButton(
                          onPressed: () {
                            if (_form.currentState.saveAndValidate()) {
                              Map<String, dynamic> formData =
                                  _form.currentState.value;
                              ListBuilder<RestFormProperty> formProperties =
                                  ListBuilder<RestFormProperty>();

                              _activitiBloc.formVariable.formProperties
                                  .forEach((element) {
                                print(element.value);
                                RestFormPropertyBuilder restFormProperty =
                                    RestFormProperty().toBuilder()
                                      ..datePattern = element.datePattern
                                      ..id = element.id
                                      ..name = element.name
                                      ..readable = element.readable
                                      ..required_ = element.required_
                                      ..type = element.type
                                      ..writable = element.writable
                                      ..value = element.id == 'userId'
                                          ? Config.USER.login
                                          : element.id == 'statusUpdate'
                                              ? element.value
                                              : element.id == 'executiveId'
                                                  ? null
                                                  : formData[element.id]
                                                      .toString();
                                formProperties.add(restFormProperty.build());
                              });
                              FormDataResponseBuilder form = FormDataResponse()
                                  .toBuilder()
                                    ..deploymentId =
                                        _activitiBloc.formVariable.deploymentId
                                    ..formKey =
                                        _activitiBloc.formVariable.formKey
                                    ..processDefinitionId = ticket.trackingId
                                    ..processDefinitionUrl = _activitiBloc
                                        .formVariable.processDefinitionUrl
                                    ..taskId = _activitiBloc.formVariable.taskId
                                    ..taskUrl =
                                        _activitiBloc.formVariable.taskUrl
                                    ..formProperties = formProperties;

                              _activitiBloc.add(CompleteTaskEvent(
                                  data: form.build(),
                                  message: _activitiBloc.tasks[0]['name']));
                              Get.close(2);

                              print('FORM ' + form.build().toString());
                            }
                          },
                          child: Text('Submit'))
                    ],
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
