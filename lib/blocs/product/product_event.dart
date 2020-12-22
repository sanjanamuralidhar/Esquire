part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class GetProductsByCategoryEvent extends ProductEvent {
  final int categoryId;
  GetProductsByCategoryEvent({this.categoryId});
}

class GetRecentProductEvent extends ProductEvent {}
