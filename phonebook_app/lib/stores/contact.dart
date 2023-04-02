import 'package:flutter/material.dart';
import 'package:phonebook_app/model.dart';

class Contact with ChangeNotifier {
  //var untuk menampung list contact
  final List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;

  void add(GetContact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}
