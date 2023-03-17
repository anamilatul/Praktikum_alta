import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Layout"),
          centerTitle: true,
        ),
        body: const GridViewWidget(),
      ),
    );
  }
}

// class ContainerWidget extends StatelessWidget {
//   const ContainerWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         border: Border.all(),
//       ),
//       child: const Text('Hi guys'),
//     );
//   }
// }

// class CenterWidget extends StatelessWidget {
//   const CenterWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         'Hai',
//         style: TextStyle(
//           fontSize: 20,
//         ),
//       ),
//     );
//   }
// }

// class ColumnWidget extends StatelessWidget {
//   const ColumnWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('H'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('H'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('A'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//       ],
//     );
//   }
// }

// class RowWidget extends StatelessWidget {
//   const RowWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('H'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('H'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('A'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//       ],
//     );
//   }
// }

// class ListViewWidget extends StatelessWidget {
//   const ListViewWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: const Text('I'),
//         ),
//       ],
//     );
//   }
// }

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: const Text('I'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: const Text('I'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: const Text('I'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: const Text('I'),
        ),
      ],
    );
  }
}
