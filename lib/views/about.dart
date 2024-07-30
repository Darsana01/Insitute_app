import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: AboutUs(),
    debugShowCheckedModeBanner: false,
  ));
}

class AboutUs extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1488998527040-85054a85150e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.5),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Center(
                    child: Text(
                      "About Us",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          ListTile(
                            title: Text(
                              "A Classical Education for the Future",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "We envision a world where language barriers are a thing of the past, and media serves as a universal platform for connection and communication. By leveraging the latest technology and creative approaches, we aim to bring people closer together through shared narratives and experiences.",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ready to collaborate? ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Card(
                                            child: Padding(
                                              padding: EdgeInsets.all(30.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.phone),
                                                      SizedBox(width: 8),
                                                      Text("+91 9539388444"),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.mail),
                                                      SizedBox(width: 8),
                                                      Text(" imatenquiry@gmail.com"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                        SizedBox(width: 30.0,),
                                        Card(
                                            child: Padding(
                                              padding: EdgeInsets.all(30.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.phone),
                                                      SizedBox(width: 8),
                                                      Text("+095393 22666"),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.mail),
                                                      SizedBox(width: 8),
                                                      Text("alkorentertainments@gmail.com"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text("Let's start creating something amazing together.",
                                    style: GoogleFonts.abel(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        )),
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}