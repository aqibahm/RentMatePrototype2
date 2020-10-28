// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';

String newName = '';
String currentName = '';
final List<List<String>> litems = <List<String>>[['21/01/2020', 'Tesla', 'Model S', 'Andrew Greene', '120'], 
['21/01/2020', 'Tesla', 'Model S', 'Andrew Greene', '120'], 
['21/01/2020', 'Tesla', 'Model S', 'Andrew Greene', '120'], 
['21/01/2020', 'Tesla', 'Model S', 'Andrew Greene', '120'], 
['21/01/2020', 'Tesla', 'Model S', 'Andrew Greene', '120'], 
['21/01/2020', 'Tesla', 'Model S', 'Andrew Greene', '120'],
['Total', '', '', '', '600']
];
final TextEditingController eCtrl = new TextEditingController();




class AdminGenerateReports extends StatefulWidget {
  @override 
  _AdminGenerateReports createState() => _AdminGenerateReports();
}

class _AdminGenerateReports extends State<AdminGenerateReports>{
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
        title: const Text('All Sales at Harrisburg, PA location'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: litems.length,
        itemBuilder: (BuildContext context, int index){

          if(index == 0){
            return Container(
              height: 50,
            margin: EdgeInsets.all(2),
            child: Center(
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Process Date',
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    SizedBox(
                      width: 40,),
                  Text(
                      'Car Brand' ,
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    SizedBox(
                      width: 40,),
          
                  Text(
                      'Car Model',
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    SizedBox(
                      width: 40,),
                
                  Text(
                      'Employee',
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    SizedBox(
                      width: 40,),
                  Text(
                      'Price',
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    SizedBox(
                      width: 40,),
                  ],
                ),
              ),));   
            
          }


          index -= 1;
          
          return Container(
            height: 50,
            margin: EdgeInsets.all(2),
            child: Center(
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      litems[index][0],
                    ),
                    SizedBox(
                      width: 40,),
                  Text(
                      litems[index][1],
                    ),
                    SizedBox(
                      width: 40,),
          
                  Text(
                      litems[index][2],
                    ),
                    SizedBox(
                      width: 40,),
                
                  Text(
                      litems[index][3],
                    ),
                    SizedBox(
                      width: 40,),
                  Text(
                      litems[index][4],
                    ),
                    SizedBox(
                      width: 40,),
                  ],
                ),
              ),));   
        }),
    );
  } 
  
}
