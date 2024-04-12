import 'package:flutter/material.dart';

class SpecialNotesPage extends StatelessWidget {
  final List<Map<String, String>> notes = [
    {'name': 'Amandi Umesha', 'note': 'I will not come this evening'},
    {
      'name': 'Nethanya Dissanayake',
      'note': 'I get a little late in the evening'
    },
    // Add more notes here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Special Notes',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.orange[900],
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(notes[index]['name'] ?? ''),
              subtitle: Text(notes[index]['note'] ?? ''),
            ),
          );
        },
      ),
    );
  }
}
