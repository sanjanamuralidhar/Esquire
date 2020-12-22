part of 'served_products_bloc.dart';

abstract class ServedProductsState extends Equatable {
  const ServedProductsState();

  @override
  List<Object> get props => [];
}

class ServedProductLoadingState extends ServedProductsState {}

class ServedProductLoadedState extends ServedProductsState {
  final List<ServedProduct> products;
  ServedProductLoadedState({this.products});
}

class ServedProductErrorState extends ServedProductsState {}

class ServedProductEmptyState extends ServedProductsState {}
