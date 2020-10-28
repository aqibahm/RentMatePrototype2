// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AdminLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/gradient.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children:[

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'RentMate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),

                SizedBox(
                width: 150.0,
              ),

              Text(
                  'Admin View',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontStyle: FontStyle.italic),
                ),

                SizedBox(
                width: 150.0,
              ),

                FlatButton(
                  child: Text('Modify entries'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/adminedit');
                  },
                ),

                SizedBox(
                width: 50.0,
              ),

                FlatButton(
                  child: Text('Generate Reports'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/admingeneratereports');
                  },
                ),
              ],
            ),
            ]),
        ),
      ),
    );
  }
}
