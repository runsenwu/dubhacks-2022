import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> _startLocation = ['A', 'B', 'C', 'D']; // Option 2
  List<String> _endLocation = ['A', 'B', 'C', 'D']; // Option 2
  List<String> _person = ['A', 'B', 'C', 'D']; // Option 2
  List<String> _recording = ['A', 'B', 'C', 'D']; // Option 2
  List<String> _activation = ['A', 'B', 'C', 'D']; // Option 2
  String? _selectedStartLocation; // Option 2
  String? _selectedEndLocation;
  String? _selectPerson;
  String? _selectRecording;
  String? _selectedActivation;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Create New Journey',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.directions_walk,
                  color: Colors.black,
                  size: 24.0,
                ),
                Icon(
                  Icons.directions_bike_outlined,
                  color: Colors.black,
                  size: 24.0,
                ),
                Icon(Icons.directions_car)
              ],
            ),

            Column(
              children: [
                Center(
                  child: DropdownButton(
                    hint: Text(
                        'Please choose a location'), // Not necessary for Option 1
                    value: _selectedStartLocation,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedStartLocation = newValue;
                      });
                    },
                    items: _startLocation.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),

                // second drop down
                Center(
                  child: DropdownButton(
                    hint: Text(
                        'Please choose a location'), // Not necessary for Option 1
                    value: _selectedEndLocation,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedEndLocation = newValue;
                      });
                    },
                    items: _endLocation.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),

            // first drop down

            Column(
              children: [
                const Text(
                  'Select A Recording',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: DropdownButton(
                        hint: Text(
                            'Please choose a person'), // Not necessary for Option 1
                        value: _selectPerson,
                        onChanged: (newValue) {
                          setState(() {
                            _selectPerson = newValue;
                          });
                        },
                        items: _person.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                        // buttonWidth: 0.4 * MediaQuery.of(context).size.width,
                      ),
                    ),
                    Container(
                      child: DropdownButton(
                        hint: Text(
                            'Please choose a recording'), // Not necessary for Option 1
                        value: _selectRecording,
                        onChanged: (newValue) {
                          setState(() {
                            _selectRecording = newValue;
                          });
                        },
                        items: _recording.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Column(
              children: [
                const Text(
                  'Select Activation',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: DropdownButton(
                        hint: Text(
                            'Please choose activation'), // Not necessary for Option 1
                        value: _selectedActivation,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedActivation = newValue;
                          });
                        },
                        items: _activation.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            TextButton(onPressed: () {  },
            child: Text("Start Journey"),)
          ],
        ),

      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
