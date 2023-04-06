import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: const BusinessCard(),
    );
  }
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Card(
     color : Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 70.0,
            backgroundImage:
            AssetImage("assets/young-business-woman-1470305657Egm.jpg",
            ),
          ),
          Text(
            "Sara Mosaad",
            style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 25
            ),
          ),
          Text(
            "Network Engineer",
            style: GoogleFonts.alatsi(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children:  [
                  Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    '+201023456789',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children:  [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'sara_mosaad@gmail.com',
                    style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
