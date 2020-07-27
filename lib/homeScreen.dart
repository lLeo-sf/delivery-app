import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'showItem.dart';
import 'api/getItems.dart';
import 'widgets/top.dart';


 
List<GetItems> _maisVendidos;

Future<List<GetItems>> _getMaisVendidos() async{

  List<GetItems> listMaisVendidos = List();

  final response = await http.get('http://192.168.1.145/crud/index.php?action=getItems');

  if(response.statusCode == 200){
    var decodeJson = jsonDecode(response.body);
    decodeJson.forEach((item) => listMaisVendidos.add(GetItems.fromJson(item)));
    return listMaisVendidos;
  }else{
    print('error connection');
  }

}


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    void initState() {
      super.initState();
      _getMaisVendidos().then((map) {
        _maisVendidos = map;   
      });
    }
  
    @override 
    Widget build(BuildContext context){
      return Scaffold(
        drawer: SideMenu(),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: new Column(
            children: [
              Top(title: 'FoodApp'),
              Container(
                color: Color(0xffFAF9F9),
                child: Column(
                    children: [
                      form,
                      Item(),
                      Item()

                    ],
                  ),
              ),
              
            ],
          ),
        )
      );
    }
}




  Widget form = Container(
    width: 350,
    margin: const EdgeInsets.only(top: 30),
    decoration: BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(25)), 
      //  color: Color(0xfff84f52),
      color: Color(0xffeb7181).withOpacity(1),
    ),
    child: TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.search, color: Colors.white,),
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white),
        hintText: 'Oque você quer comer hoje?',
        contentPadding: const EdgeInsets.all(20),
        
      ),
    ),
  );

  

  class Item extends StatelessWidget{
    Widget build(BuildContext context){
      return FutureBuilder(
        future: _getMaisVendidos(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            return CircularProgressIndicator();
          }else{
            return CarouselSlider.builder(
              
              options: CarouselOptions(
                height: 420,
                enableInfiniteScroll: false,
              ),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShowItem(id: _maisVendidos[index].id)));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 350,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1F3),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow:  [BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 1,
                            blurRadius: 12,
                            offset: Offset(3,0),
                          )],
                        ),
                        margin: EdgeInsets.only(left: 30, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 180,
                              margin: EdgeInsets.only(top: 10, left: 10, right: 10),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                
                                image: DecorationImage(
                                image: AssetImage('assets/img/' + _maisVendidos[index].imagens),
                                fit: BoxFit.fill,              
                              ),
                              ),                            
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 14),
                              child: Text(_maisVendidos[index].nome, style: TextStyle(
                                fontSize: 30,
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 11),
                              child: Text(_maisVendidos[index].status == '1' ? 'Disponível' : 'Indiponível', style: TextStyle(
                                fontSize: 16,
                               

                              )),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 19),
                                  child: Text('R\$ ' +  _maisVendidos[index].preco + ',00', style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(right: 30),
                                  child: Row(
                                    children: [
                                      Icon(Icons.credit_card, color: Color(0xffeb7181),),
                                      Icon(Icons.card_giftcard, color: Color(0xffeb7181),),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                         
                        )
                      ),
                    ],
                  ),
                );
              },
            );
          }
        }
          
      );
    }
  }

