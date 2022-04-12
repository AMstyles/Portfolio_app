import 'package:flutter/material.dart';
import 'package:portfolio_app/disclaimerpage.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'lib/images/handshakean.gif',
                fit: BoxFit.fitWidth,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 300,
                  height: 200,
                  color: Colors.white,
                  child: const Text(
                    "Hi, user. WELCOME. Please note that software is not a consumer grade software. So, please don't judge it or me. I built it strictly for learning and practicing purposes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        wordSpacing: 4,
                        letterSpacing: 1,
                        fontFamily: 'Oswald'),
                  ),
                ),
              ),
              FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 27, 231, 34),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => disclaimerPage()),
                      ));
                },
                child: const Icon(
                  Icons.arrow_forward,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
