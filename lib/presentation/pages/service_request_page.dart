import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/blocs/branch_carousel/branch_carousel_bloc.dart';
import 'package:EsquireCustomerApp/blocs/selection/selection_bloc.dart';
import 'package:EsquireCustomerApp/blocs/served_products/served_products_bloc.dart';
import 'package:EsquireCustomerApp/blocs/service_request/service_request_bloc.dart';
import 'package:EsquireCustomerApp/blocs/toggle/toggle_bloc.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/presentation/widgets/address_card.dart';
import 'package:EsquireCustomerApp/presentation/widgets/audio_recorder.dart';
import 'package:EsquireCustomerApp/core/utils/util.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/gestures.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:openapi/model/address.dart';
import 'package:openapi/model/brand.dart';
import 'package:openapi/model/category.dart';
import 'package:openapi/model/city.dart';
import 'package:openapi/model/district.dart';
import 'package:openapi/model/pin_code.dart';
import 'package:openapi/model/product.dart';
import 'package:openapi/model/state.dart' as state;
import 'package:openapi/model/ticket.dart';
import 'package:openapi/model/served_product.dart';

class ServiceRequestPage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKeyBookATechnician =
      GlobalKey<FormBuilderState>();
  final ServedProduct product;
  final timeSlots = ['Morning', 'Afternoon', 'Evening'];

  static var tempProduct2 = Product().toBuilder();

  static var tempProduct = ServedProduct().toBuilder()..product = tempProduct2;

  ServiceRequestPage({this.product});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ToggleBloc>(create: (context) => ToggleBloc()),
        BlocProvider<SelectionBloc>(create: (context) => SelectionBloc()),
        BlocProvider<ServiceRequestBloc>(
          create: (context) => ServiceRequestBloc(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: LocalizedText(text: Text('Book a Technician')),
        ),
        body: Builder(
          builder: (context) => MultiBlocListener(
            listeners: [
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is ErrorAuthState) {
                    Util.showSnackBar(
                        'Failed',
                        'Error: ' +
                            (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
                  }
                },
              ),
              BlocListener<ServiceRequestBloc, ServiceRequestState>(
                listener: (context, state) {
                  if (state is ServiceRequestCompletedState) {
                    showDailog(context, state.ticket);
                  }
                },
              )
            ],
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                //return Container();
                return Container(
                    child: _buildMainWidget(context, _fbKeyBookATechnician));
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMainWidget(
      BuildContext context, GlobalKey<FormBuilderState> _fbKeyBookATechnician) {
    final _serviceRequestBloc = BlocProvider.of<ServiceRequestBloc>(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(children: <Widget>[
        BlocBuilder<ServiceRequestBloc, ServiceRequestState>(
          builder: (context, state) {
            return FormBuilder(
              key: _fbKeyBookATechnician,
              readOnly: false,
              child: Column(
                children: <Widget>[
                  Builder(
                      builder: (context) =>
                          Container(child: _selectProduct(context, state))),
                  SizedBox(height: 15),
                  Builder(
                      builder: (context) =>
                          Container(child: BlocBuilder<ToggleBloc, ToggleState>(
                            builder: (context, state) {
                              return state is ToggleOnState &&
                                      _serviceRequestBloc.brands != null
                                  ? Column(
                                      children: [
                                        FormBuilderDropdown(
                                            validators: [
                                              FormBuilderValidators.required()
                                            ],
                                            attribute: 'brand',
                                            decoration: InputDecoration(
                                                labelText: 'Brand'),
                                            items: _serviceRequestBloc.brands
                                                .map((e) => DropdownMenuItem(
                                                      child: Text(e.name),
                                                      value: e,
                                                    ))
                                                .toList()),
                                        SizedBox(height: 15),
                                      ],
                                    )
                                  : Container();
                            },
                          ))),
                  Builder(
                      builder: (context) =>
                          Container(child: BlocBuilder<ToggleBloc, ToggleState>(
                            builder: (context, state) {
                              return state is ToggleOnState &&
                                      _serviceRequestBloc.categories != null
                                  ? Column(
                                      children: [
                                        FormBuilderDropdown(
                                            validators: [
                                              FormBuilderValidators.required()
                                            ],
                                            attribute: 'category',
                                            decoration: InputDecoration(
                                                labelText: 'Category'),
                                            items: _serviceRequestBloc
                                                .categories
                                                .map((e) => DropdownMenuItem(
                                                      child: Text(e.name),
                                                      value: e,
                                                    ))
                                                .toList()),
                                        SizedBox(height: 15),
                                      ],
                                    )
                                  : Container();
                            },
                          ))),
                  Builder(
                      builder: (context) =>
                          Container(child: BlocBuilder<ToggleBloc, ToggleState>(
                            builder: (context, state) {
                              return state is ToggleOnState
                                  ? Column(
                                      children: [
                                        FormBuilderTextField(
                                          validators: [
                                            FormBuilderValidators.required()
                                          ],
                                          attribute: 'model',
                                          decoration: InputDecoration(
                                              labelText: 'Model'),
                                        ),
                                        SizedBox(height: 15),
                                      ],
                                    )
                                  : Container();
                            },
                          ))),
                  Builder(
                      builder: (context) =>
                          Container(child: BlocBuilder<ToggleBloc, ToggleState>(
                            builder: (context, state) {
                              return state is ToggleOnState
                                  ? Column(
                                      children: [
                                        FormBuilderTextField(
                                          validators: [
                                            FormBuilderValidators.required()
                                          ],
                                          attribute: 'serial',
                                          decoration: InputDecoration(
                                              labelText: 'Serial no'),
                                        ),
                                        SizedBox(height: 15),
                                      ],
                                    )
                                  : Container();
                            },
                          ))),
                  product != null || _serviceRequestBloc.product != null
                      ? _serialNumber(context, state)
                      : Container(),
                  product != null || _serviceRequestBloc.product != null
                      ? SizedBox(height: 15)
                      : Container(),
                  product == null
                      ? _serviceRequestBloc.product != null
                          ? _waranyAndAmc(context, 'Warranty ends on')
                          : Container()
                      : _waranyAndAmc(context, 'Warranty ends on'),
                  product != null || _serviceRequestBloc.product != null
                      ? SizedBox(height: 15)
                      : Container(),
                  product == null
                      ? _serviceRequestBloc.product != null
                          ? _waranyAndAmc(context, 'Amc ends on')
                          : Container()
                      : _waranyAndAmc(context, 'Amc ends on'),
                  product != null || _serviceRequestBloc.product != null
                      ? SizedBox(height: 15)
                      : Container(),
                  _issues(),
                  SizedBox(height: 15),
                  Container(child: _description(context)),
                  SizedBox(height: 15),
                  _preferredServiceBranch(context),
                  SizedBox(height: 15),
                  _prefferdDateForAppoinment(context),
                  SizedBox(height: 15),
                  _prefferdTimeForAppoinment(context),
                  SizedBox(height: 15),
                  BlocProvider<SelectionBloc>(
                    create: (context) => SelectionBloc(),
                    child: Builder(
                      builder: (context) {
                        return BlocBuilder<SelectionBloc, SelectionState>(
                          builder: (context, state) {
                            Address address = product != null
                                ? product.productLocation
                                : _serviceRequestBloc.product != null
                                    ? _serviceRequestBloc
                                        .product.productLocation
                                    : null;
                            return address != null
                                ? AddressCard(
                                    address: address,
                                    onList: false,
                                  )
                                : _addressInput(context);
                          },
                        );
                      },
                    ),
                  ),
                  _termsAndCondition()
                ],
              ),
            );
          },
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.green,
                child: LocalizedText(
                  text: Text(
                    'Submit',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                onPressed: () {
                  if (_fbKeyBookATechnician.currentState.saveAndValidate()) {
                    ServedProduct servedProductFinal;
                    if (product == null &&
                        _serviceRequestBloc.product == null) {
                      print('on freetype');
                      BrandBuilder _brand = Brand().toBuilder()
                        ..name = _fbKeyBookATechnician
                            .currentState.value['brand'].name
                        ..logo = _fbKeyBookATechnician
                            .currentState.value['brand'].logo
                        ..id =
                            _fbKeyBookATechnician.currentState.value['brand'].id
                        ..description = _fbKeyBookATechnician
                            .currentState.value['brand'].description;
                      CategoryBuilder _categoryBuilder = Category().toBuilder()
                        ..id = _fbKeyBookATechnician
                            .currentState.value['category'].id
                        ..name = _fbKeyBookATechnician
                            .currentState.value['category'].name
                        ..description = _fbKeyBookATechnician
                            .currentState.value['category'].description
                        ..imageUrl = _fbKeyBookATechnician
                            .currentState.value['category'].imageUrl;
                      ProductBuilder _product = Product().toBuilder()
                        ..name = _fbKeyBookATechnician
                            .currentState.value['inputProduct']
                        ..model =
                            _fbKeyBookATechnician.currentState.value['model']
                        ..brand = _brand
                        ..category = _categoryBuilder;

                      ServedProductBuilder _servedProduct = ServedProduct()
                          .toBuilder()
                            ..productLocation =
                                _createAddress(_fbKeyBookATechnician)
                            ..product = _product
                            ..customer = Config.CUSTOMER.toBuilder()
                            ..purchasedFromHere = false
                            ..serialNumber = _fbKeyBookATechnician
                                .currentState.value['serial'];
                      servedProductFinal = _servedProduct.build();
                    }
                    ServedProduct tempProduct = product == null
                        ? _serviceRequestBloc.product != null
                            ? _serviceRequestBloc.product
                            : servedProductFinal
                        : product;
                    var ticket = Ticket().toBuilder()
                      ..customer = Config.CUSTOMER.toBuilder()
                      ..product = tempProduct.toBuilder()
                      ..issue =
                          _fbKeyBookATechnician.currentState.value['issue']
                      ..ticketDescription = _fbKeyBookATechnician
                          .currentState.value['description']
                      ..branch = _serviceRequestBloc.branch.toBuilder()
                      ..preferredAppointmentDate = _fbKeyBookATechnician
                          .currentState.value['date']
                          .toUtc()
                      ..preferredTime =
                          _fbKeyBookATechnician.currentState.value['time'];

                    _serviceRequestBloc
                        .add(CreateServiceRequestEvent(ticket: ticket.build()));
                  } else {
                    print(_fbKeyBookATechnician
                        .currentState.value['contact_person'].runtimeType);
                    print(_fbKeyBookATechnician.currentState.value);
                    print('validation failed');
                  }
                },
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Theme.of(context).accentColor,
                child: LocalizedText(
                  text: Text(
                    'Reset',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                onPressed: () {
                  _fbKeyBookATechnician.currentState.reset();
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }

  AddressBuilder _createAddress(_fbKeyBookATechnician) {
    PinCodeBuilder pinCode = PinCode().toBuilder()
      ..pinCode = _fbKeyBookATechnician.currentState.value['pinCode'];

    CityBuilder city = City().toBuilder()
      ..city = _fbKeyBookATechnician.currentState.value['cityName'];

    DistrictBuilder district = District().toBuilder()
      ..district = _fbKeyBookATechnician.currentState.value['districtName'];

    state.StateBuilder stateName = state.State().toBuilder()
      ..state = _fbKeyBookATechnician.currentState.value['stateName'];

    AddressBuilder addressBuilder = Address().toBuilder()
      ..landMark = _fbKeyBookATechnician.currentState.value['landmark']
      ..pinCode = pinCode
      ..locationAddressLineOne =
          _fbKeyBookATechnician.currentState.value['locationAddressLineOne']
      ..cityName = city
      ..districtName = district
      ..stateName = stateName;
    return addressBuilder;
  }

  Widget _addressInput(context) {
    return Column(
        children: [
      'locationAddressLineOne',
      'cityName',
      'districtName',
      'landmark',
      'stateName',
      'pinCode'
    ]
            .map((e) => Column(
                  children: [
                    FormBuilderTextField(
                      attribute: e,
                      decoration: InputDecoration(labelText: e.capitalize(e)),
                      validators: [FormBuilderValidators.required()],
                    ),
                    SizedBox(height: 10)
                  ],
                ))
            .toList());
  }

  Widget _selectProduct(context, state) {
    // ignore: close_sinks
    final _serviceRequestBloc = BlocProvider.of<ServiceRequestBloc>(context);
    final _toggleBloc = BlocProvider.of<ToggleBloc>(context);
    return BlocBuilder<ServedProductsBloc, ServedProductsState>(
      builder: (context, servedProductState) {
        return Row(
          children: [
            Expanded(
              child: BlocBuilder<ToggleBloc, ToggleState>(
                builder: (context, toggleState) {
                  if (toggleState is ToggleOffState) {
                    if (servedProductState is ServedProductLoadedState) {
                      return FormBuilderTypeAhead(
                        validators: [
                          FormBuilderValidators.required(),
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Select your product',
                        ),
                        attribute: 'product',
                        onSuggestionSelected: (val) {
                          debugPrint(val.toString());

                          _serviceRequestBloc
                              .add(UpdateProductEvent(product: val));
                        },
                        itemBuilder: (context, pro) {
                          return ListTile(
                            title: Text(pro.product.name.toString()),
                          );
                        },
                        selectionToTextTransformer: (pro) {
                          if (pro != null && pro != '') {
                            return pro.product.name;
                          } else {
                            return '';
                          }
                        },
                        controller: TextEditingController(text: ''),
                        initialValue: product != null
                            ? product
                            : state is SelectedState ? state.data : null,
                        suggestionsCallback: (query) {
                          if (query.isNotEmpty) {
                            var lowercaseQuery = query.toLowerCase();
                            return servedProductState.products.where((pro) {
                              return pro.product.name
                                  .toString()
                                  .toLowerCase()
                                  .contains(lowercaseQuery);
                            }).toList(growable: false)
                              ..sort((a, b) => a.product.name
                                  .toString()
                                  .toLowerCase()
                                  .indexOf(lowercaseQuery)
                                  .compareTo(b.product.name
                                      .toString()
                                      .toLowerCase()
                                      .indexOf(lowercaseQuery)));
                          } else {
                            return servedProductState.products;
                          }
                        },
                      );
                    } else {
                      _serviceRequestBloc.add(DeleteServiceProductEvent());
                      _toggleBloc.add(ToggleOnEvent());
                      // Util.showSnackBar(
                      //     'Served products', 'no Served products available',
                      //     duration: Duration(seconds: 1));
                      return Container();
                    }
                  } else {
                    return FormBuilderTextField(
                      attribute: 'inputProduct',
                      decoration: InputDecoration(labelText: 'Product name'),
                    );
                  }
                },
              ),
            ),
            BlocBuilder<ToggleBloc, ToggleState>(
              builder: (context, state) {
                return IconButton(
                    icon: Icon(
                      Icons.swap_horiz,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      state is ToggleOnState
                          ? _toggleBloc.add(ToggleOffEvent())
                          : _toggleBloc.add(ToggleOnEvent());
                      if (state is ToggleOffState) {
                        _serviceRequestBloc.add(DeleteServiceProductEvent());
                      }
                    });
              },
            )
          ],
        );
      },
    );
  }

  Widget _serialNumber(context, state) {
    final _serviceRequestBloc = BlocProvider.of<ServiceRequestBloc>(context);
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: Theme.of(context).textTheme.bodyText1.color, width: 1)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: LocalizedText(
                  text: Text(
                    'Serial Number',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  product != null
                      ? product.serialNumber.toString()
                      : _serviceRequestBloc.product != null
                          ? _serviceRequestBloc.product.serialNumber
                          : '',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _issues() {
    return FormBuilderTypeAhead(
      validators: [
        FormBuilderValidators.required(),
      ],
      decoration: const InputDecoration(
        labelText: 'Issues',
      ),
      attribute: 'issue',
      onChanged: _onChanged,
      itemBuilder: (context, country) {
        return ListTile(
          title: Text(country),
        );
      },
      controller: TextEditingController(text: ''),
      initialValue: null,
      suggestionsCallback: (query) {
        if (query.isNotEmpty) {
          var lowercaseQuery = query.toLowerCase();
          return Repo.getAllIssues.where((country) {
            return country.toLowerCase().contains(lowercaseQuery);
          }).toList(growable: false)
            ..sort((a, b) => a
                .toLowerCase()
                .indexOf(lowercaseQuery)
                .compareTo(b.toLowerCase().indexOf(lowercaseQuery)));
        } else {
          return Repo.getAllIssues;
        }
      },
    );
  }

  Widget _description(context) {
    // ignore: close_sinks

    return BlocProvider(
      create: (context) => ToggleBloc(),
      child: Builder(builder: (context) {
        final _toggleBloc = BlocProvider.of<ToggleBloc>(context);
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: FormBuilderTextField(
                      attribute: 'description',
                      expands: true,
                      decoration: const InputDecoration(
                        labelText: 'Description',
                      ),
                      onChanged: _onChanged,
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.max(70),
                        FormBuilderValidators.minLength(15,
                            errorText: 'Value must greater than 15',
                            allowEmpty: false),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.mic,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      debugPrint(_toggleBloc.state.toString());
                      if (_toggleBloc.state is ToggleOnState) {
                        _toggleBloc.add(ToggleOffEvent());
                      }
                      if (_toggleBloc.state is ToggleOffState) {
                        _toggleBloc.add(ToggleOnEvent());
                      }
                    })
              ],
            ),
            BlocBuilder<ToggleBloc, ToggleState>(
              builder: (context, state) {
                return Container(
                    child: state is ToggleOnState
                        ? Card(child: CustomAudioRecorder())
                        : null);
              },
            ),
          ],
        );
      }),
    );
  }

  Widget _preferredServiceBranch(context) {
    return BlocBuilder<BranchCarouselBloc, BranchCarouselState>(
      builder: (context, state) {
        final _serviceRequestBloc =
            BlocProvider.of<ServiceRequestBloc>(context);

        _serviceRequestBloc.add(UpdateBranchEvent(
            branch:
                state is BranchCarouselLoadedState ? state.branches[0] : null));

        return state is BranchCarouselLoadedState
            ? FormBuilderTypeAhead(
                validators: [
                  FormBuilderValidators.required(),
                ],
                decoration: const InputDecoration(
                  labelText: 'Preferred Service Branch',
                ),
                attribute: 'country',
                onChanged: (value) {
                  _serviceRequestBloc.add(UpdateBranchEvent(branch: value));
                },
                itemBuilder: (context, branch) {
                  return ListTile(
                    title: Text(branch.branchLocation),
                  );
                },
                selectionToTextTransformer: (val) {
                  return val.branchLocation;
                },
                controller: TextEditingController(text: ''),
                initialValue: state.branches[0],
                suggestionsCallback: (query) {
                  if (query.isNotEmpty) {
                    var lowercaseQuery = query.toLowerCase();
                    return state.branches.where((branch) {
                      return branch.branchLocation
                          .toLowerCase()
                          .contains(lowercaseQuery);
                    }).toList(growable: false)
                      ..sort((a, b) => a.branchLocation
                          .toLowerCase()
                          .indexOf(lowercaseQuery)
                          .compareTo(b.branchLocation
                              .toLowerCase()
                              .indexOf(lowercaseQuery)));
                  } else {
                    return state.branches;
                  }
                },
              )
            : Container();
      },
    );
  }

  Widget _termsAndCondition() {
    return FormBuilderCheckbox(
      attribute: 'accept_terms',
      initialValue: false,
      onChanged: _onChanged,
      leadingInput: true,
      decoration: InputDecoration(border: InputBorder.none),
      label: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'I have read and agreed to the terms and conditions',
              style: TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('launch url');
                },
            ),
          ],
        ),
      ),
      validators: [
        FormBuilderValidators.requiredTrue(
            errorText: 'You must accept terms and conditions'),
      ],
    );
  }

  Widget _prefferdDateForAppoinment(context) {
    return FormBuilderDateTimePicker(
      decoration: InputDecoration(labelText: 'Preferred Date for Appointment'),
      format: DateFormat('dd/MM/yyyy'),
      firstDate: DateTime(2019),
      lastDate: DateTime(2099),
      attribute: 'date',
      inputType: InputType.date,
      validators: [
        FormBuilderValidators.required(),
      ],
    );
  }

  Widget _prefferdTimeForAppoinment(context) {
    return FormBuilderChoiceChip(
        validators: [
          FormBuilderValidators.required(),
        ],
        attribute: "time",
        options: timeSlots
            .map((e) => FormBuilderFieldOption(
                  value: e.toUpperCase(),
                  child: Text(e),
                ))
            .toList());
  }

  _waranyAndAmc(
    context,
    String palceholder,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: Theme.of(context).textTheme.bodyText1.color, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LocalizedText(text: Text(palceholder)),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.warning,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(DateFormat('dd/MM/yyyy').format(DateTime.now())),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  final ValueChanged _onChanged = (val) => print(val);

  Future<bool> showDailog(context, ticket) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Icon(
                Icons.done,
                size: 100,
                color: Colors.green,
              ),
              Text(
                '# ${ticket.id}',
                style: TextStyle(
                    fontSize: 18, color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              LocalizedText(
                text: Text(
                  'Service request registered successfully. Note the ID for future references. Thank you',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Get.close(2);
                },
                child: LocalizedText(
                  text: const Text(
                    "Home",
                    style: TextStyle(color: Colors.red),
                  ),
                )),
          ],
        );
      },
    );
  }
}
