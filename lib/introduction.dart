import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Introduction extends StatelessWidget {
  Introduction({Key? key}) : super(key: key);
  final Uri _projectUrl = Uri.parse(
      'https://github.com/CAU-MobileApp/GlobalTime/releases/tag/v1.0.0');
  final Uri _githubUrl = Uri.parse(
      'https://github.com/CAU-MobileApp/GlobalTime/releases/tag/v1.0.0');
  Future<void> _launchProjectUrl() async {
    if (!await launchUrl(_projectUrl)) {
      throw Exception('Could not launch $_projectUrl');
    }
  }

  Future<void> _launchGithubUrl() async {
    if (!await launchUrl(_githubUrl)) {
      throw Exception('Could not launch $_githubUrl');
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
                      onPressed: _launchProjectUrl,
                      child: const Text('다운로드'),
                    ),
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Image.asset('assets/introduction/12.jpg'),
                Positioned(
                    left: 100,
                    top: 15,
                    child: IconButton(
                      onPressed: _launchGithubUrl,
                      icon: const FaIcon(FontAwesomeIcons.github, size: 40),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
