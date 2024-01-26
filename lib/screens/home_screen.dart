
import 'package:flutter/material.dart';
import 'mapscreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController latController = TextEditingController();
  TextEditingController lngController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  backgroundColor: Color(0xFFCCBC),
  leading: SizedBox(
    height: 100,
    width: 100,
    child: Image.asset(
      'Images/Quicloc8-logo.png',
       fit: BoxFit.contain,
          ),
       ),
     ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Where do you want to go?',
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: latController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'latitude',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: lngController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'longitute',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MapScreen(
                          double.parse(latController.text),
                          double.parse(lngController.text))));
                },
                child: Text('Get your destination!!')),
          ),
        ]),
      ),
    );
  }
}
