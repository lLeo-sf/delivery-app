import 'package:flutter/material.dart';

import 'widgets/top.dart';



class Onde_estamos extends StatelessWidget{

  @override 
   Widget build(BuildContext context){
     return Scaffold(
       drawer: SideMenu(),
       body: SingleChildScrollView(
         child: Column(
           children: [
             Top(title: 'Onde estamos'),
             into,
             rss
           ],
         ),
       ),
     );
     
   }
   
}



Widget into = Container(
  margin: EdgeInsets.only(top: 50),
  child: Column(
    children: [
      Text('Venha nos visitar', style: TextStyle(
        fontSize: 28,
      )),
      Container(
        margin: EdgeInsets.only(top: 40),
        width: double.maxFinite,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tmp_map.png'),
            fit: BoxFit.cover,
          )
        ),
      ),
    ],
  ),
);

Widget rss = Container(
  width: double.maxFinite - 100,
  height: 100,
  margin: EdgeInsets.only(top: 20),
  child: Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/facebook.png'),
                    fit: BoxFit.cover,
                    
                  )
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/whatsapp.png'),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/instagram-sketched.png'),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
);