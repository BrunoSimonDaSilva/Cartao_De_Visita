import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  Future<void> _launchLink(String url) async {
    await _launchLink(url);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão De Visita Digital',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Cartão De Visita Digital'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 5, 46),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/96893269?s=400&u=3f798217e3a325acd1b3499eb863c57f5cbd9b6b&v=4"),
                radius: 80,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Bruno Simon Da Silva",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Back-End e Flutter DEV",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: Divider(color: Colors.black),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 30,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 25,
                    color: Color.fromARGB(255, 53, 0, 0),
                  ),
                  title: Text(
                    "Bruno144rock@gmail.com",
                    style: TextStyle(
                      color: Color.fromARGB(255, 53, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 30.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.whatsapp,
                    size: 25,
                    color: Color.fromARGB(255, 53, 0, 0),
                  ),
                  title: Text(
                    "(31) 9 9348 5197",
                    style: TextStyle(
                      color: Color.fromARGB(255, 53, 0, 0),
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
