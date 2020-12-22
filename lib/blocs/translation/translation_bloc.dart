import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'translation_event.dart';
part 'translation_state.dart';

class TranslationBloc extends Bloc<TranslationEvent, TranslationState> {
  TranslationBloc() : super(EnglishTranslationState());

  @override
  Stream<TranslationState> mapEventToState(
    TranslationEvent event,
  ) async* {
    if (event is EnglishTranslationEvent) yield EnglishTranslationState();
    if (event is MalayalamTranslationEvent) yield MalayalamTranslationState();
  }
}
