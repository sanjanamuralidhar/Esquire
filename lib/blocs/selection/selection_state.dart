part of 'selection_bloc.dart';

abstract class SelectionState {
  final data = null;
  const SelectionState();

  @override
  List<Object> get props => [];
}

class NonSelectedState extends SelectionState {}

class SelectedState extends SelectionState {
  final data;
  SelectedState({this.data});
}
