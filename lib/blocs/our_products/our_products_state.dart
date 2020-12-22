part of 'our_products_bloc.dart';

abstract class OurProductsState extends Equatable {
  const OurProductsState();

  @override
  List<Object> get props => [];
}

class OurProductsLoadingState extends OurProductsState {}

class OurProductsLoadedState extends OurProductsState {
  final List<CategoryDTO> categories;
  OurProductsLoadedState({this.categories});
}

class ErrorOurProductsState extends OurProductsState {}
