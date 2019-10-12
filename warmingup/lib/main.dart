import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //상태가 안변하는 위젯 state less 에서 알아볼 수 있다.
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HelloPage('헬로 월드 stateless'));
  }
}

//StatefullWiget을 만들면 된다.

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
} //이부분은 건드릴 필요가 없다.

class _HelloPageState extends State<HelloPage> {
  String _message = '이건 초기값이야!';
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: _changeMessage),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_message,style: TextStyle(fontSize: 30)),
              Text('$counter',style: TextStyle(fontSize: 30)),
            ],
          )
      ),
    );
  }

  void _changeMessage() {
    setState(() {
      if(counter%2==0){
      _message = 'hello world';}
      else{
        _message='내가 다시 돌아왔다.';
      }
      counter++;
    });
  }
}
