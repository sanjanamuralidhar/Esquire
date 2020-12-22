import 'package:EsquireCustomerApp/blocs/auth/auth_bloc.dart';
import 'package:EsquireCustomerApp/blocs/auth/auth_state.dart';
import 'package:EsquireCustomerApp/blocs/branch_carousel/branch_carousel_bloc.dart';
import 'package:EsquireCustomerApp/blocs/our_products/our_products_bloc.dart';
import 'package:EsquireCustomerApp/blocs/product/product_bloc.dart';
import 'package:EsquireCustomerApp/blocs/served_products/served_products_bloc.dart';
import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/presentation/pages/chat_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/our_products_page.dart';
import 'package:EsquireCustomerApp/presentation/pages/product_list_page.dart';
import 'package:EsquireCustomerApp/presentation/widgets/error_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/image_carousel.dart';
import 'package:EsquireCustomerApp/presentation/widgets/our_product_card.dart';
import 'package:EsquireCustomerApp/presentation/widgets/product_card.dart';
import 'package:EsquireCustomerApp/presentation/widgets/service_request_dropdown.dart';
import 'package:EsquireCustomerApp/presentation/widgets/sliver_to_box_header.dart';
import 'package:EsquireCustomerApp/presentation/widgets/branch_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:translator/translator.dart';

class Home extends StatelessWidget {
  final headers = [
    'Branches',
    'Recently purchased',
    'New Arrivals',
    'Our Products'
  ];

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BranchCarouselBloc>(context)
        .add(BranchCarouselGetBranchesEvent());
    BlocProvider.of<OurProductsBloc>(context).add(GetOurProductsEvent());
    BlocProvider.of<ServedProductsBloc>(context).add(GetAllServedProduct());
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return CustomScrollView(physics: const ScrollPhysics(), slivers: [
          SliverAppBar(
            elevation: 40,
            forceElevated: true,
            expandedHeight: 150.0,
            floating: true,
            pinned: true,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.chat,
                ),
                onPressed: () {
                  Get.to(ChatPage());
                },
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  'assets/images/esquirelogo.png',
                )),
          ),
          SliverToBoxAdapter(
              child: ImageCarousel(
            isloyalty: true,
            images: Repo.getAllLoyaltyBanner,
          )),
          SliverToBoxHeader(
            header: headers[0],
            trailing: false,
          ),
          SliverToBoxAdapter(
            child: _buildBranchCardCarousel(context),
          ),
          state is LoggedOutAuthState
              ? SliverToBoxAdapter()
              : BlocBuilder<ServedProductsBloc, ServedProductsState>(
                  builder: (context, state) {
                    return state is ServedProductLoadedState
                        ? SliverToBoxHeader(
                            header: headers[1],
                            trailing: true,
                          )
                        : SliverToBoxAdapter();
                  },
                ),
          state is LoggedInAuthState
              ? SliverToBoxAdapter(
                  child: BlocBuilder<ServedProductsBloc, ServedProductsState>(
                    builder: (context, state) {
                      return state is ServedProductLoadedState
                          ? ServiceRequestDropDown(
                              products: state.products,
                            )
                          : state is ServedProductEmptyState
                              ? Container()
                              : state is ServedProductLoadingState
                                  ? Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : state is ServedProductErrorState
                                      ? ErrorText()
                                      : Container();
                    },
                  ),
                )
              : SliverToBoxAdapter(),
          SliverToBoxHeader(
            header: headers[3],
            trailing: true,
            onTap: () {
              Get.to(OurProductsPage(
                viaBottomNavigation: false,
              ));
            },
          ),
          BlocBuilder<OurProductsBloc, OurProductsState>(
            builder: (context, state) {
              return SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return state is OurProductsLoadedState
                          ? OurProductCard(
                              category: state.categories[index],
                            )
                          : state is OurProductsLoadingState
                              ? Center(child: CircularProgressIndicator())
                              : ErrorText();
                    },
                    childCount: state is OurProductsLoadedState ? 4 : 1,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: state is OurProductsLoadedState ? 4 : 1,
                      childAspectRatio:
                          state is OurProductsLoadedState ? 1 / 1.1 : 3 / 1));
            },
          ),
          SliverToBoxAdapter(
              child: ImageCarousel(
            isloyalty: false,
            images: Repo.getAllBanners,
          )),
          SliverToBoxHeader(
            header: headers[2],
            trailing: true,
            onTap: () {
              Get.to(ProductListPage(
                title: 'New Arrivals',
              ));
            },
          ),
          SliverToBoxAdapter(
            child: _buildRecentProductCarousel(context),
          ),
        ]);
      },
    );
  }

  Widget _buildBranchCardCarousel(context) {
    return BlocBuilder<BranchCarouselBloc, BranchCarouselState>(
      builder: (context, state) {
        return SizedBox(
            height: 80,
            child: state is BranchCarouselLoadedState
                ? PageView.builder(
                    controller: PageController(
                        initialPage: 2,
                        viewportFraction:
                            state is BranchCarouselLoadingState ? 0.2 : 0.5),
                    itemCount: state.branches.length,
                    itemBuilder: (BuildContext context, int itemIndex) {
                      if (state is BranchCarouselLoadedState) {
                        return _buildCarouselItem(
                            context, 0, state.branches[itemIndex]);
                      } else if (state is ErrorBranchCarouselState) {
                        return ErrorText();
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  )
                : Center(child: CircularProgressIndicator()));
      },
    );
  }

  Widget _buildRecentProductCarousel(BuildContext context) {
    var view = MediaQuery.of(context).size.width < 1000
        ? (MediaQuery.of(context).size.width / 1000) - 1
        : 1000 / 1000 - 1;

    return SizedBox(
        height: 280,
        child: BlocProvider<ProductBloc>(
          create: (context) => ProductBloc(),
          child: Builder(builder: (context) {
            BlocProvider.of<ProductBloc>(context).add(GetRecentProductEvent());
            return BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                return state is ProductLoadedState
                    ? PageView.builder(
                        controller: PageController(
                          initialPage: 2,
                          viewportFraction: view.abs() > .2 ? view.abs() : .2,
                        ),
                        itemCount: state.products.length,
                        itemBuilder: (BuildContext context, int itemIndex) {
                          return _buildCarouselItem(
                              context, 1, state.products[itemIndex]);
                        },
                      )
                    : state is ProductErrorState
                        ? ErrorText()
                        : state is ProductLoadingState
                            ? Center(
                                child: CircularProgressIndicator(),
                              )
                            : Container();
              },
            );
          }),
        ));
  }

  Widget _buildCarouselItem(BuildContext context, int carouselIndex, item) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20)],
          borderRadius: BorderRadius.all(Radius.circular(1.0)),
        ),
        child: carouselIndex == 0
            ? BranchCard(
                branch: item,
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProductCard(
                  product: item,
                ),
              ),
      ),
    );
  }
}
