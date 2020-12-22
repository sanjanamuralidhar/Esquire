part of 'toggle_bloc.dart';

abstract class ToggleState extends Equatable {
  const ToggleState();

  @override
  List<Object> get props => [];
}

class ToggleOnState extends ToggleState {}

class ToggleOffState extends ToggleState {}
