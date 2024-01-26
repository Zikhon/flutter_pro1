
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
        backgroundColor: Color.fromARGB(0, 161, 56, 24),
        leading: SizedBox(
          height: 100,
          width: 100,
          
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Image.asset('Images/Quicloc8-logo.png',
            fit: BoxFit.contain,
          ),
          ]),
      
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Where do you want to go?',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: latController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
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
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'longitude',
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
  width: double.infinity,
  margin: EdgeInsets.all(16.0),  // Add margin for spacing
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      // Add style for the button
      primary:Color(0xFFF36E21),// Background color
      onPrimary: Colors.white,  // Text color
    ),
    onPressed: () {
      if (isValidInput()) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MapScreen(
              double.parse(latController.text),
              double.parse(lngController.text),
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please enter valid latitude and longitude'),
            backgroundColor:Color.fromARGB(255, 253, 8, 8),
          ),
        );
      }
    },
    child: Text('Get your destination!!'),
  ),
),

          ],
        ),
      ),
    );
  }

  bool isValidInput() {
    try {
      double.parse(latController.text);
      double.parse(lngController.text);
      return true;
    } catch (e) {
      return false;
    }
  }
}
