// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const LeaveApply());
}

class LeaveApply extends StatelessWidget {
  const LeaveApply({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(
        title: 'Travel Concession Form',
      ),
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    //var items = ['Central', 'Western', 'Harbour'];
    String? chosenValue;
    return Scaffold(
      key: scaffoldKey,
      //appBar: AppBar(
      // title: const Text("Travel Concession Form"),
      //centerTitle: true,
      //   ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Leave Application",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 3,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  title: Text("Full Name",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87)),
                  subtitle: TextField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      // labelText: 'Full Name',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ListTile(
                  title: Text("UID/Roll No",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87)),
                  subtitle: TextField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      // labelText: 'Full Name',
                    ),
                  ),
                ),
                SizedBox(height: 5),
                ListTile(
                  title: Text("Select your Class",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87)),
                  subtitle: DropdownButtonFormField<String>(
                      value: chosenValue,
                      elevation: 5,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),

                      // style: TextStyle(color: Colors.black),

                      items: <String>[
                        'FY',
                        'SY',
                        'TY',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          chosenValue = value;
                        });
                      }),
                ),
                SizedBox(height: 5),
                ListTile(
                  title: Text("Select your Course",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87)),
                  subtitle: DropdownButtonFormField<String>(
                      value: chosenValue,
                      elevation: 5,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),

                      // style: TextStyle(color: Colors.black),

                      items: <String>[
                        'BA',
                        'BSC',
                        'BSC IT',
                        'BMS',
                        'BMM',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          chosenValue = value;
                        });
                      }),
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  title: Text("Email Id",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87)),
                  subtitle: TextField(
                    obscureText: false,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      // labelText: 'Full Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ListTile(
                        title: Text(" Leave From",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87)),
                        subtitle: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            // labelText: 'Full Name',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text("Leave Till",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87)),
                        subtitle: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            // labelText: 'Full Name',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text("Upload Your Medical Certificate Here",
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87)),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        //if user click this button, user can upload image from gallery
                        onPressed: () {
                          Navigator.pop(context);
                          //getImage(ImageSource.gallery);
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.image),
                            Text('From Gallery'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 214, 107, 143), // background (button) color
                    foregroundColor: Colors.white, // foreground (text) color
                  ),
                  // ignore: avoid_print
                  onPressed: () => print('pressed'),
                  child: const Text('Submit Form'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
