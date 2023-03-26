import 'package:flutter/material.dart';

class FlutterForm extends StatefulWidget {
  const FlutterForm({super.key});

  @override
  State<FlutterForm> createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  var inputController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var radioValue = '';
  var checkValue = false;
  var dropDownValue = 0;
  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form'),
      ),
      body: Form(
        key: formKey,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Column(
            children: [
              TextField(
                controller: inputController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_box),
                  hintText: 'Masukkan nama anda',
                ),
              ),
              TextField(
                controller: inputController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.class_),
                  hintText: 'Kelas',
                ),
              ),
              ListTile(
                leading: Radio<String>(
                    value: 'Laki-laki',
                    groupValue: radioValue,
                    onChanged: (String? value) {
                      setState(() {
                        radioValue = value ?? '';
                      });
                    }),
                title: const Text('Laki-laki'),
              ),
              ListTile(
                leading: Radio<String>(
                    value: 'Perempuan',
                    groupValue: radioValue,
                    onChanged: (String? value) {
                      setState(() {
                        radioValue = value ?? '';
                      });
                    }),
                title: const Text('Perempuan'),
              ),
              ListTile(
                leading: Checkbox(
                    value: checkValue,
                    onChanged: (bool? value) {
                      setState(() {
                        checkValue = value ?? false;
                      });
                    }),
                title: const Text('CheckBox'),
              ),
              DropdownButton(
                value: dropDownValue,
                onChanged: (int? value) {
                  setState(() {
                    dropDownValue = value ?? 0;
                  });
                },
                items: const [
                  DropdownMenuItem(
                    value: 0,
                    child: Text(
                      'Pilih..',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text('Indonesia'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('Singapura'),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
