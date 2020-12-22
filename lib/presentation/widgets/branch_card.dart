import 'package:EsquireCustomerApp/presentation/pages/branch_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:openapi/model/branch.dart';
import 'package:url_launcher/url_launcher.dart';

class BranchCard extends StatelessWidget {
  final Branch branch;

  BranchCard({this.branch});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(BranchDetailPage(
          branch: branch,
        ));
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.green,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              branch.branchLocation,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: InkWell(
                            onTap: () {
                              launch("tel:${branch.alternatePhoneNumber}");
                            },
                            child: Icon(
                              Icons.call,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              branch.alternatePhoneNumber,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text('(4.1)')
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
