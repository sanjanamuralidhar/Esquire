import 'dart:async';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/category_dto.dart';

part 'our_products_event.dart';
part 'our_products_state.dart';

class OurProductsBloc extends Bloc<OurProductsEvent, OurProductsState> {
  OurProductsBloc() : super(OurProductsLoadingState());
  final Openapi openApi = Openapi(interceptors: [
    InterceptorsWrapper(
      onRequest: (options) {
        RequestOptions(headers: {'Authorization': 'Bearer ${Config.TOKEN}'});
      },
    )
  ]);
  @override
  Stream<OurProductsState> mapEventToState(
    OurProductsEvent event,
  ) async* {
    Map<String, String> token =
        Config.TOKEN != null ? Config.TOKEN : {'Authorization': null};

    List<CategoryDTO> categories;
    yield OurProductsLoadingState();
    try {
      await openApi
          .getCategoryResourceApi()
          .getAllCategoriesUsingGET(page: 0, headers: token)
          .then((value) => {categories = value.data});
      yield OurProductsLoadedState(categories: categories);
    } catch (e) {
      yield ErrorOurProductsState();
      print('getAllCategoriesUsingGET ' + e.message);
    }
  }
}
