import 'package:flutter/material.dart';

import 'widgets/top.dart';



class Contato extends StatelessWidget {

  @override 
   Widget build(BuildContext context){
     return Scaffold(
       
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Top(title: 'Contato'),
            form

          ],
        ),
      )

     );
   }

}


Widget form = Container(
  width: double.maxFinite,
  height: 400,
  margin: EdgeInsets.only(top: 100),
  child: Column(
    children: [
      Container(
        width: double.maxFinite - (100),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Color(0xffeb7181),
        ),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.person , color: Colors.white,),
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
            hintText: 'Nome',
            contentPadding: const EdgeInsets.only(left: 20, top: 15),
            
          ),
        ),

      ),
      Container(
        width: double.maxFinite - (100),
        height: 200,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Color(0xffeb7181),
        ),
        child: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.message , color: Colors.white,),
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
            hintText: 'Mensagem',
            contentPadding: const EdgeInsets.only(left: 20, top: 15),
          ),
        ),

      ),
      Container(
        width: double.maxFinite - (100),
        height: 50,
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Color(0xffeb7181),
        ),
        child: IconButton(
          icon: Icon(Icons.send),
          onPressed: (){},
        ),
      ),
    ],
  ),
);