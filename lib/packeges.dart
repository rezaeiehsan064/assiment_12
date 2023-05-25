import 'dart:math';
import 'package:flutter/material.dart';
//font awsome #1
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//text to speech and English words
import 'package:text_to_speech/text_to_speech.dart';
import 'package:english_words/english_words.dart';
//  animated splsh screen
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:photo_view/photo_view.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(
    MaterialApp(home: Myapp()),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade600,
        title: Text('Libraries App'),
        titleTextStyle: TextStyle(fontSize: 30.0, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page1(),
                      ));
                },
                color: Colors.green,
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 5.0,
                  ),
                ),
                child: Text('library #1'),
                textColor: Colors.white,
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page2(),
                      ));
                },
                color: Colors.green,
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 5.0,
                  ),
                ),
                child: Text('library #2'),
                textColor: Colors.white,
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page3(),
                      ));
                },
                color: Colors.green,
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 5.0,
                  ),
                ),
                child: Text('library #3'),
                textColor: Colors.white,
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page4(),
                      ));
                },
                color: Colors.green,
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 5.0,
                  ),
                ),
                child: Text('library #4'),
                textColor: Colors.white,
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page5(),
                      ));
                },
                color: Colors.green,
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 5.0,
                  ),
                ),
                child: Text('library #5'),
                textColor: Colors.white,
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page6(),
                      ));
                },
                color: Colors.green,
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white70,
                    width: 5.0,
                  ),
                ),
                child: Text('library #6'),
                textColor: Colors.white,
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page7(),
                      ));
                },
                color: Colors.green,
                shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 5.0,
                  ),
                ),
                child: Text('library #7'),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Font awsome packege'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Center(
        child: Container(
          child: FaIcon(
            FontAwesomeIcons.smile,
            color: Colors.yellow,
            size: 400,
          ),
        ),
      ),
    );
  }
}

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  var newgeneratedword = nouns[Random().nextInt(500)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('text to speech'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              TextToSpeech tts = TextToSpeech();
              tts.speak(newgeneratedword);
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: Text(
                  '$newgeneratedword',
                  style: TextStyle(fontSize: 100.0, color: Colors.yellow),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        child: Text(
          'Clicke on the text below '
          'to read the word or (Speech)',
          style: TextStyle(fontSize: 40.0, color: Colors.black),
        ),
      ),
    );
  }
}

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 2000,
            splash: Image.asset(
              'images/IMG_20210822_151411_467.jpg',
              filterQuality: FilterQuality.high,
            ),
            //همچان میشود از لینک ها و ایکن ها استفاده کنیم
            nextScreen: MainScreen(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.black));
  }
}

class page4 extends StatelessWidget {
  const page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Photh view '),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Container(
          child: PhotoView(
        imageProvider: AssetImage("images/photo_2023-05-16_10-53-59.jpg"),
      )),
    );
  }
}

class page5 extends StatelessWidget {
  const page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Share plus'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              Share.share('check out my website https://example.com',
                  subject: 'Look what I made!');
            },
            child: Center(child: Text('CLIKE ME'))),
      ),
    );
  }
}

class page6 extends StatelessWidget {
  const page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Shimmer'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Center(
        child: SizedBox(
          width: 200.0,
          height: 100.0,
          child: Shimmer.fromColors(
            baseColor: Colors.red,
            highlightColor: Colors.yellow,
            child: Text(
              '(Shimmer)\nWe use shimmer for witing net work some times',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class page7 extends StatelessWidget {
  const page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Font awsome packege'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
      ),
      body: Container(),
    );
  }
}

//for splsh screen page
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Myapp(),
                ));
          },
          child: Text('Clike to back',
              style: TextStyle(color: Colors.yellow, fontSize: 80)),
        ),
      ),
    );
  }
}
