import 'package:flutter/material.dart';
import 'package:myday/introduction.dart';

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
          primarySwatch: Colors.brown,
          fontFamily: 'NotoSans'),
      home: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Day'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset('assets/scene/0.jpg'),
            Image.asset('assets/scene/1.jpg'),
            Image.asset('assets/scene/2.jpg'),
            Image.asset('assets/scene/3.jpg'),
            Image.asset('assets/scene/4.jpg'),
            Image.asset('assets/scene/5.jpg'),
            Image.asset('assets/scene/6.jpg'),
            Image.asset('assets/scene/7.jpg'),
            Image.asset('assets/scene/8.jpg'),
            Image.asset('assets/scene/9.jpg'),
            Image.asset('assets/scene/10.jpg'),
            Image.asset('assets/scene/11.jpg'),
            Image.asset('assets/scene/12.jpg'),
            Stack(
              children: [
                Image.asset('assets/scene/13.jpg'),
                Positioned(
                    right: 60,
                    bottom: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Introduction()),
                        );
                      },
                      child:
                          const Text('이동 ->', style: TextStyle(fontSize: 30)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
