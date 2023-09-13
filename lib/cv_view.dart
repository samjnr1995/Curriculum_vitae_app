// import 'package:flutter/material.dart';
// import 'c.v_class.dart';
// import 'edit_screen.dart';
//
// class ViewCV extends StatefulWidget {
//   late CV cv;
//
//   ViewCV({required this.cv});
//
//   @override
//   ViewCVState createState() => ViewCVState();
// }
//
// class ViewCVState extends State<ViewCV> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: const EdgeInsets.all(12.0),
//         children: <Widget>[
//           const Text('Curriculum Vitae', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
//           const SizedBox(height: 8,),
//           ListTile(
//             title: const Text(
//               'Name',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//             subtitle: Text(widget.cv.name),
//           ),
//           const Divider(
//             color: Colors.grey,
//           ),
//           ListTile(
//             title: const Text(
//               'Slack UserName',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//             subtitle: Text(widget.cv.slackUsername),
//           ),
//           const Divider(
//             color: Colors.grey,
//           ),
//           ListTile(
//             title: const Text(
//               'GitHub handle',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//             subtitle: Text(widget.cv.githubHandle),
//           ),
//           const Divider(
//             color: Colors.grey,
//           ),
//           ListTile(
//             title: const Text(
//               'Personal biography',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//             subtitle: Text(
//               widget.cv.personalBio,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'c.v_class.dart';
import 'edit_screen.dart';

class ViewCV extends StatefulWidget {


  ViewCV({required this.cv});


  @override
  ViewCVState createState() => ViewCVState();
  late CV cv;

}


class ViewCVState extends State<ViewCV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditCV(
                    cv: widget.cv,
                    onCVUpdated: (updatedCV) {
                      setState(() {
                        widget.cv = updatedCV;
                      });
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: <Widget>[
          const Text(
            'Curriculum Vitae',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: const Text(
              'Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(widget.cv.name),
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text(
              'Slack User name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(widget.cv.slackUsername),
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text(
              'GitHub handle',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(widget.cv.githubHandle),
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text(
              'Personal biography',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              widget.cv.personalBio,
            ),
          ),
        ],
      ),
    );
  }
}