import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  var formKey = GlobalKey<FormState>();
  var inputName = TextEditingController();
  var inputPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(77, 253, 252, 252),
        appBar: AppBar(
          title: const Text(
            'Contact',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(103, 80, 164, 0.4),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
              child: Column(
                children: [
                  Image.asset('assets/image/icon_phone.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Create New Contacts',
                    style: TextStyle(
                      color: Color.fromRGBO(21, 20, 23, 0.4),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                    style: TextStyle(
                      color: Color.fromARGB(102, 54, 51, 59),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Form(
              key: formKey,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Nama tidak boleh kosong!';
                        }
                        return null;
                      },
                      controller: inputName,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 202, 146, 25))),
                        labelText: 'Name',
                        hintText: 'Input Your First Name',
                        // labelStyle: Color(value),
                        // hintStyle: Color.fromARGB(255, 255, 255, 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: Color.fromARGB(111, 131, 139, 149),
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
