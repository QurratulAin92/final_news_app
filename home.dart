
import 'package:flutter/material.dart';
import 'package:news_app/categories.dart';
import 'package:news_app/news.dart';
import 'package:news_app/profile.dart';
import 'package:news_app/register.dart';





class Home extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
    return
    MaterialApp(
          home: Column(
           children: [
       SingleChildScrollView(
              child: Container(
                      width: 700,
                     height: 60,
                 
                  child: Text("News Application",
                 style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 40)),
                 
                 color:Colors.indigo[900]),
       ),
              //Image.network("https://tpc.googlesyndication.com/simgad/16386992032807688434?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qmIeLl28sQHmYiOPNaBlZh9Oh_SmA"),
             SizedBox(height: 10),
             Expanded(
                child: DefaultTabController(length: 4,child: Scaffold(
        appBar: AppBar(
          
          
          backgroundColor: Colors.amber,
          title: Container(
               
              child: SingleChildScrollView(
                  
                  child: TabBar(
                     
                  indicatorColor: Colors.white,
                  tabs:[
                   Tab(child: Text("Popular News"),),
                   Tab(child: Text("News By Categories"),),
                   Tab(child: Text("Signup"),),
                   Tab(child: Text("Profile"),),

                   
                ]),
              ),
            )
        ),
        body: Column(
          
          children: [
            Container(
          
              child: TabBarView(
               
                children:[
                News(),
                Categories(),
                Register(),
                Profile(),
              ]),
            ),
       




          ],
        ),
      )),
             ),
           ],
         ),
    );
    
  }}