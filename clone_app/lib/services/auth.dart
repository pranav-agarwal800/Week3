import 'package:clone_app/screens/beforeLogin/newAppPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future logInWithUsernameAndPassword(_email, _password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: _email, password: _password);
      User? user = result.user;
      if(user == null){
        return null;
      } else {
        return user.uid;
      }
    } catch (e) {
      return null;
    }
  }

  Future signUpWithEmailAndPassword(_email, _password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: _email, password: _password);
      User? user = result.user;
      if(user == null){
        return null;
      } else {
        return user.uid;
      }
    } catch (e){
      return null;
    }
  }

  Future<void> signout(BuildContext context) async {
    await _auth.signOut().then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => newAppPage()));
    });
  }

}