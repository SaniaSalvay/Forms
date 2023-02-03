// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const TrainConcession());
}

class TrainConcession extends StatelessWidget {
  const TrainConcession({super.key});

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
  String? gender;
  String name = "";

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Train Concession",
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
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Text(" Class",
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
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: ListTile(
                          title: Text(" Course",
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    title: Text("Phone Number",
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

                        prefixText: "+ 91",
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.phone,
                          ),
                        ),

                        // labelText: 'Full Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    title: Text("Address",
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
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Text("Travel Zone",
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
                                'Central',
                                'Harbour',
                                'Western',
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
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: ListTile(
                          title: Text("Travel Class",
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
                                'First Class',
                                'Second Class',
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: ListTile(
                          title: Text("From",
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
                          title: Text("To",
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
                          title: Text(
                              "Upload Your Image and Aadhar Card Copy Here",
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
                              Icon(Icons.upload_file),
                              Text('Upload'),
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
                          255, 247, 95, 146), // background (button) color
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
      ),
    );
  }
}
