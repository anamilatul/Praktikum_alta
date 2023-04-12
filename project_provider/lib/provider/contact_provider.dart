import 'package:flutter/material.dart';
import 'package:project_provider/model/contact_model.dart';

class ContactProvider with ChangeNotifier {
  final List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void editContact(int index, Contact contact) {
    _contacts[index] = contact;
    notifyListeners();
  }

  void removeContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}
