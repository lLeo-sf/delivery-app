import 'package:flutter/material.dart';

import 'cardapio/lanches.dart';
import 'cardapio/pizzas.dart';

import 'widgets/top.dart';



class Cardapio extends StatelessWidget{
  
  @override 

  Widget build(BuildContext context){
    return Scaffold(
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            new Column(
              children: [
                Top(title: 'Cardápio'),
                Pizza(),
                Lanche(),
                Bebida(),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
  

}

class Pizza extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => Lanches())
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffeb7181), 
          borderRadius: BorderRadius.circular(20),
          boxShadow:  [BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 12,
            offset: Offset(3,0),
          )],
        ),
        margin: EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
        width: 350,
        height: 160,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage('assets/icons/pizza.png'),
                  height: 75,
                  width: 175,
                  color: Colors.white,
                ),
              ),
            ),
            Text('Pizzas', style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              
            )),
          ],
        ),  
      ),
    ); 
  }
}



class Lanche extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => Lanches())
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffeb7181), 
          borderRadius: BorderRadius.circular(20),
          boxShadow:  [BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 12,
            offset: Offset(3,0),
          )],
        ),
        margin: EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
        width: 350,
        height: 160,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage('assets/icons/burguer.png'),
                  height: 75,
                  width: 175,
                  color: Colors.white,
                ),
              ),
            ),
            Text('Lanches', style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              
            )),
          ],
        ),  
      ),
    ); 
  }
}



class Bebida extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffeb7181),
        borderRadius: BorderRadius.circular(20),
        boxShadow:  [BoxShadow(
          color: Colors.grey.withOpacity(0.7),
          spreadRadius: 1,
          blurRadius: 12,
          offset: Offset(3,0),
        )],
      ),
      margin: EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10),
      width: 350,
      height: 160,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage('assets/icons/alcool.png'),
                height: 75,
                width: 175,
                color: Colors.white,
              ),
            ),
          ),
          Text('Bebidas', style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            
          )),
        ],
      ),  
    );
  }
}
