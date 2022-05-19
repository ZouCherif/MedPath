import 'dart:developer';
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/visit_card.dart';
import 'navBar.dart';
import 'notifications_screen.dart';


// ignore: must_be_immutable
class VisitScreen extends StatefulWidget {
  String id;
   VisitScreen({required this.id, Key? key}) : super(key: key);

  @override
  State<VisitScreen> createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {
  final id = FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer:  NavBar(id:widget.id),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
          centerTitle: true,
          title: const Text(
            'Visites Medicals',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Poppins',
              color: Color.fromARGB(156, 6, 37, 70),
              fontWeight: FontWeight.bold,
            ),
          ),
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
        extendBodyBehindAppBar: true,
      body :StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('users/$id/Visites medicales')
              .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (ctx, index) => VisitCard( 
                fullName: streamSnapshot.data!.docs[index]['full name'], 
                date: streamSnapshot.data!.docs[index]['time'], 
                rapport: streamSnapshot.data!.docs[index]['rapport'], 
                specialite: streamSnapshot.data!.docs[index]['specialite'], 
                imageUrl: '', 
                localisation: '', ),
                  // Text(streamSnapshot.data!.docs[index]['rapport']),
            );
          },
  ));
  }
}


