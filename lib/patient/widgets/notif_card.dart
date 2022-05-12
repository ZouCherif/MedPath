// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../models/notifcation.dart';

class NotifCard extends StatelessWidget {
  final String docName;
  final String text;
  final String btnText;

  NotifCard(this.docName, this.text, this.btnText);
  @override
  var color = const Color(0xff0dbed8);
  Widget build(BuildContext context) {
    return Container(
      height: 89,
      child: Column(children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(width: 75.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  docName,
                  style: const TextStyle(
                    color: Color.fromRGBO(85, 130, 139, 100),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(
                    color: Color.fromRGBO(196, 196, 196, 100),
                    fontSize: 13.0,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 55,
            ),
            Container(
              width: 94,
              height: 35,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shadowColor: color,
                    elevation: 0,
                    primary: color,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),

                //MaterialStateProperty.all<RoundedRectangleBorder>(
                //RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(25.0),

                onPressed: () {},
                label: Text(
                  btnText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Poppins",
                  ),
                ),
                icon: const Icon(
                  Icons.check_outlined,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 23.5,
        ),
        Container(
          width: 196,
          height: 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffe9e9e9),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ]),
    );
  }
}
