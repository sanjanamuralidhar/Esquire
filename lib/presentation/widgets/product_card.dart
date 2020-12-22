import 'dart:ui';
import 'package:EsquireCustomerApp/core/utils/util.dart';
import 'package:EsquireCustomerApp/presentation/pages/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openapi/model/product.dart';
import 'package:openapi/model/product_detail_aggregate.dart';
import 'package:openapi/model/served_product_aggregate.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final ServedProductAggregate servedProduct;

  ProductCard({this.product, this.servedProduct});

  @override
  Widget build(BuildContext context) {
    assert(
      product == null || servedProduct == null,
    );
    return GestureDetector(
      onTap: () {
        Get.to(ProductDetailPage(
          product: product,
          recentlyBought: false,
        ));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Center(
                    child: Image.network(
                      product != null
                          ? product.imageUrl == null ? '' : product.imageUrl
                          : servedProduct.productDetailAggregate.productDTO
                                      .imageUrl ==
                                  null
                              ? ''
                              : servedProduct
                                  .productDetailAggregate.productDTO.imageUrl,
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                product != null
                    ? product.name
                    : servedProduct.productDetailAggregate.productDTO.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 17),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            product != null
                                ? product.brand.name
                                : servedProduct
                                    .productDetailAggregate.brandName,
                            style: Theme.of(context).textTheme.bodyText1,
                            overflow: TextOverflow.ellipsis),
                        Text(
                            product != null
                                ? product.price.toString()
                                : servedProduct
                                    .productDetailAggregate.productDTO.price
                                    .toString(),
                            overflow: TextOverflow.ellipsis)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        color: Colors.green,
                        onPressed: () {
                          _showSnackBar();
                        },
                        child: Text(
                          'Know more',
                          style: Theme.of(context).textTheme.button,
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _showSnackBar() {
    Util.showSnackBar("TODO", 'Not Implemented Yet');
  }
}
