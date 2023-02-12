import 'package:flutter/material.dart';
import 'package:myday/introduction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.brown, fontFamily: 'NotoSans'),
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
