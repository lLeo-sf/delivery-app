import 'package:flutter/material.dart';
import '../homeScreen.dart';
import '../cardapio.dart';
import '../onde_estamos.dart';
import '../contato.dart';




class Top extends StatefulWidget{

  final String title;

  Top({this.title});

  @override
  _TopState createState() => _TopState();
  
  
}

class _TopState extends State<Top> {
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Color(0xffeb7181),  
      leading: IconButton(
        onPressed: (){
        },
        icon: Icon(Icons.menu),
      ),
      title: Text(widget.title),
      actions: [
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.call),
        ),
      ],     
    );
  }
}


class SideMenu extends StatelessWidget{
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text('Food', style: TextStyle(
                color: Colors.white,
                fontSize: 28,

              ),),
            ),
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: AssetImage('assets/img/x.jpg'), fit: BoxFit.cover,
              
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.restaurant_menu),
            title: Text('Cardápio'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cardapio())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Onde estamos'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Onde_estamos())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Contato'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Contato())
              );
            },
          ),
        ],
      ),
    );
  }
}