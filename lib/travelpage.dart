import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  final TextEditingController _specialNotesController = TextEditingController();

  @override
  void dispose() {
    _specialNotesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to Sadalu Travels ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange[900],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text('Homagama to Kandy', style: TextStyle(fontSize: 24)),
              SizedBox(height: 24),
              Text('Are you coming Today ?', style: TextStyle(fontSize: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Text(
                      'YES',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      // Handle Yes button action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[900],
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    child: Text('NO', style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      // Handle No button action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[900],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Specify where you will board the bus',
                  prefixIcon: Icon(Icons.directions_bus),
                ),
              ),
              SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Special Notes', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _specialNotesController,
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your notes here',
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                child: Text('SUBMIT', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Handle Submit button action
                  print('Special Notes: ${_specialNotesController.text}');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[900],
                  minimumSize: Size(double.infinity,
                      50), // double.infinity is the width and 50 is the height
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
