part of 'served_products_bloc.dart';

abstract class ServedProductsEvent extends Equatable {
  const ServedProductsEvent();

  @override
  List<Object> get props => [];
}

class GetAllServedProduct extends ServedProductsEvent {}
