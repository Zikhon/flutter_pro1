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
        backgroundColor: Color(0xFFFF5722),
        leading: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'Images/Quicloc8-logo.png',
              fit: BoxFit.contain,
            ),
          ],),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
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
              margin: EdgeInsets.all(16.0), 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF36E21), 
                  onPrimary: Colors.white,
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
                        content:
                            Text('Please enter valid latitude and longitude'),
                        backgroundColor: Color(0xFFFE2A39),
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
