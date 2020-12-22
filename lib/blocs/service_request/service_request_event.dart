part of 'service_request_bloc.dart';

@immutable
abstract class ServiceRequestEvent {
  const ServiceRequestEvent();
}

class UpdateBranchEvent extends ServiceRequestEvent {
  final Branch branch;

  UpdateBranchEvent({this.branch});
}

class UpdateProductEvent extends ServiceRequestEvent {
  final ServedProduct product;

  UpdateProductEvent({this.product});
}

class CreateServiceRequestEvent extends ServiceRequestEvent {
  final Ticket ticket;
  CreateServiceRequestEvent({this.ticket});
}

class DeleteServiceProductEvent extends ServiceRequestEvent {
  final bool onFreeType;
  DeleteServiceProductEvent({this.onFreeType});
}
