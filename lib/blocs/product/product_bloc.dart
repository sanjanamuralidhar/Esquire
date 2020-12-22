import 'dart:async';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/product.dart';
import 'package:openapi/model/product_detail_aggregate.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductLoadingState());
  final Openapi openApi = Openapi();
  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    Map<String, String> token =
        Config.TOKEN != null ? Config.TOKEN : {'Authorization': null};
    List<Product> products;
    yield ProductLoadingState();
    if (event is GetProductsByCategoryEvent) {
      try {
        await openApi
            .getProductResourceApi()
            .getAllProductsByCategoryIdUsingGET(event.categoryId,
                headers: token)
            .then((value) => products = value.data);
        yield ProductLoadedState(products: products);
      } catch (e) {
        yield ProductErrorState();
        print('getAllProductDetailsByCategoryIdUsingGET ' + e.message);
      }
    }
    // TODO need to change api to getAllRecentProducts
    if (event is GetRecentProductEvent) {
      try {
        await openApi
            .getProductResourceApi()
            .getAllProductsByCategoryIdUsingGET(1, headers: token)
            .then((value) => products = value.data);
        yield ProductLoadedState(products: products);
      } catch (e) {
        yield ProductErrorState();
        print('getAllProductDetailsByCategoryIdUsingGET ' + e.message);
      }
    }
  }
}
