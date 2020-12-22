import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:openapi/model/product.dart';
import 'package:openapi/model/served_product_aggregate.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  final ServedProductAggregate servedProduct;
  final recentlyBought;

  ProductDetailPage({this.product, this.servedProduct, this.recentlyBought});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: recentlyBought
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.center,
          children: [
            FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                label: Text('Know more')),
            recentlyBought
                ? FlatButton.icon(
                    onPressed: () {
                      // Get.to(ServiceRequestPage(
                      //   product: product,
                      // ));
                    },
                    icon: Icon(
                      Icons.build,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: Text('Service'))
                : Container(
                    width: 0,
                    height: 0,
                  ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: ScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Image.network(
                            product.imageUrl,
                            height: 200,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: Theme.of(context).primaryColor,
                                ),
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                                onPressed: () {})
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          product.name,
                          style: TextStyle(fontSize: 18),
                        ),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          product.brand.name,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      )),
                  recentlyBought
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'invoice no     ',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              TextSpan(
                                text: '4782082764',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ])),
                          ),
                        )
                      : Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: product.price.toString() + '     ',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              TextSpan(
                                text: 'Rs 500',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              TextSpan(
                                text: '    67 % off',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 18),
                              )
                            ])),
                          ),
                        ),
                  recentlyBought
                      ? Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.warning,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Warranty Expires on   '),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      DateFormat('yyyy/MM/dd')
                                          .format(DateTime.now()),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )),
                        )
                      : Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 2, 5, 2),
                                  child: Row(
                                    children: [
                                      Text(
                                        '3.5',
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '100 Ratings & 20 Reviews',
                              style: TextStyle(
                                  color: Colors.blue[300],
                                  decoration: TextDecoration.underline),
                            )
                          ],
                        ),
                  recentlyBought
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color,
                                      width: 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Serial Number',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black45),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '2487250563',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        )
                      : Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green[100],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Get upto 20% cashback   ',
                                      style: TextStyle(color: Colors.green)),
                                  TextSpan(
                                      text: 'Select to avail',
                                      style: TextStyle(
                                          color: Colors.green,
                                          decoration: TextDecoration.underline))
                                ])),
                              ),
                            ),
                          ),
                        ),
                  recentlyBought
                      ? Container()
                      : Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'View more offers',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                  recentlyBought
                      ? Container()
                      : DefaultTabController(
                          length: 3,
                          initialIndex: 0,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TabBar(
                                tabs: [
                                  Tab(
                                    text: 'Highlights',
                                  ),
                                  Tab(text: 'More info'),
                                  Tab(text: 'Reviews'),
                                ],
                                labelColor:
                                    Theme.of(context).textTheme.bodyText1.color,
                              ),
                            ],
                          ),
                        ),
                  recentlyBought
                      ? Container()
                      : Container(
                          color: Theme.of(context).textTheme.bodyText1.color,
                          height: 200,
                          child: Center(
                            child: Text('TODO'),
                          ),
                        )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
