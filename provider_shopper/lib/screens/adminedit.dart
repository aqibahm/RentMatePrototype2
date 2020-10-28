// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

String newName = '';
String currentName = '';
List<String> litems = <String>['Tesla Model S',
    'Tesla Model 3',
    'Tesla Model X',
    'Tesla Model Y',
    'Faraday Future',
    'Hummer EV',
    'Porsche Taycan',
    'Tesla Roadster 2020',
    'Tesla Cybertruck',
    'Audi E-Tron',
    'BMW i3',
    'Hyundai Ioniq Electric',
    'Hyunday Kona Electric',
    'Jaguar I-Pace',];
final TextEditingController eCtrl = new TextEditingController();

//Function which shows Alert Dialog
  void alertDialog(BuildContext context) {
  // This is the ok button
  Widget ok = FlatButton(
    child: Text('Submit'),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop('dialog');
      },
  ); 
  // show the alert dialog
  showDialog<String>(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: Text('Enter new name for entry'),
    content: new TextField(
      controller: eCtrl,
      onSubmitted: (text) {
        newName = text;
      },
  ),
    actions: [
      ok,
    ],
    elevation: 5,
    
  );
    },
  );

}


class AdminEdit extends StatefulWidget {
  @override 
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<AdminEdit>{
  @override 

  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListDisplay(),);
  }
}

class ListDisplay extends StatefulWidget{
  @override
  _State createState() => _State();
}

class _State extends State<ListDisplay>{
  

  

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Edit Screen'),
        actions: [
          IconButton(
          icon: Icon(Icons.add_box),
          onPressed: null,
        ),
        SizedBox(
          width: 50,)
        ],
        ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: litems.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 50,
            margin: EdgeInsets.all(2),
            child: Center(
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      litems[index],
                    ),
                    FlatButton(
                      child: Text('EDIT'),
                      onPressed: (){
                        currentName = litems[index];
                        alertDialog(context);
                        if(newName != ''){
                          litems.remove(currentName);
                          litems.add(newName);
                        }
                        
                        setState(() {});
                      },
                      ),
                    FlatButton(
                      child: Text('DELETE'),
                      onPressed: (){
                        litems.remove(litems[index]);
                        setState((){});
                      },
                    ),
                  ],
                ),
              ),));   
        }),
    );
  } 
  
}
