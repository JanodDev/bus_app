import 'package:busapp2/Passengerarriving.dart';

import 'package:busapp2/featuresadd.dart';
import 'package:busapp2/gps.dart';
import 'package:busapp2/spnote.dart';
import 'package:busapp2/start.dart';
import 'package:flutter/material.dart';

class DriverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Page',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.orange[900],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            DriverOptionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartEndTripPage()),
                );
              },
              title: 'Start and End Trip/Payment',
            ),
            DriverOptionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PassengersPage()),
                  );
                },
                title: 'Passengers arriving today'),
            DriverOptionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => featuresadd()),
                  );
                },
                title: 'Additional Features',
                isAddButton: true),
            DriverOptionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SpecialNotesPage()),
                  );
                },
                title: 'View Special notes'),
            DriverOptionButton(title: 'Your payment'),
            DriverOptionButton(title: 'View passenger messages'),
            SizedBox(height: 20),
            Text(
              'Send your live location for your passengers',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationScreen()),
                );
              },
              child: Text('Live Location'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange[900],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Go to Google map and copy your live location link and paste it here to share your location for your passengers',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class DriverOptionButton extends StatelessWidget {
  final String title;
  final bool isAddButton;
  final VoidCallback? onPressed;

  const DriverOptionButton({
    Key? key,
    required this.title,
    this.isAddButton = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[900],
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        trailing: isAddButton
            ? Icon(Icons.add, color: Colors.white)
            : Icon(Icons.arrow_forward, color: Colors.white),
        onTap: onPressed,
      ),
    );
  }
}
