import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/blocs/initial/intial_bloc.dart';
import 'package:EsquireCustomerApp/blocs/tickets_list/tickets_list_bloc.dart';
import 'package:EsquireCustomerApp/core/configs/variable_name.dart';
import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/presentation/widgets/error_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/main_drawer.dart';
import 'package:EsquireCustomerApp/presentation/widgets/ticket_card.dart';
import 'package:EsquireCustomerApp/core/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TicketListPage extends StatelessWidget {
  final viaMenu;

  TicketListPage({this.viaMenu});
  @override
  Widget build(BuildContext context) {
    final _initialBloc = BlocProvider.of<IntialBloc>(context);
    final _ticketListBloc = BlocProvider.of<TicketsListBloc>(context);
    final ScrollController _scrollController = ScrollController();

    return Scaffold(
      drawer: viaMenu ? null : MainDrawer(),
      appBar: AppBar(
        title: LocalizedText(text: Text('My tickets')),
        actions: [],
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is ErrorAuthState) {
            Util.showSnackBar('Failed',
                'Error: ' + (Config.DEBUG_ENABLED_SNACKBAR ? state.error : ''));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            // if (state is LoggedInAuthState &&
            //     _ticketListBloc.currenPage == null) {
            //   _ticketListBloc.add(GetAllTicketEvent(page: 0));
            // }
            return BlocBuilder<TicketsListBloc, TicketsListState>(
              builder: (context, state) {
                _scrollController.addListener(() {
                  if (_scrollController.position.pixels ==
                      _scrollController.position.maxScrollExtent) {
                    print('WORKED!!!!');
                    _ticketListBloc.add(GetAllTicketEvent(
                        page: _ticketListBloc.currenPage + 1));
                  }
                });
                return state is TicketsLoadedState
                    ? ListView.builder(
                        controller: _scrollController,
                        itemBuilder: (context, index) {
                          return TicketCard(ticket: state.tickets[index]);
                        },
                        itemCount: state.tickets.length,
                      )
                    : state is TicketLoadingState
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : state is TicketErrorState
                            ? ErrorText()
                            : state is TicketEmptyState
                                ? Center(
                                    child: Text('No ticket raised'),
                                  )
                                : Container();
              },
            );
          },
        ),
      ),
    );
  }
}
