import 'dart:async';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/served_product.dart';

part 'served_products_event.dart';
part 'served_products_state.dart';

class ServedProductsBloc
    extends Bloc<ServedProductsEvent, ServedProductsState> {
  ServedProductsBloc() : super(ServedProductLoadingState());
  final Openapi openApi = Openapi();
  @override
  Stream<ServedProductsState> mapEventToState(
    ServedProductsEvent event,
  ) async* {
    Map<String, String> token =
        Config.TOKEN != null ? Config.TOKEN : {'Authorization': null};
    List<ServedProduct> servedProduct;
    if (event is GetAllServedProduct) {
      try {
        await openApi
            .getServedProductResourceApi()
            .getAllServedProductByCustomerIdUsingGET(Config.CUSTOMER.id,
                page: 0, headers: token)
            .then((value) => servedProduct = value.data);
        if (servedProduct.length == 0) {
          yield ServedProductEmptyState();
        } else {
          yield ServedProductLoadedState(products: servedProduct);
        }
      } catch (e) {
        yield ServedProductErrorState();
        print('getAllServedProductsByCustomerIdUsingGET ' + e.toString());
      }
    }
  }
}
