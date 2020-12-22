import 'dart:async';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/customer_account_dto.dart';

part 'customer_account_event.dart';
part 'customer_account_state.dart';

class CustomerAccountBloc
    extends Bloc<CustomerAccountEvent, CustomerAccountState> {
  CustomerAccountBloc() : super(CustomerAccountLoadingState());

  final Openapi openApi = Openapi(interceptors: [
    InterceptorsWrapper(
      onRequest: (options) {
        RequestOptions(headers: {'Authorization': 'Bearer ${Config.TOKEN}'});
      },
    )
  ]);
  @override
  Stream<CustomerAccountState> mapEventToState(
    CustomerAccountEvent event,
  ) async* {
    yield CustomerAccountLoadingState();
    await openApi
        .getCustomerAccountResourceApi()
        .getAllCustomerAccountsUsingGET(page: 0)
        .then((value) => null);
  }
}
