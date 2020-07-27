import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:learn/api/getItems.dart';

import '../api/getItems.dart';

import '../widgets/top.dart';
import '../showItem.dart';

List<GetItems> _allLanches;


Future<List<GetItems>> _getLanches() async {

  List<GetItems> listLanches = List();

  final response = await http.get('http://192.168.1.145/crud/index.php?action=getCat&cat=lanche');

  if(response.statusCode == 200){

    var decodeJson = jsonDecode(response.body);

    decodeJson.forEach((items) => listLanches.add(GetItems.fromJson(items)));

    return listLanches;

  }else{
    print('error');
  }

} 

class Lanches extends StatefulWidget {
  @override
  _LanchesState createState() => _LanchesState();
}

class _LanchesState extends State<Lanches> {

  void initState(){
    super.initState();
    _getLanches().then((map) {
      _allLanches = map;
    });
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _getLanches(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            return CircularProgressIndicator();
          }else{
            return Scaffold(
              drawer: SideMenu(),
              body: Column(
                children: [
                  Top(title: 'Lanches'),
                  Expanded(
                      child: ListView.builder(
                      itemCount: _allLanches.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xffeb7181),
                          ),
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => ShowItem(id: _allLanches[index].id))
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 200,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                        image: AssetImage('assets/img/' + _allLanches[index].imagens),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                      
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 10, left: 10),
                                          width: 150,
                                          height: 50,
                                          child: Text(_allLanches[index].nome, style: TextStyle(
                                            fontSize: 28,
                                            color: Colors.white
                                          
                                          ), 
                                          textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          width: 150,
                                          height: 25,
                                          alignment: Alignment.bottomLeft,
                                          child: Text(_allLanches[index].status == "1" ? "Disponivel" : 'Indisponivel', style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white
                                          ),)
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10, left: 10),
                                          width: 200,
                                          height: 35,
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(left: 20),
                                                child: Text('R\$' + _allLanches[index].preco + ",00", style: TextStyle(
                                                  fontSize: 26,
                                                  color: Colors.white
                                                ),)
                                              ),
                                              Spacer(),
                                              IconButton(
                                                onPressed: (){
                                                  Navigator.push(
                                                    context, MaterialPageRoute(builder: (context) => ShowItem(id: _allLanches[index].id))
                                                  );
                                                },
                                                icon: Icon(Icons.favorite),
                                                alignment: Alignment.centerRight,
                                                color: Colors.white
                                              )
                                            ],

                                          ),
                                        ),

                                      ],
                                    ),
                                    
                                  ],
                                ),
            
                              ),
                          )
                        );
                      },
                    ),
                  ),
                ],
              ),      
            );
          }
        }

    );
    
  }

 

  
}
