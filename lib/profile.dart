import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'colors_n_fonts.dart';
import 'food.dart';

class Profile{
  //User info
  String name = "User Name";
  List<String> foodTypes = [];
  String pathToPicture = "";

  //Constructor
  Profile(this.name, this.foodTypes, this.pathToPicture);

  //Public methods
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _profileHeader(),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  _profileBasics(),
                  _optionsButtons(),
                ],
              ),
            ),
          )

        ],
      )
    );
  }

  //Private methods
  //Layout related

  //Profile header and related
  Widget _profileHeader(){
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
      child: Text(this.name, style: TextStyle( fontSize: 30), textAlign: TextAlign.center),
    );
  }

  //Profile basics and related
  Widget _profileBasics(){
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          _profilePic(),
          Expanded(child: _foodTypesColumn(),)
        ],
      ),
    );
  }


  Widget _foodTypesColumn(){
    List<Widget> printList =[];
    for(var i=0;i<this.foodTypes.length; i++){
      printList.add(Text(this.foodTypes[i], textAlign: TextAlign.left,));
      printList.add(
          Divider(
        color: Template.color1,
        thickness: 1,

      ));
    }

    return Column(
      children: printList,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }

  Widget _profilePic(){
    return Icon(Icons.person,
        size: 90);
  }

  //Options
  Widget _optionsButtons(){
    return Container(
      child: Card(
        color: Template.color1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.person),
              Icon(Icons.message),
              Icon(Icons.info),
              Icon(Icons.fastfood)
            ],
          ),
        ),
      ),
    );
  }
}