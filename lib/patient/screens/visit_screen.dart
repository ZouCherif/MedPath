import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/visit_card.dart';
import 'navBar.dart';
import 'notifications_screen.dart';


// ignore: must_be_immutable
class VisitScreen extends StatelessWidget {
  String id;
   VisitScreen({required this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        drawer:  NavBar(id:id),
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
        body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users/$id/visites medicales')
            .snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (ctx, index) => Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.01),
              child: VisitCard(
                fullName: snapshot.data!.docs[index].data()['nom'],
                datee: snapshot.data!.docs[index].data()['date'],
                specialite: snapshot.data!.docs[index].data()['specialite'],
                rapport: snapshot.data!.docs[index].data()['rapport'],
                localisation: snapshot.data!.docs[index].data()['localisation'],
                imageUrl: snapshot.data!.docs[index].data()['imageUrl'],
                snapshot: snapshot,
              ),
            ),
          );
        },
      ),);
  }
}
