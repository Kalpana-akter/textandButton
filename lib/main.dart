import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              RaisedButton(
                onPressed: (){},
                child: Text('R.button'),
                color: Colors.cyan,
                textColor: Colors.black,
              ),
              OutlineButton(
                onPressed: (){},
                child: Text('OutlinedButton'),
                textColor: Colors.black,
                color: Colors.amber,
              ),
              FlatButton(
                child: Text('FlatButton'),
                onPressed: (){},
                color: Colors.lightGreen,
                textColor: Colors.black,
              ),
            ],
          ),
          Switch(
            onChanged: (IsEnable){},
            value: true,
          ),
          Slider(
            onChanged: (value){},
            value: 28,
            min: 1,
            max: 100,
          ),
          Image(
            image: NetworkImage("https://img.freepik.com/free-vector/color-wing-transparent-set_1284-8933.jpg?size=626&ext=jpg"),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'type your name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'email',
                hintText: 'type your email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'type your password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.home),
      ),
    );
  }
}

