import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        leading: ElevatedButton(
          onPressed: () {},
          child: Image.asset('./assets/images/icons/Camera Icon.png'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey.shade50),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 6),
          child: Image.asset(
            './assets/images/logo.png',
            height: 40,
            width: 100,
          ),
        ),
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () {

            },
            child: Image.asset('./assets/images/icons/Messanger.png'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade50),
              elevation: MaterialStateProperty.all(0),
            ),
          ),
        ],
      ),
    );
  }
}
