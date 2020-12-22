part of 'translation_bloc.dart';

abstract class TranslationEvent extends Equatable {
  const TranslationEvent();

  @override
  List<Object> get props => [];
}

class EnglishTranslationEvent extends TranslationEvent {}

class MalayalamTranslationEvent extends TranslationEvent {}
