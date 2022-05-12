// ignore_for_file: sized_box_for_whitespace
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:real_version/colors.dart';
import 'package:real_version/const/routes.dart';
import 'package:real_version/utilities/show_error_dialog.dart';

import 'general.dart';
String radioButtonItem = 'patient';
enum SingingCharacter { lafayette, jefferson }

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _password2;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _password2 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _password2.dispose();
    super.dispose();
  }


  bool isPasswordVisible = false;
  bool isPasswordVisible1 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 100),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: SizedBox(
              width: size.width * 0.43969849246231,
              height: 100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "let’s add some users ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff406083),
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: size.width * 0.43969849246231,
                    height: 35,
                    child: const Text(
                      "Add a new account by filing the boxes below",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff406083),
                        fontSize: 25,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          Container(
            height: 422,
            width: size.width * 0.43969849246231,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 39,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 42,
                    ),
                    FittedBox(
                      child: Text(
                        "type of the account:",
                        style: TextStyle(
                          color: Color(0xff406083),
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 59,
                    ),
                    RadioGroup(),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Container(
                  height: 42,
                  width: 336,
                  decoration: const BoxDecoration(),
                  child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      fillColor: bgcolor,
                      labelText: "Email",
                      labelStyle: const TextStyle(fontSize: 15, color: bluefnc),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 209, 209, 5),
                              width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(209, 209, 209, 5), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: bluefnc,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 42,
                  width: 336,
                  decoration: const BoxDecoration(),
                  child: TextField(
                    controller: _password,
                    obscureText: isPasswordVisible ? false : true,
                    decoration: InputDecoration(
                      fillColor: bgcolor,
                      labelText: "enter the password",
                      labelStyle: const TextStyle(fontSize: 15, color: bluefnc),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 209, 209, 5),
                              width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(209, 209, 209, 5), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(
                        Icons.key_outlined,
                        color: bluefnc,
                      ),
                      suffixIcon: IconButton(
                        color: bluefnc,
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        icon: Icon(isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 42,
                  width: 336,
                  decoration: const BoxDecoration(),
                  child: TextFormField(
                    controller: _password2,
                    obscureText: isPasswordVisible1 ? false : true,
                    decoration: InputDecoration(
                      fillColor: bgcolor,
                      labelText: "confirm the password",
                      labelStyle: const TextStyle(fontSize: 15, color: bluefnc),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(209, 209, 209, 5),
                              width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(209, 209, 209, 5), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(
                        Icons.key_outlined,
                        color: bluefnc,
                      ),
                      suffixIcon: const Icon(
                        Icons.check_outlined,
                        color: bluefnc,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 12,
                // ),
                // SizedBox(
                //   width: 336,
                //   height: 42,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         shadowColor: const Color.fromRGBO(209, 209, 209, 100),
                //         elevation: 4,
                //         primary: const Color.fromRGBO(209, 209, 209, 100),
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(15))),                                         //verify button
                //     onPressed: () {
                //       log(radioButtonItem);
                //     },
                //     child: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       crossAxisAlignment: CrossAxisAlignment.end,
                //       children: const [
                //         Text(
                //           "Verified",
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 18,
                //             fontFamily: "Poppins",
                //             fontWeight: FontWeight.w600,
                //           ),
                //         ),
                //         SizedBox(width: 12),
                //         Icon(
                //           Icons.check_outlined,
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.3,
                    ),
                    SizedBox(
                      width: 103,
                      height: 36,
                      child: ElevatedButton(
                        onPressed: () async{
                          final email = _email.text;
                          final password = _password.text;
                          if (email.isEmpty || password.isEmpty){
                            await showErrorDialog(context, "please enter all the informations");
                          }else if (_password2.text != password){
                            await showErrorDialog(context, "The Password Confirmation Does Not Match");
                          }else{
                            try{
                            final userCredential = await register(email, password);
                            // final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            //   email: email,
                            //   password: password,
                            // );
                            final userid = userCredential.user?.uid;
                            FirebaseFirestore.instance.collection('users').doc(userid).set({'role' : radioButtonItem});
                            // final user = FirebaseAuth.instance.currentUser;
                            await userCredential.user?.sendEmailVerification();
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Userinfo(userid: userid!,),));
                            } on FirebaseAuthException catch(e) {
                            if (e.code == 'weak-password'){
                              await showErrorDialog(context, 'Weak password');
                            } else if (e.code == 'email-already-in-use'){
                              await showErrorDialog(context, 'Email already in use');
                            } else if(e.code == 'invalid-email'){
                              await showErrorDialog(context, 'Invalid email');
                            }else{
                              await showErrorDialog(context, 'Error: ${e.code}');
                            }
                            }catch (e){
                            await showErrorDialog(context, e.toString());
                            }
                          } 
                        },
                        style: ElevatedButton.styleFrom(
                            shadowColor: blueclr,
                            elevation: 4,
                            primary: blueclr,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 81,
          // ),
          const Opacity(
            opacity: 0.50,
            child: Text(
              "All rights Reserved for the algerian country\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffd1d1d1),
                fontSize: 12,
                decoration: TextDecoration.underline,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 80,),
          Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  <Widget>[
                      const SizedBox(width: 20,),
                      InkWell(
                        onTap: () async{
                          await FirebaseAuth.instance.signOut();
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            loginRoute, 
                            (_) => false
                          );
                        },
                        child: Container(
                          width: 140,
                          child: Row(
                            children: const [
                              Icon(Icons.exit_to_app,
                              size: 40,
                                  color: Color.fromRGBO(255, 97, 97, 100)),
                            
                          SizedBox(width: 10.0),
                          Text(
                            "Sign Out",
                            style:
                                TextStyle(color: Color.fromRGBO(255, 97, 97, 100),fontSize: 20,fontWeight: FontWeight.bold),
                          ),],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),

        ],
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  const RadioGroup({Key? key}) : super(key: key);

  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  

  // Group Value for Radio Button.
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "patient:",
            style: TextStyle(
              color: Color(0xffb4b4b4),
              fontSize: 13,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          Radio(
            activeColor: const Color.fromRGBO(13, 190, 216, 100),
            value: 1,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                radioButtonItem = 'patient';
                id = 1;
              });
            },
          ),
          const SizedBox(
            width: 58,
          ),
          const Text(
            "docteur:",
            style: TextStyle(
              color: Color(0xffb4b4b4),
              fontSize: 13,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          Radio(
            activeColor: const Color.fromRGBO(13, 190, 216, 100),
            value: 2,
            groupValue: id,
            onChanged: (val) {
              setState(() {
                radioButtonItem = 'docteur';
                id = 2;
              });
            },
          ),
        ],
      ),
    ]);
  }
}

Future<UserCredential> register(String email, String password) async {
    FirebaseApp app = await Firebase.initializeApp(
        name: 'Secondary', options: Firebase.app().options);
        UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(email: email, password: password);
    
    await app.delete();
    return Future.sync(() => userCredential);
}