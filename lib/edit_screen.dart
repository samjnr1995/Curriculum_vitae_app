// import 'package:flutter/material.dart';
//
// import 'c.v_class.dart';
//
//
//
// class EditCV extends StatefulWidget {
//   final CV cv;
//   final Function(CV) onCVUpdated;
//
//   EditCV({required this.cv, required this.onCVUpdated});
//
//   @override
//   EditCVState createState() => EditCVState();
// }
//
// class EditCVState extends State<EditCV> {
//   late TextEditingController nameController;
//   late TextEditingController slackUserNameController;
//   late TextEditingController githubHandleController;
//   late TextEditingController personalBioController;
//
//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: widget.cv.name, );
//     slackUserNameController = TextEditingController(text: widget.cv.slackUsername);
//     githubHandleController = TextEditingController(text: widget.cv.githubHandle);
//     personalBioController = TextEditingController(text: widget.cv.personalBio);
//   }
//
//   @override
//   void dispose() {
//     nameController.dispose();
//     slackUserNameController.dispose();
//     githubHandleController.dispose();
//     personalBioController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: <Widget>[
//             const Text('Edit C.V', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
//             const SizedBox(height: 10,),
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(labelText: 'Name', ),
//             ),
//             TextField(
//               controller: slackUserNameController,
//               decoration: const InputDecoration(labelText: 'Slack UserName'),
//             ),
//             TextField(
//               controller: githubHandleController,
//               decoration: const InputDecoration(labelText: 'GitHub handle'),
//             ),
//             TextField(
//               controller: personalBioController,
//               maxLines: 4,
//               decoration: const InputDecoration(labelText: 'Personal biography'),
//             ),
//             const SizedBox(height: 16.0),
//             Container(
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   final updatedCV = CV(
//                     name: nameController.text,
//                     slackUsername: slackUserNameController.text,
//                     githubHandle: githubHandleController.text,
//                     personalBio: personalBioController.text,
//                   );
//
//                   widget.onCVUpdated(updatedCV);
//
//                   Navigator.pop(context, updatedCV);
//                 },
//                 child: const Text('Save'),
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'c.v_class.dart';



class EditCV extends StatefulWidget {
  final CV cv;
  final Function(CV) onCVUpdated;

  EditCV({required this.cv, required this.onCVUpdated});

  @override
  EditCVState createState() => EditCVState();
}

class EditCVState extends State<EditCV> {
  late TextEditingController nameController;
  late TextEditingController slackUserNameController;
  late TextEditingController githubHandleController;
  late TextEditingController personalBioController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.cv.name);
    slackUserNameController = TextEditingController(text: widget.cv.slackUsername);
    githubHandleController = TextEditingController(text: widget.cv.githubHandle);
    personalBioController = TextEditingController(text: widget.cv.personalBio);
  }

  @override
  void dispose() {
    nameController.dispose();
    slackUserNameController.dispose();
    githubHandleController.dispose();
    personalBioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            const Text('Edit C.V', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: slackUserNameController,
              decoration: const InputDecoration(labelText: 'Slack UserName'),
            ),
            TextField(
              controller: githubHandleController,
              decoration: const InputDecoration(labelText: 'GitHub handle'),
            ),
            TextField(
              controller: personalBioController,
              maxLines: 4,
              decoration: const InputDecoration(labelText: 'Personal biography'),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  final updatedCV = CV(
                    name: nameController.text,
                    slackUsername: slackUserNameController.text,
                    githubHandle: githubHandleController.text,
                    personalBio: personalBioController.text,
                  );

                  widget.onCVUpdated(updatedCV);

                  Navigator.pop(context, updatedCV);
                },
                child: const Text('Save'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}