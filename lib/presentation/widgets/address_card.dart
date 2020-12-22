import 'package:EsquireCustomerApp/core/configs/config.dart';
import 'package:EsquireCustomerApp/presentation/pages/accounts_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openapi/model/address.dart';

class AddressCard extends StatelessWidget {
  final Address address;
  final bool onList;
  AddressCard({this.address, this.onList});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width - 10,
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Address',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    onList
                        ? FlatButton(
                            textColor: Colors.blue,
                            onPressed: () {},
                            child: Text('Edit'))
                        : FlatButton(
                            textColor: Colors.blue,
                            onPressed: () {
                              Get.to(AccountsPage(
                                buildContext: context,
                              ));
                            },
                            child: Text('Change'))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${Config.CUSTOMER.name} ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(address.locationAddressLineOne,
                    style: Theme.of(context).textTheme.bodyText1),
                Text(address.landMark,
                    style: Theme.of(context).textTheme.bodyText1),
                Text(
                    '${address.cityName.city} , ${address.districtName.district} - ${address.pinCode.pinCode},${address.stateName.state}',
                    style: Theme.of(context).textTheme.bodyText1),
                SizedBox(
                  height: 10,
                ),
                Text('Phone number',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  Config.CUSTOMER.phone,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            )),
      ),
    );
  }
}
