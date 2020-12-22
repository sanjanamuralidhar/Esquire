import 'package:EsquireCustomerApp/blocs/our_products/our_products_bloc.dart';
import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/presentation/widgets/error_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/main_drawer.dart';
import 'package:EsquireCustomerApp/presentation/widgets/our_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OurProductsPage extends StatelessWidget {
  final bool viaBottomNavigation;
  OurProductsPage({this.viaBottomNavigation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocalizedText(text: Text('Our Products')),
      ),
      drawer: viaBottomNavigation ? MainDrawer() : null,
      body: BlocBuilder<OurProductsBloc, OurProductsState>(
        builder: (context, state) {
          return state is OurProductsLoadedState
              ? GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 1 / 1.1),
                  children: state is OurProductsLoadedState
                      ? state.categories
                          .map((cat) => OurProductCard(
                                category: cat,
                              ))
                          .toList()
                      : [],
                )
              : state is OurProductsLoadingState
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ErrorText();
        },
      ),
    );
  }
}
