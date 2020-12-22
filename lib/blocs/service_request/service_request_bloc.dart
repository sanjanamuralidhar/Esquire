import 'dart:async';
import 'dart:math';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/branch.dart';
import 'package:openapi/model/branch_dto.dart';
import 'package:openapi/model/brand.dart';
import 'package:openapi/model/brand_dto.dart';
import 'package:openapi/model/category_dto.dart';
import 'package:openapi/model/product.dart';
import 'package:openapi/model/served_product.dart';
import 'package:openapi/model/ticket.dart';
import 'package:openapi/model/ticket_dto.dart';

part 'service_request_event.dart';
part 'service_request_state.dart';

class ServiceRequestBloc
    extends Bloc<ServiceRequestEvent, ServiceRequestState> {
  ServiceRequestBloc() : super(ServiceRequestInitialState());

  final Openapi openApi = Openapi();
  Branch branch;
  Ticket createdTicket;
  List<BrandDTO> brands;
  List<CategoryDTO> categories;
  ServedProduct product;

  Map<String, String> token =
      Config.TOKEN != null ? Config.TOKEN : {'Authorization': null};
  @override
  Stream<ServiceRequestState> mapEventToState(
    ServiceRequestEvent event,
  ) async* {
    if (event is UpdateBranchEvent) {
      this.branch = event.branch;
      //yield ServiceRequestInitialState();
    }

    if (event is UpdateProductEvent) {
      this.product = event.product;
      yield ServiceRequestInitialState();
    }
    if (event is DeleteServiceProductEvent) {
      this.product = null;
      try {
        var brandData = await openApi
            .getBrandResourceApi()
            .getAllBrandsUsingGET(headers: Config.TOKEN);
        brands = brandData.data;
      } on Exception catch (e) {
        print('getAllBrandsUsingGET ' + e.toString());
      }
      try {
        var categoriesData = await openApi
            .getCategoryResourceApi()
            .getAllCategoriesUsingGET(headers: Config.TOKEN);
        categories = categoriesData.data;
      } on Exception catch (e) {
        print('getAllBrandsUsingGET ' + e.toString());
      }
      yield ServiceRequestInitialState();
      print('PRODUCT  ' + this.product.toString());
    }
    if (event is CreateServiceRequestEvent) {
      try {
        // print('TICKET  ' + event.ticket.customer.toString());
        var ticketData = await openApi
            .getCommandResourceApi()
            .createTicketWithNewServedProductUsingPOST(event.ticket,
                headers: token);
        createdTicket = ticketData.data;

        yield ServiceRequestCompletedState(ticket: ticketData.data);
      } on Exception catch (e) {
        yield ServiceRequestErrorState();
        print(e.toString());
      }
    }
  }
}
