part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationState {
  final isLoggedIn = false;
  final index = 0;
  final Widget body = null;
}

class HomeBottomNavigationState extends BottomNavigationState {
  final index = 0;
  final Widget body = Home();
}

class ProductsBottomNavigationState extends BottomNavigationState {
  final index;
  ProductsBottomNavigationState({this.index});
  final Widget body = OurProductsPage(
    viaBottomNavigation: true,
  );
}

class TicketsBottomNavigationState extends BottomNavigationState {
  final index = 1;
  final Widget body = TicketListPage(
    viaMenu: false,
  );
}

class MessagesBottomNavigationState extends BottomNavigationState {
  final index;
  MessagesBottomNavigationState({this.index});
  final Widget body = NotificationsPage();
}
