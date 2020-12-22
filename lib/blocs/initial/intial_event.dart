part of 'intial_bloc.dart';

abstract class IntialEvent extends Equatable {
  const IntialEvent();

  @override
  List<Object> get props => [];
}

class GetIntialdataEvent extends IntialEvent {}
