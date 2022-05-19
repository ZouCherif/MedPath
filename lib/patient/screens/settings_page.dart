// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:real_version/utilities/show_error_dialog.dart';
import 'navBar.dart';
import 'notifications_screen.dart';

class SettingsScreen extends StatefulWidget {
  String id;
  SettingsScreen({required this.id, Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // late final TextEditingController currentpassword;
  // late final TextEditingController newpassword;
  // late final TextEditingController newpassword2;


  //   @override
  // void initState() {
  //   currentpassword = TextEditingController();
  //   newpassword = TextEditingController();
  //   newpassword2 = TextEditingController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   currentpassword.dispose();
  //   newpassword.dispose();
  //   newpassword2.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final oneSideShadow = Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.04,
        right: size.width * 0.04,
      ),
      child: Container(
        height: 53,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.1),
              blurRadius: 26,
              offset: const Offset(
                0,
                0,
              ), // changes position of shadow
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.04),
      drawer:  NavBar(id: widget.id),
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Poppins',
            color: Color.fromARGB(156, 6, 37, 70),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.withOpacity(0.00),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const NotificationsPage()));
                },
                child: const Icon(
                  Icons.notifications,
                ),
              ))
        ],
        actionsIconTheme:
            const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.04,
          right: size.width * 0.04,
          top: 15,
        ),
        child: Stack(children: [
          oneSideShadow,
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.zero,
            child: ExpansionTileCard(
              baseColor: Colors.white,
              expandedColor: Colors.white,
              title: const Text(
                "change password",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(64, 96, 131, 100)),
              ),
              children: [
                Column(
                  children: [
                    const Text('if you want to change your password, press the button below \nyou will reseive a message at your email to reset your password',
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w500,
                       color: Color.fromRGBO(64, 96, 131, 100),
                     ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       left: size.width * 0.05, right: size.width * 0.05),
                    //   child: SizedBox(
                    //     height: 40,
                    //     width: size.width * 0.85,
                    //     child: TextFormField(
                    //       controller: currentpassword,
                    //       decoration: const InputDecoration(
                    //           enabledBorder: OutlineInputBorder(
                    //               borderSide: BorderSide(
                    //                   color: Color.fromRGBO(209, 209, 209, 100),
                    //                   width: 1),
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(15.0))),
                    //           focusedBorder: OutlineInputBorder(
                    //               borderSide: BorderSide(
                    //                   color: Color(0xff0dbed8), width: 2),
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(15.0))),
                    //           labelText: 'Email',
                    //           labelStyle: TextStyle(
                    //               color: Color.fromRGBO(209, 209, 209, 100))),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 8,
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       left: size.width * 0.05, right: size.width * 0.05),
                    //   child: SizedBox(
                    //     height: 40,
                    //     width: size.width * 0.85,
                    //     child: TextFormField(
                    //       controller: newpassword,
                    //       decoration: const InputDecoration(
                    //           enabledBorder: OutlineInputBorder(
                    //               borderSide: BorderSide(
                    //                   color: Color.fromRGBO(209, 209, 209, 100),
                    //                   width: 1),
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(15.0))),
                    //           focusedBorder: OutlineInputBorder(
                    //               borderSide: BorderSide(
                    //                   color: Color(0xff0dbed8), width: 2),
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(15.0))),
                    //           labelText: 'nouveau mot de passe',
                    //           labelStyle: TextStyle(
                    //               color: Color.fromRGBO(209, 209, 209, 100))),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 8,
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       left: size.width * 0.05, right: size.width * 0.05),
                    //   child: SizedBox(
                    //     height: 40,
                    //     width: size.width * 0.85,
                    //     child: TextFormField(
                    //       controller: newpassword2,
                    //       decoration: const InputDecoration(
                    //           enabledBorder: OutlineInputBorder(
                    //               borderSide: BorderSide(
                    //                   color: Color.fromRGBO(209, 209, 209, 100),
                    //                   width: 1),
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(15.0))),
                    //           focusedBorder: OutlineInputBorder(
                    //               borderSide: BorderSide(
                    //                   color: Color(0xff0dbed8), width: 2),
                    //               borderRadius:
                    //                   BorderRadius.all(Radius.circular(15.0))),
                    //           labelText: 'confirmer le nouveau mot de passe',
                    //           labelStyle: TextStyle(
                    //               color: Color.fromRGBO(209, 209, 209, 100))),
                    //     ),
                    //   ),
                    // ),
                    // const SizedBox(height: 15),
                    TextButton(onPressed:() async{
                      try{
                        final useremail = FirebaseAuth.instance.currentUser!.email ?? 'error';
                        await FirebaseAuth.instance.sendPasswordResetEmail(email: useremail);
                      }catch (e){
                        showErrorDialog(context, 'Error: ay ay ay');
                      }
                    },
                    child: const Text('send')),
                  ],
                  
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
