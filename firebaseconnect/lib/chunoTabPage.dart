import 'package:firebaseconnect/BottomNavigationBarProvider.dart';
import 'package:firebaseconnect/page1.dart';
import 'package:firebaseconnect/page2.dart';
import 'package:firebaseconnect/page3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChunoTabPage extends StatelessWidget {


  final List<Tab> _myTabs = <Tab>[
      Tab(text: '메인페이지',icon: Icon(Icons.zoom_out_map),),
      Tab(text: 'Middle',),
      Tab(text: 'Right',),
  ];
  List _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<BottomNavigationBarProvider>(context);
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
           appBar: AppBar(
             title: Text('추노 첫 페이지'),
             bottom: TabBar(
               tabs: _myTabs,
             ),
           ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _provider.currentIdx,
            onTap: (idx){
              _provider.currentIdx =idx;
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home')
              ),BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                title: Text('Mail')
              ),BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                title: Text('Profile')
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              _pages[_provider.currentIdx],
              _pages[_provider.currentIdx],
              _pages[_provider.currentIdx],
            ],
          )
          //_pages[_provider.currentIdx],
          ),
        ),
    );
  }
}
