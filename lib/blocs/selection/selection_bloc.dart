import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'selection_event.dart';
part 'selection_state.dart';

class SelectionBloc extends Bloc<SelectionEvent, SelectionState> {
  SelectionBloc() : super(NonSelectedState());

  @override
  Stream<SelectionState> mapEventToState(
    SelectionEvent event,
  ) async* {
    if (event is NonSelectedEvent) yield NonSelectedState();
    if (event is SelectedEvent) yield SelectedState(data: event.data);
  }
}
