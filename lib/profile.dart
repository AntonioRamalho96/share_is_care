import 'package:flutter/material.dart';
import 'colors_n_fonts.dart';

class Profile{
  //User info
  String name = "User Name";
  List<String> foodTypes = [];
  String pathToPicture = "";

  //Returns scafold showing user profile
  Scaffold returnScafold(){
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Profile"),
        backgroundColor: Template.color1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _profileColumn(),
              _foodTypesColumn()
            ],
          ),
          Text("I'm using shareIsCare!")
        ],
      )
    );
  }

  //Private method
  Widget _foodTypesColumn(){
    List<Widget> printList =[];
    for(var i=0;i<this.foodTypes.length; i++){
      printList.add(Text(this.foodTypes[i]));
      printList.add(
          Divider(
        color: Template.color1,
        thickness: 1,

      ));
    }

    return Container(
      width: 90,
      child: Column(
        children: printList,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
      ),
    );
  }

  Column _profileColumn(){
    return Column(
      children: <Widget>[
        Icon(Icons.person,
        size: 90),
        Text(this.name)
      ],
    );
  }
  //Constructor
  Profile(this.name, this.foodTypes, this.pathToPicture);
}