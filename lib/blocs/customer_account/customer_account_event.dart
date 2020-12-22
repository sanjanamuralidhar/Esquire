part of 'customer_account_bloc.dart';

abstract class CustomerAccountEvent extends Equatable {
  const CustomerAccountEvent();

  @override
  List<Object> get props => [];
}

class GetAllCustomerAccountEvent extends CustomerAccountEvent {}
