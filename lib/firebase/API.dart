// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

// class AuthEmailAccount{
//   AuthEmailAccount({required this.email,required this.password});
//   String email;
//   String password;

//   void signUP(String email, String password) async{
//     FirebaseAuth auth = FirebaseAuth.instance;
//     try {
//       final newUser = await auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//     } catch (e) {
//       print(e);
//     }
//   }
// }