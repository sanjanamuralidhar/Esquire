import 'package:EsquireCustomerApp/blocs/selection/selection_bloc.dart';
import 'package:openapi/model/served_product.dart';
import 'package:openapi/model/served_product_aggregate.dart';
import 'package:EsquireCustomerApp/presentation/pages/service_request_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ServiceRequestDropDown extends StatelessWidget {
  final List<ServedProduct> products;
  ServiceRequestDropDown({this.products});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectionBloc>(
      create: (context) => SelectionBloc(),
      child: Builder(
        builder: (context) {
          // ignore: close_sinks
          final _serviceRequestBloc = BlocProvider.of<SelectionBloc>(context);
          return Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 20),
              child: Center(
                child: BlocBuilder<SelectionBloc, SelectionState>(
                  builder: (context, state) => Row(
                    children: [
                      Expanded(
                        flex: 9,
                        child: DropdownButton(
                            value:
                                state.data == null ? products[0] : state.data,
                            underline: Container(),
                            items: products
                                .map((product) => DropdownMenuItem(
                                      value: product,
                                      child: SizedBox(
                                        width:
                                            (MediaQuery.of(context).size.width /
                                                    12) *
                                                7.5,
                                        child: ListTile(
                                          title: Text(product.product.name),
                                          subtitle:
                                              Text(product.product.brand.name),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            onChanged: (val) {
                              print(val.toString());

                              _serviceRequestBloc.add(SelectedEvent(data: val));
                            }),
                      ),
                      Expanded(
                        flex: 3,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {
                            Get.to(ServiceRequestPage(
                              product:
                                  state.data == null ? products[0] : state.data,
                            ));
                          },
                          child: Text(
                            'Service',
                            style: Theme.of(context).textTheme.button,
                          ),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
