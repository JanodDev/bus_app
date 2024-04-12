import 'package:flutter/material.dart';

class StartEndTripPage extends StatefulWidget {
  @override
  _StartEndTripPageState createState() => _StartEndTripPageState();
}

class _StartEndTripPageState extends State<StartEndTripPage> {
  final List<Map<String, dynamic>> passengers = [
    {'name': 'Gayan Perera', 'paid': true},
    {'name': 'Sadaru Kumara', 'paid': false},
    {'name': 'dilupa Senarath', 'paid': true},
    {'name': 'Mahinda Karuna', 'paid': false},
    {'name': 'Tharindu Bandara', 'paid': true},
    {'name': 'Kausun Kalhara', 'paid': true},
  ];

  void startTrip() {
    // TODO: Implement start trip functionality
    print('Trip started!');
  }

  void endTrip() {
    // TODO: Implement end trip functionality
    print('Trip ended!');
  }

  void submitPayment() {
    // TODO: Implement submit payment functionality
    print('Payment submitted for all passengers!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Start and End Trip/Payment',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: startTrip,
              child: Text(
                'Start a new trip',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.orange[900]),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: endTrip,
              child: Text(
                'End trip',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.orange[900]),
            ),
            SizedBox(height: 32),
            Text('Mark Passengers monthly Payment',
                style: Theme.of(context).textTheme.headline6),
            Expanded(
              child: ListView.builder(
                itemCount: passengers.length,
                itemBuilder: (context, index) {
                  var passenger = passengers[index];
                  return ListTile(
                    title: Text('${index + 1}. ${passenger['name']}'),
                    trailing: Text(
                      passenger['paid'] ? 'paid' : 'not paid',
                      style: TextStyle(
                        color: passenger['paid'] ? Colors.green : Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: submitPayment,
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.orange[900]),
            ),
          ],
        ),
      ),
    );
  }
}
