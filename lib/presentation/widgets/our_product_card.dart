import 'package:EsquireCustomerApp/presentation/pages/product_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openapi/model/category_dto.dart';

class OurProductCard extends StatelessWidget {
  final CategoryDTO category;

  OurProductCard({this.category});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: () {
          Get.to(ProductListPage(title: category.name, id: category.id));
        },
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Image.network(category.imageUrl, fit: BoxFit.fill),
              SizedBox(
                height: 5,
              ),
              FittedBox(
                child: Text(
                  category.name,
                  style: Theme.of(context).textTheme.button,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
