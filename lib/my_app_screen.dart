 import 'package:flutter/material.dart';
import 'c.v_class.dart';
import 'cv_view.dart';
//
//  class MainScreen extends StatefulWidget {
//    @override
//    _MainScreenState createState() => _MainScreenState();
//  }
//
//  class _MainScreenState extends State<MainScreen> {
//    late CV cv;
//
//    @override
//    void initState() {
//      super.initState();
//      cv = CV();
//    }
//
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          actions: <Widget>[
//            IconButton(
//              icon: const Icon(Icons.edit),
//              onPressed: () async {
//                Navigator.pushNamed(context, '/edit');
//               },
//           ),
//         ],
//       ),
//       body: ViewCV(cv: cv),
//     );
//   }
// }

  class MainScreen extends StatefulWidget {
    @override
    _MainScreenState createState() => _MainScreenState();
  }

  class _MainScreenState extends State<MainScreen> {
    late CV cv;

    @override
    void initState() {
      super.initState();
      cv = CV();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: ViewCV(cv: cv),
      );
    }
  }