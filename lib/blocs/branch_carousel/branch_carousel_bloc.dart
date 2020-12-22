import 'dart:async';

import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:openapi/api.dart';
import 'package:openapi/model/branch.dart';
import 'package:openapi/model/branch_dto.dart';

part 'branch_carousel_event.dart';
part 'branch_carousel_state.dart';

class BranchCarouselBloc
    extends Bloc<BranchCarouselEvent, BranchCarouselState> {
  BranchCarouselBloc() : super(BranchCarouselLoadingState());

  final Openapi openApi = Openapi();

  @override
  Stream<BranchCarouselState> mapEventToState(
    BranchCarouselEvent event,
  ) async* {
    Map<String, String> token =
        Config.TOKEN != null ? Config.TOKEN : {'Authorization': null};

    List<Branch> branches;
    yield BranchCarouselLoadingState();
    try {
      await openApi
          .getBranchResourceApi()
          .getAllBranchesUsingGET(page: 0, headers: token)
          .then((value) => {branches = value.data});
      yield BranchCarouselLoadedState(branches: branches);
    } on DioError catch (e) {
      yield ErrorBranchCarouselState();
      debugPrint(Config.TOKEN.toString());
      debugPrint('getAllBranchesUsingGET ' + e.message);
    }
  }
}
