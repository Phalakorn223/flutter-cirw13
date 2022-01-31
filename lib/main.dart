import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Navigator"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Navigator"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Text");
          },
          child: Icon(Icons.home),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                    child: Text(
                      "HEADER",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                        ),
                    ),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                onTap: () {
                  print("Home");
                },
                leading: Icon(Icons.home,color: Colors.blue,),
                title: Text("Home",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
              ),
              ListTile(
                onTap: () {
                  print("Menu-2");
                },
                leading: Icon(Icons.account_box,color: Colors.blue,),
                title: Text("Menu-2"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet,color: Colors.blue,),
                title: Text("Menu-3"),
              ),
              ListTile(
                leading: Icon(Icons.api,color: Colors.blue,),
                title: Text("Menu-4"),
              ),
              SizedBox(height: 5),
              ListTile(
                leading: Icon(Icons.power_settings_new,color: Colors.red,),
                title: Text("Exit Program"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
