import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:real_version/const/routes.dart';
import 'package:real_version/docteur/screens/search.dart';
import 'package:real_version/patient/screens/login_page.dart';
import 'package:real_version/patient/screens/profile_page.dart';
import 'package:real_version/register_view.dart';
import 'firebase_options.dart';
import 'verify_email.dart';
import 'dart:developer' show log;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Homepage(),
      routes: {
        profilRoute : (context) => const ProfilPage1(),
        searchRoute :(context) => const SearchPatient(),
        registerRoute :(context) => const RegisterView(),
        loginRoute : (context) => const LoginScreen(),
        verifyEmailRoute :(context) => const VerifyEmailView(),
      },
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState){
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null){
              if (user.emailVerified){
                return FutureBuilder(
                  future: getRole(user),
                  builder: (context, snapshot){
                    switch(role){
                      case 'admin' : return const RegisterView();
                      case 'patient' : return const ProfilPage1();
                      case 'docteur' : return const SearchPatient();
                      default: return const Scaffold(
                        body: Center(child: CircularProgressIndicator())
                      );
                    }
                  }
                );
              }else {
                log(FirebaseAuth.instance.currentUser.toString());
                return const VerifyEmailView();
              }
            }else {
              return const LoginScreen();
            }
          default: 
            return const Scaffold(
              body: Center(child: CircularProgressIndicator())
            );
        }
      }
    );
  }
}

String? role;

Future<void> getRole(user) async{
  final userData = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
  final data = userData.data();
  role = data!['role'];
} 

// class AddData extends StatefulWidget {
//   const AddData({ Key? key }) : super(key: key);

//   @override
//   State<AddData> createState() => _AddDataState();
// }

// class _AddDataState extends State<AddData> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
//     future: FirebaseFirestore.instance.collection('users').doc('oiei1umb7SP8uAmddsY4gdDmGu93').get(),
//     builder: (_, snapshot) {
//     if (snapshot.hasError) return Text ('Error = ${snapshot.error}');

//     if (snapshot.hasData) {
//       var data = snapshot.data!.data();
//       var value = data!['role']; // <-- Your value
//       return Text('Value = $value');
//     }

//     return const Center(child: CircularProgressIndicator());
//   },
//   ),
      
//     );
//   }
// }

    



// class AddData extends StatelessWidget {
//   const AddData({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final users = FirebaseFirestore.instance.collection('users');
//     final user = FirebaseAuth.instance.currentUser;
//     log(user!.uid);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: const Text("geeksforgeeks"),
//       ),
//       body:Center(
//         child: FloatingActionButton(
//           backgroundColor: Colors.green,
//           child: const Icon(Icons.add),
//           onPressed: () {
//             users.doc('vm9y0o4vp8Wf1cbRtPlvatSqKYX2').set({'role' : 'admin'});
//           },
//         ),
//       ),
//     );
//   }
// }