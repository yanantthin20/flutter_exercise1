import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Register'))),
        body: DropDown(),
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  DropDownWidget createState() => DropDownWidget();
}

class DropDownWidget extends State {
  // Default Drop Down Item.
  String dropdownValue = 'Pazundaung';
  int code = 11171;

  // To show Selected Item in Text.
  String holder = '';

  List<String> township = ['Pazundaung', 'Mingaladon', 'Dagon'];
  void getDropDownItem() {
    setState(() {
      holder = dropdownValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: new InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                hintText: 'Phone',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                hintText: 'Deliver',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                hintText: 'Address',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                hintText: 'Shop Name',
                contentPadding: const EdgeInsets.all(20.0),
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black, fontSize: 15),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String data) {
                setState(() {
                  dropdownValue = data;
                  if (data == 'Pazundaung') {
                    code = 11172;
                  } else if (data == 'Mingaladon') {
                    code = 11021;
                  } else {
                    code = 11191;
                  }
                });
              },
              items: township.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text('     Postal Code- $value     $code'),
                );
              }).toList(),
            ),
            TextField(
              decoration: new InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            TextField(
              decoration: new InputDecoration(
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(20.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
            space15(),
            FlatButton(
              child: Text(
                "SUBMIT",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {},
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.red, spreadRadius: 3),
          ],
        ),
        height: 900,
      ),
    ));
  }
}

space15() {
  return SizedBox(
    height: 15,
  );
}
