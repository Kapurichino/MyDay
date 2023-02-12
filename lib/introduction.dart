import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Introduction extends StatelessWidget {
  Introduction({Key? key}) : super(key: key);
  final Uri _url = Uri.parse(
      'https://github.com/CAU-MobileApp/GlobalTime/releases/tag/v1.0.0');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Project'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset('assets/introduction/0.jpg'),
            Image.asset('assets/introduction/1.jpg'),
            Image.asset('assets/introduction/2.jpg'),
            Image.asset('assets/introduction/3.jpg'),
            Image.asset('assets/introduction/4.jpg'),
            Image.asset('assets/introduction/5.jpg'),
            Image.asset('assets/introduction/6.jpg'),
            Image.asset('assets/introduction/7.jpg'),
            Image.asset('assets/introduction/8.jpg'),
            Image.asset('assets/introduction/9.jpg'),
            Image.asset('assets/introduction/10.jpg'),
            Stack(
              children: [
                Image.asset('assets/introduction/11.jpg'),
                Positioned(
                  bottom: 180,
                  right: 50,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: _launchUrl,
                      child: const Text('다운로드'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
