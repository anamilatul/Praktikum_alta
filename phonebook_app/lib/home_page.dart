import 'package:flutter/material.dart';
import 'package:phonebook_app/model.dart';
import 'package:provider/provider.dart';
import 'package:phonebook_app/stores/contact.dart' as contact_store;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String phoneNumber = '';
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Book App'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  onChanged: (String value) {
                    name = value;
                  },
                ),
                TextField(
                  controller: phoneController,
                  onChanged: (String value) {
                    phoneNumber = value;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!formKey.currentState!.validate()) return;

                    formKey.currentState!.save();
                    contactProvider.add(GetContact(
                      name: name,
                      phoneNumber: phoneNumber,
                    ));
                  },
                  child: Text('Add Contact'),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: contactProvider.contacts.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(contactProvider.contacts[index].name),
                            subtitle: Text(
                                contactProvider.contacts[index].phoneNumber),
                          );
                        }))
              ],
            )),
      ),
    );
  }
}
