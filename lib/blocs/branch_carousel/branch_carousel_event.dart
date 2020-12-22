part of 'branch_carousel_bloc.dart';

abstract class BranchCarouselEvent extends Equatable {
  const BranchCarouselEvent();

  @override
  List<Object> get props => [];
}

class BranchCarouselGetBranchesEvent extends BranchCarouselEvent {}
