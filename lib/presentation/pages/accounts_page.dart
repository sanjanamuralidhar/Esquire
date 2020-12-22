import 'package:EsquireCustomerApp/blocs/selection/selection_bloc.dart';
import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/presentation/widgets/address_card.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class AccountsPage extends StatelessWidget {
  final BuildContext buildContext;
  AccountsPage({this.buildContext});
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final _selectionBloc = BlocProvider.of<SelectionBloc>(buildContext);
    return Scaffold(
      appBar: AppBar(
        title: LocalizedText(text: Text('Addresses')),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _showAddAddressModal(context);
              })
        ],
      ),
      body: Center(
        child: Text('No accounts available'),
      ),
      // body: ListView(
      //   children: Repo.getAllAddress
      //       .map((account) => Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: InkWell(
      //               onTap: () {
      //                 _selectionBloc.add(NonSelectedEvent());
      //                 _selectionBloc.add(SelectedEvent(data: account));
      //                 Get.back();
      //               },
      //               child: AddressCard(
      //                 address: account,
      //                 onList: true,
      //               ),
      //             ),
      //           ))
      //       .toList(),
      // ),
    );
  }

  _showAddAddressModal(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () => Get.back()),
                  LocalizedText(text: Text('Add Address'))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'name'),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  BlocProvider<SelectionBloc>(
                    create: (context) => SelectionBloc(),
                    child: Builder(builder: (context) {
                      final _selectionBloc =
                          BlocProvider.of<SelectionBloc>(context);
                      return BlocBuilder<SelectionBloc, SelectionState>(
                        builder: (context, state) {
                          return DropdownButton(
                              hint: LocalizedText(
                                text: Text(state is SelectedState
                                    ? state.data
                                    : 'HOME'),
                              ),
                              underline: Container(),
                              items: ['HOME', 'WORK']
                                  .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: LocalizedText(text: Text(e))))
                                  .toList(),
                              onChanged: (value) {
                                _selectionBloc.add(SelectedEvent(data: value));
                              });
                        },
                      );
                    }),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address Line'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'City'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FormBuilderTextField(
                      attribute: 'district',
                      decoration: InputDecoration(
                        labelText: 'District',
                        // prefix: LocalizedText(
                        //   text: Text('District'),
                        // )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'State'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Pincode'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Get.back();
                  },
                  child: LocalizedText(
                    text: Text(
                      'Create',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
