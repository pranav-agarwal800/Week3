import 'package:clone_app/models/loading.dart';
import 'package:clone_app/screens/afterLogin/feedBase.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class editProfile extends StatefulWidget {
  const editProfile({Key? key}) : super(key: key);

  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  String imgUrl =
      'https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png';

  bool load = false;

  double _txtFldHU = 45.0;
  double _txtFldHU2 = 45.0;

  TextEditingController _name = TextEditingController();
  TextEditingController _bio = TextEditingController();
  TextEditingController _username = TextEditingController();

  @override
  void initState() {
    super.initState();

    initialise();
  }

  Future<void> initialise() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      _name = TextEditingController(text: pref.getString('name')!);
      _bio = TextEditingController(text: pref.getString('bio')!);
      _username = TextEditingController(text: pref.getString('username')!);
    });
  }

  CollectionReference dbref = FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return load
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => feedBase(
                                index: 4,
                              )));
                },
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0.0,
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 50,
                          child: CircleAvatar(
                            radius: 49,
                            backgroundColor: Colors.white,
                            child: GestureDetector(
                              onTap: () async {

                              },
                              child: CircleAvatar(
                                radius: 46,
                                backgroundColor: Colors.white,
                                backgroundImage: NetworkImage(
                                  imgUrl,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: _txtFldHU,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _name,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          fontSize: 12.5,
                          color: Colors.grey.shade400,
                        ),
                        labelText: 'Name',
                        // labelStyle: TextStyle(
                        //   fontSize: 12.5,
                        //   color: Colors.grey.shade400,
                        // ),
                        contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        fillColor: Colors.grey.shade50,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 0.5,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.5,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.5,
                          ),
                        ),
                        errorStyle: TextStyle(
                          fontSize: 10,
                          color: Colors.red.shade700,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: _txtFldHU2,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _username,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        labelText: 'Username',
                        hintStyle: TextStyle(
                          fontSize: 12.5,
                          color: Colors.grey.shade400,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        fillColor: Colors.grey.shade50,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 0.5,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.5,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.5,
                          ),
                        ),
                        errorStyle: TextStyle(
                          fontSize: 10,
                          color: Colors.red.shade700,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.top,
                      controller: _bio,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Bio',
                        labelText: 'Bio',
                        hintStyle: TextStyle(
                          fontSize: 13.5,
                          color: Colors.grey.shade400,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        fillColor: Colors.grey.shade50,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.blue,
                        ),
                        child: ButtonTheme(
                          child: TextButton(
                            onPressed: () async {
                              setState(() {
                                load = true;
                              });

                              SharedPreferences pref =
                                  await SharedPreferences.getInstance();

                              if (_username.text !=
                                  pref.getString('username')) {
                                int num = await dbref
                                    .where('username',
                                        isEqualTo: _username.text)
                                    .get()
                                    .then((value) => value.docs.length);

                                if (num != 0) {
                                  setState(() {
                                    load = false;
                                  });
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          content: Text(
                                    'Username already in use',
                                  )));
                                } else {
                                  if (_name.text != null && _name.text != '') {
                                    pref.setString('name', _name.text);
                                  }
                                  pref.setString('bio', _bio.text);
                                  if (_username.text != null &&
                                      _username.text != '') {
                                    pref.setString('username', _username.text);
                                  }

                                  dbref.doc(pref.getString('docID')).update({
                                    'name': pref.getString('name'),
                                    'bio': pref.getString('bio'),
                                    'username': pref.getString('username'),
                                  });

                                  setState(() {
                                    load = false;
                                  });

                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => feedBase(
                                                index: 4,
                                              )));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          content: Text(
                                    'Profile Updated',
                                  )));
                                }
                              } else {
                                if (_name.text != null && _name.text != '') {
                                  pref.setString('name', _name.text);
                                }
                                pref.setString('bio', _bio.text);
                                if (_username.text != null &&
                                    _username.text != '') {
                                  pref.setString('username', _username.text);
                                }

                                dbref.doc(pref.getString('docID')).update({
                                  'name': pref.getString('name'),
                                  'bio': pref.getString('bio'),
                                  'username': pref.getString('username'),
                                });

                                setState(() {
                                  load = false;
                                });

                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => feedBase(
                                              index: 4,
                                            )));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                        content: Text(
                                  'Profile Updated',
                                )));
                              }
                            },
                            child: Text(
                              'SAVE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
