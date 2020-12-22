part of 'branch_carousel_bloc.dart';

abstract class BranchCarouselState extends Equatable {
  const BranchCarouselState();

  @override
  List<Object> get props => [];
}

class BranchCarouselLoadingState extends BranchCarouselState {}

class BranchCarouselLoadedState extends BranchCarouselState {
  final List<Branch> branches;
  BranchCarouselLoadedState({this.branches});
}

class ErrorBranchCarouselState extends BranchCarouselState {}
