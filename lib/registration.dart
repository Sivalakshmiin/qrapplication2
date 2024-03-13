import 'package:flutter/material.dart';
import 'package:qrapplication/scan.dart';

class RegApp extends StatefulWidget {
  const RegApp({Key? key}) : super(key: key);

  @override
  State<RegApp> createState() => _RegAppState();
}

class _RegAppState extends State<RegApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 200,
              ),
              Text('Login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red), ),
              SizedBox(
                width: 50,
                height: 30,
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'Enter your name'
                ),

                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'enter your email'
                ),

                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'enter your password'
                ),

                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'enter your password'
                ),

                ),
              ),
              ElevatedButton(onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Qrpage() ) );
              }, child: Text('LOGIN'),
                style:TextButton.styleFrom(backgroundColor: Colors.lime) ,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
