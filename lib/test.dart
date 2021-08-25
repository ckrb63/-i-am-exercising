import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  print(1);
  await Firebase.initializeApp();
  print(2);


  FirebaseAuth auth = FirebaseAuth.instance;
  String email = 'cksr1@naver.com';
  String password = '1234';
  print(3);
  try {
    final newUser = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
  } catch (e) {
    print(e);
  }

}