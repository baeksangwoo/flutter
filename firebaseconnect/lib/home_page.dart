import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Instagram Clon')
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('인스타그램에 오신 것을 환영합니다.',style: TextStyle(fontSize: 20)),
              Text('사진과 동영상을 보시려면 팔로우 하세요!'),
              Padding(padding: EdgeInsets.all(20),),
              SizedBox(
                width: MediaQuery.of(context).size.width/5*4,
                child: Card(
                  elevation: 6,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 180,
                        height: 180,
                        child:  CircleAvatar(
                          backgroundImage: NetworkImage(user.photoUrl),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10),),
                      Text(user.email),
                      Text(user.displayName),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network('https://picsum.photos/200',fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.all(10),),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network('https://picsum.photos/200',fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.all(10),),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network('https://picsum.photos/200',fit: BoxFit.cover,),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(20),),
                      RaisedButton(
                        child: Text('팔로우'),
                        onPressed: (){},
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
