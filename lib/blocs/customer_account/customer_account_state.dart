part of 'customer_account_bloc.dart';

abstract class CustomerAccountState extends Equatable {
  const CustomerAccountState();

  @override
  List<Object> get props => [];
}

class CustomerAccountLoadingState extends CustomerAccountState {}

class CustomerAccountLoadedState extends CustomerAccountState {
  final List<CustomerAccountDTO> accounts;
  CustomerAccountLoadedState({this.accounts});
}

class ErrorCustomerAccountState extends CustomerAccountState {}
