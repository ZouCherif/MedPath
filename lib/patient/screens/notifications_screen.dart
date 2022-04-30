import 'package:flutter/material.dart';
import 'package:real_version/patient/widgets/notif_card.dart';

import '../widgets/app_data.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Poppins',
            color: Color.fromARGB(156, 6, 37, 70),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.withOpacity(0.00),
      ),
      body: InkWell(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 450,
              childAspectRatio: 7 / 8,
              mainAxisExtent: 140.5),
          children: notif_data
              .map((notif_data) => NotifCard(
                    notif_data.docName,
                    notif_data.text,
                    notif_data.btnText,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
