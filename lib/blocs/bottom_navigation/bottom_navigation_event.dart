part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationEvent {}

class HomeBottomNavigationEvent extends BottomNavigationEvent {}

class TicketsBottomNavigationEvent extends BottomNavigationEvent {}

class ProductsBottomNavigationEvent extends BottomNavigationEvent {
  final index;
  ProductsBottomNavigationEvent({this.index});
}

class MessagesBottomNavigationEvent extends BottomNavigationEvent {
  final index;
  MessagesBottomNavigationEvent({this.index});
}
