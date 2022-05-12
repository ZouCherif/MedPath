import 'dart:developer' show log;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real_version/const/routes.dart';
import 'package:real_version/utilities/show_error_dialog.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;

   @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }  

  bool isPasswordVisible = false;
  int value = 0;
  bool positive = false;
  String bro = 'bro';
  var color = const Color(0xff0dbed8);
  @override
  Widget build(BuildContext context) {
    // var _listIconTabToggle = [
    //   Icons.person,
    //   Icons.pregnant_woman,
    // ];
    // var _tabIconIndexSelected = 0;
    // var _listGenderText = ["Male", "Female"];
    // var _listGenderEmpty = ["", ""];
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
        padding: const EdgeInsets.only(top: 90.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 200,
              child: Center(
                child: Image.asset(
                  'assets/logo_1.png',
                  fit: BoxFit.cover,
                  ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Welcome Back !',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(64, 96, 131, 100),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                'We wish that you are in good Health',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 44, 98, 143),
                ),
              ),
            ),
            const SizedBox(height: 13),
            SizedBox(
              width: 294,
              height: 224,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 68,
                    width: 294,
                    child: TextField(
                      controller: _email,
                      decoration: InputDecoration(
                        labelText: "Enter your email",
                        labelStyle: const TextStyle(fontSize: 15),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff0dbed8), width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff0dbed8), width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        /*suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 9.0),
                          child: IconButton(
                            icon: const Icon(Icons.email),
                          color: Color(0x55828B),
                          onPressed: () {},
                          ),
                        ),*/
                        hintMaxLines: 1,
                        ),
                        keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                  height: 52,
                  width: 294,
                  child: TextField(
                  controller: _password,
                  obscureText: isPasswordVisible ? false : true,
                  decoration: InputDecoration(
                        labelText: "enter your Password",
                        labelStyle: const TextStyle(fontSize: 15),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                          color: Color(0xff0dbed8),
                          width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xff0dbed8), width: 2,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon(isPasswordVisible ? Icons.visibility: Icons.visibility_off),
                          ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    width: 294,
                    height: 52,
                    child: ElevatedButton(                /////////////////////////
                      onPressed: () async{
                        // await FirebaseAuth.instance.signOut();
                        // final hello = FirebaseAuth.instance.currentUser;                 //just to logout
                        // log(hello.toString());
                        final email = _email.text;
                        final password = _password.text;
                        try{
                          await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: email,  
                            password: password,
                          );
                          final user = FirebaseAuth.instance.currentUser;
                          if (user!.emailVerified){
                            final userID = user.uid;
                            final userRole = await FirebaseFirestore.instance.collection('users').doc(userID).get();
                            final data = userRole.data();
                            if (data == null){
                              log('null');
                            }else {
                              switch(data['role']){
                                case 'admin':
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    registerRoute, 
                                    (route) => false
                                  );
                                break;
                                case 'docteur':
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    searchRoute, 
                                    (route) => false
                                  );
                                break;
                                case 'patient':
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    profilRoute, 
                                    (route) => false
                                  );
                                break;
                              }
                            }
                          }else{
                            showDialog(
                              context: context, 
                              builder: (context){
                                return AlertDialog(
                                  title: const Text('An error occured'),
                                  content: const Text("you didn't verify your emal"),
                                  actions:[
                                    TextButton(
                                      onPressed: () async{
                                        await user.sendEmailVerification();
                                        Navigator.of(context).pop();
                                      }, 
                                      child: const Text('send email verification')
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      }, 
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                          
                        } on FirebaseAuthException catch(e){
                          if (e.code == 'user-not-found'){
                            await showErrorDialog(context, 'user not found');
                          } else if (e.code == 'wrong-password'){
                            await showErrorDialog(context, 'wrong credentials');
                          }else{
                            await showErrorDialog(context, 'Error: ${e.code}');
                          }
                        }catch (e){
                          await showErrorDialog(context, e.toString());
                        }                      
                      },                        
                      style: ElevatedButton.styleFrom(
                        shadowColor: color,
                        elevation: 10,
                        primary: color,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "Continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
