import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage("assets/images/LnL5H4J5.jpeg"),
                ),
                Text(
                  "Godzilla",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Courgette',
                  ),
                ),
                Text(
                  "King of Monsters",
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.tealAccent,
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal.shade500,
                      ),
                      title: Text(
                        "+91-123456789",
                        style: TextStyle(
                          color: Colors.teal.shade500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal.shade500,
                      ),
                      title: Text(
                        "king.godzilla@monsters.com",
                        style: TextStyle(
                          color: Colors.teal.shade500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ]
                  .map(
                    (element) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: element,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
