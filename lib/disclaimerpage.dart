import 'package:flutter/material.dart';
import 'package:portfolio_app/homepage.dart';

class disclaimerPage extends StatefulWidget {
  disclaimerPage({Key? key}) : super(key: key);

  @override
  State<disclaimerPage> createState() => disclaimerPageState();
}

class disclaimerPageState extends State<disclaimerPage> {
  bool _isYesSelected = false;
  bool _isNoSelected = false;

  get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('lib/images/Alert.gif'),
              const Text(
                "warning: The developer is obsessed with Adele",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blueGrey),
              ),
              const Divider(
                height: 1,
                thickness: 3,
                indent: 1,
                endIndent: 2,
              ),
              ClipRRect(
                child: Hero(
                  tag: 'adele',
                  child: Image.asset(
                    'lib/images/adele.jpg',
                    // width: 100,
                    height: 200,
                  ),
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              const Text(
                "CONTINUE?",
                style: TextStyle(fontSize: 35, color: Colors.blue),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ChoiceChip(
                    shadowColor: Colors.pink,
                    disabledColor: Colors.blue[100],
                    selectedColor: Colors.blue[200],
                    label: const Text(
                      "Oh Yeah",
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
                    selected: _isYesSelected,
                    onSelected: (newBoolValue) {
                      setState(() {
                        _isYesSelected = newBoolValue;
                        _isNoSelected = false;
                      });
                    },
                  ),
                  ChoiceChip(
                    disabledColor: Colors.blue[100],
                    selectedColor: Colors.blue[200],
                    label: const Text(
                      "Nah",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    selected: _isNoSelected,
                    onSelected: (newBoolValue) {
                      setState(() {
                        _isNoSelected = newBoolValue;
                        _isYesSelected = false;
                      });
                    },
                  ),
                ],
              ),
              FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 0, 255, 8),
                onPressed: () {
                  _isYesSelected
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => HomePage()),
                          ))
                      : {};
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
