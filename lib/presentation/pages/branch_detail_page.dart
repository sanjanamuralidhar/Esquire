import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/material.dart';
import 'package:openapi/model/branch.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class BranchDetailPage extends StatelessWidget {
  final Branch branch;
  BranchDetailPage({this.branch});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocalizedText(text: Text(branch.branchLocation)),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  foregroundDecoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/map.png'), fit: BoxFit.cover),
          ))),
          Card(
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocalizedText(
                            text: Text(
                              branch.branchLocation,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text('(3.5)'),
                              SizedBox(
                                width: 100,
                                child: RatingBar(
                                  size: 20,
                                  onRatingChanged: (val) {},
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star,
                                  initialRating: 2.5,
                                  halfFilledIcon: Icons.star,
                                  isHalfAllowed: true,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              LocalizedText(
                                text: Text(
                                  'Address : ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                    '${branch.address.locationAddressLineOne}, ${branch.address.cityName.city}, ${branch.address.stateName.state}, ${branch.address.pinCode.pinCode}'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // Row(
                          //   children: [
                          //     LocalizedText(
                          //       text: Text(
                          //         'Hours : ',
                          //         style: TextStyle(fontWeight: FontWeight.bold),
                          //       ),
                          //     ),
                          //     LocalizedText(
                          //       text: Text(
                          //         'Closed',
                          //         style: TextStyle(
                          //             color: Theme.of(context).primaryColor),
                          //       ),
                          //     )
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          Row(
                            children: [
                              LocalizedText(
                                text: Text(
                                  'Phone : ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              LocalizedText(
                                text: Text(
                                  branch.alternatePhoneNumber,
                                  // style:
                                  //     TextStyle(color: Theme.of(context).primaryColor),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      launch("tel:${branch.alternatePhoneNumber}");
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
