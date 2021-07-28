import 'package:flutter/material.dart';

class uploadPage extends StatefulWidget {
  const uploadPage({Key? key}) : super(key: key);

  @override
  _uploadPageState createState() => _uploadPageState();
}

class _uploadPageState extends State<uploadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text('Upload Posts', style: TextStyle(fontSize: 20, color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                child: Text(
                  'Image',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onPressed: (){

                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
