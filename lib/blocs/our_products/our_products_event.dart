part of 'our_products_bloc.dart';

abstract class OurProductsEvent extends Equatable {
  const OurProductsEvent();

  @override
  List<Object> get props => [];
}

class GetOurProductsEvent extends OurProductsEvent {}
