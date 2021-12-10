import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'animasi',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _size = 100;
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animasi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             AnimatedContainer(
               duration: Duration(seconds: 1),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.blue,
               ),
               height: _size,
                 width: _size,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _size =_isBig ? 200 : 100;
                  _isBig = !_isBig;
                });
              },
              child: const Text("tekan"),
            ),
          ],
        ),
      ),
    );
  }
}

