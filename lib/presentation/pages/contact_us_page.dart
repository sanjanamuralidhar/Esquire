import 'package:EsquireCustomerApp/mocks/repo.dart';
import 'package:EsquireCustomerApp/presentation/widgets/localized_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ContactUsPage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKeyContactUs =
      GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocalizedText(text: Text('Contact Us')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            FormBuilder(
              key: _fbKeyContactUs,
              readOnly: false,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15),
                  FormBuilderTypeAhead(
                    decoration: const InputDecoration(
                        labelText: 'Location',
                        prefixIcon: Icon(Icons.location_city)),
                    attribute: 'country',
                    onChanged: _onChanged,
                    itemBuilder: (context, country) {
                      return ListTile(
                        title: LocalizedText(text: Text(country)),
                      );
                    },
                    controller: TextEditingController(text: ''),
                    initialValue: 'Thrissur',
                    suggestionsCallback: (query) {
                      if (query.isNotEmpty) {
                        var lowercaseQuery = query.toLowerCase();
                        return Repo.getAllBranches
                            .map((e) => e.name)
                            .where((country) {
                          return country.toLowerCase().contains(lowercaseQuery);
                        }).toList(growable: false)
                              ..sort((a, b) => a
                                  .toLowerCase()
                                  .indexOf(lowercaseQuery)
                                  .compareTo(
                                      b.toLowerCase().indexOf(lowercaseQuery)));
                      } else {
                        return Repo.getAllBranches.map((e) => e.name);
                      }
                    },
                  ),
                  SizedBox(height: 15),
                  FormBuilderTextField(
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.alternate_email)),
                    initialValue: 'branch@esquire.com',
                    attribute: 'contact_person',
                    onChanged: _onChanged,
                  ),
                  SizedBox(height: 15),
                  FormBuilderTextField(
                    decoration: const InputDecoration(
                        labelText: 'Phone number',
                        prefixIcon: Icon(Icons.call)),
                    initialValue: '+91 9758846732',
                    attribute: 'contact_person',
                    onChanged: _onChanged,
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
