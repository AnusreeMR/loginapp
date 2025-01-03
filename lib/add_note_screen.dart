import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/firebase_note_service.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptioncontroller,
              decoration: InputDecoration(
                labelText: 'Description',
              ),
            ),
            ElevatedButton(
                onPressed: () async{
                  setState(() {
                    isloading = true;
                  });
                  await Addnotes(title: titlecontroller.text, description: descriptioncontroller.text, context: context);
                  setState(() {
                    isloading=false;
                  });
                },
                child:
                    isloading ? CircularProgressIndicator() : Text("Add Note"))
          ],
        ),
      ),
    );
  }
}
