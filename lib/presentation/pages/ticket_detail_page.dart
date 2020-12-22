import 'dart:math';
import 'package:EsquireCustomerApp/blocs/activiti/activiti_bloc.dart';
import 'package:EsquireCustomerApp/blocs/initial/intial_bloc.dart';
import 'package:EsquireCustomerApp/core/configs/variable_name.dart';
import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/presentation/pages/chat_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/feedback_page.dart';
import 'package:EsquireCustomerApp/presentation/widgets/activiti_form.dart';
import 'package:EsquireCustomerApp/presentation/widgets/feebback_content.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:openapi/model/ticket.dart';

class TicketDetailPage extends StatelessWidget {
  final Ticket ticket;

  TicketDetailPage({this.ticket});

  @override
  Widget build(BuildContext context) {
    final _activitiBloc = BlocProvider.of<ActivitiBloc>(context);
    _activitiBloc.add(GetAllTaskEvent(ticket: ticket));
    print(ticket.ticketHistories.first.serviceStatus);
    final _initialBloc = BlocProvider.of<IntialBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: LocalizedText(text: Text('Ticket Detail')),
        actions: [
          IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                Get.to(ChatPage());
              })
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
              physics: ScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: LocalizedText(
                                  text: Text(
                                    'Ticket ID - ' + ticket.id.toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LocalizedText(
                                        text: Text(
                                          ticket.product.product.name,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      LocalizedText(
                                        text: Text(
                                          ticket.product.product.brand.name,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      _warranty(context)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.green,
                      height: 2,
                      endIndent: 50,
                      indent: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 10,
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          LocalizedText(
                                            text: Text(
                                              'Address',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ],
                                      ),
                                      FlatButton(
                                          textColor: Colors.blue,
                                          onPressed: () {},
                                          child: LocalizedText(
                                              text: Text('Change')))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: Text(
                                      ticket.product.productLocation == null
                                          ? 'Not assigned'
                                          : ticket.product.customer.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: ticket.product.productLocation == null
                                        ? Text('null')
                                        : Text(
                                            ticket.product.productLocation
                                                .locationAddressLineOne
                                                .toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                  ),
                                  LocalizedText(
                                    text: ticket.product.productLocation == null
                                        ? Text(
                                            'null',
                                          )
                                        : Text(
                                            ticket.product.productLocation.cityName
                                                    .city +
                                                ' ' +
                                                ticket.product.productLocation
                                                    .districtName.district +
                                                ' ' +
                                                ticket.product.productLocation
                                                    .stateName.state +
                                                ' ' +
                                                ticket.product.productLocation
                                                    .pinCode.pinCode,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: Text('Phone number',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  LocalizedText(
                                    text: Text(
                                      ticket.customer.phone,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 10,
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.settings,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      LocalizedText(
                                        text: Text(
                                          'Service Details',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: Text(
                                      'Issue',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  LocalizedText(
                                    text: Text(ticket.issue,
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                .color,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: Text(
                                      'Description',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  LocalizedText(
                                    text: Text(ticket.ticketDescription,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: Text(
                                      'Service erxecutive Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  LocalizedText(
                                    text: Text(
                                        ticket.ticketHistories.first
                                                    .serviceExecutive ==
                                                null
                                            ? 'Not assigned'
                                            : ticket.ticketHistories.first
                                                .serviceExecutive.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: Text('Service executive Phone number',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    ticket.ticketHistories.first
                                                .serviceExecutive ==
                                            null
                                        ? 'Not assigned'
                                        : ticket.ticketHistories.first
                                            .serviceExecutive.phone,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: Text('Expected delivery date',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    ticket.expectedDeliveryTime != null
                                        ? DateFormat('dd/MM/yyyy')
                                            .format(ticket.expectedDeliveryTime)
                                        : '',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LocalizedText(
                                    text: Text('Service type',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    'In-house',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stepper(
                          physics: ScrollPhysics(),
                          currentStep: 0,
                          controlsBuilder: (context,
                              {onStepCancel, onStepContinue}) {
                            return Container();
                          },
                          steps: steps(_initialBloc.ticketStatus)),
                    ),
                    BlocBuilder<ActivitiBloc, ActivitiState>(
                      builder: (context, state) {
                        return state is FormDataLoadedState &&
                                _activitiBloc.tasks != null &&
                                _activitiBloc.tasks.length > 0
                            ? Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: FlatButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      color: Theme.of(context).primaryColor,
                                      onPressed: () {
                                        _activitiBloc.tasks[0]['name'] ==
                                                'close job'
                                            ? Get.to(FeedbackPage(
                                                ticket: ticket,
                                              ))
                                            : Get.to(ActivitiForm(
                                                ticket: ticket,
                                              ));
                                      },
                                      child: LocalizedText(
                                        text: Text(
                                          _activitiBloc.tasks[0]['name'] ==
                                                  'close job'
                                              ? 'Close Ticket'
                                              : 'Response',
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                        ),
                                      )),
                                ),
                              )
                            : Container();
                      },
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }

  _warranty(context) {
    return Column(
      children: ticket.product.warranties
          .map((warranty) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.warning,
                      color: Theme.of(context).errorColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(warranty.productWarranty == null
                        ? 'Warranty' +
                            '  expires on ' +
                            DateFormat('dd/MM/yyyy').format(warranty.endDate)
                        : warranty.productWarranty.warrantyType.toString() +
                            ' expires on ' +
                            DateFormat('dd/MM/yyyy').format(DateTime(2020)))
                  ],
                ),
              ))
          .toList(),
    );
  }

  List<Step> steps(List<String> ticketStatus) {
    ticketStatus.remove('MOVED_TO_HISTORY');
    ticketStatus.remove('SERVICE_COMPLETED');
    int step = ticketStatus.indexOf(ticket.ticketHistories.first.serviceStatus);
    return ticketStatus.map((e) {
      // if (e != 'MOVED_TO_HISTORY' && e != 'SERVICE_COMPLETED') {
      return Step(
          title: Text(VariableName.data[e] == null ? e : VariableName.data[e]),
          content: Container(),
          isActive: step >= ticketStatus.indexOf(e));
      // /}
    }).toList();
  }

  //TODO change to real status
  List<Step> step(List<String> ticketStatus) {
    List<Step> steps = [
      Step(
          title: LocalizedText(text: const Text('Request Pending')),
          isActive: ticket.ticketHistories.last.serviceStatus ==
              ticket.ticketHistories.last.serviceStatus,
          content: SizedBox()),
      Step(
          title: LocalizedText(text: const Text('Technician on the way')),
          isActive: ticket.ticketHistories.last.serviceStatus == 'Status',
          content: Text('')),
      Step(
          title: LocalizedText(
              text: const Text('work in progress',
                  overflow: TextOverflow.ellipsis)),
          isActive: ticket.ticketHistories.last.serviceStatus == 'Status',
          content: Text('')),
      Step(
          title: LocalizedText(
              text: const Text(
            'completed',
            overflow: TextOverflow.ellipsis,
          )),
          isActive: ticket.ticketHistories.last.serviceStatus == 'Status',
          content: Text(''))
    ];
    return steps;
  }

  _showFeedBackModal(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Column(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(flex: 10, child: FeedbackContent()),
            ],
          );
        });
  }
}
