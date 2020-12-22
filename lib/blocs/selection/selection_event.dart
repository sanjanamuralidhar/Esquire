part of 'selection_bloc.dart';

abstract class SelectionEvent {
  final data = null;
  const SelectionEvent();

  @override
  List<Object> get props => [];
}

class NonSelectedEvent extends SelectionEvent {}

class SelectedEvent extends SelectionEvent {
  final data;
  SelectedEvent({this.data});
}
