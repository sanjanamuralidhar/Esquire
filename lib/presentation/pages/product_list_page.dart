import 'package:EsquireCustomerApp/blocs/product/product_bloc.dart';
import 'package:EsquireCustomerApp/presentation/widgets/error_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:EsquireCustomerApp/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListPage extends StatelessWidget {
  final String title;
  final int id;
  ProductListPage({this.title, this.id});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>(
      create: (context) => ProductBloc(),
      child: Builder(builder: (context) {
        BlocProvider.of<ProductBloc>(context)
            .add(GetProductsByCategoryEvent(categoryId: id));
        return Scaffold(
          appBar: AppBar(
            title: LocalizedText(text: Text(title)),
          ),
          body: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state is ProductLoadedState
                  ? GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1,
                          childAspectRatio: 1 / 1.3),
                      children: state.products
                          .map((produt) => SizedBox(
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: ProductCard(
                                    product: produt,
                                  ),
                                ),
                              ))
                          .toList(),
                    )
                  : state is ProductErrorState
                      ? ErrorText()
                      : state is ProductLoadingState
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Container();
            },
          ),
        );
      }),
    );
  }
}
