// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/gradient.png'), fit: BoxFit.cover),
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

                FlatButton(
                  child: Text('User Log In'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/userlogin');
                  },
                ),

                SizedBox(
                width: 50.0,
              ),

                FlatButton(
                  child: Text('Admin Log In'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/adminlogin');
                  },
                ),
                SizedBox(
                width: 40.0,
              ),

                FlatButton(
                  child: Text('Create Account'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                )
              ],
            ),
            ]),
        ),
      ),
    );
  }
}
