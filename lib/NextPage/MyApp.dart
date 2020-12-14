import 'package:flutter/material.dart';
import 'package:learn_app/Nextpage/NextPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = 'つぎへ';
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetSwhich() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('一画面'),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          children: <Widget>[
            Text('ボタンで数をカウント調整できます'),
            Text('ボタンで数をカウント調整できます'),
            RaisedButton(
              child: Text(text),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage('あいうえお'),
                  ),
                );
                setState(() {
                  text = result;
                });
                print(result);
              },
            ),
          ],
        ),
      ),
      // floatingActionButton: Column(
      //   verticalDirection: VerticalDirection.up,
      //   mainAxisSize: MainAxisSize.min,
      //   children: <Widget>[
      //     FloatingActionButton(
      //       heroTag: "btn2",
      //       onPressed: _incrementCounter,
      //       tooltip: 'Increment',
      //       child: Icon(Icons.add),
      //     ),
      //     FloatingActionButton(
      //       onPressed: _decrementCounter,
      //       tooltip: 'decrement',
      //       child: Icon(Icons.minimize),
      //     ),
      //     FloatingActionButton(
      //       onPressed: _resetSwhich,
      //       tooltip: 'resetSwhich',
      //       child: Icon(Icons.reset_tv),
      //     ),
      //   ],
      // ),
    );
  }
}

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('一画面'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('つぎへ'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/next');
//           },
//         ),
//         // Text(
//         //   'ボタンで数をカウント調整できます',
//         // ),
//         // Text(
//         //   '$_counter',
//         //   style: Theme.of(context).textTheme.headline4,
//         // ),
//       ),
//     );
//     // floatingActionButton: Column(
//     //   verticalDirection: VerticalDirection.up,
//     //   mainAxisSize: MainAxisSize.min,
//     //   children: <Widget>[
//     //     FloatingActionButton(
//     //       heroTag: "btn2",
//     //       onPressed: _incrementCounter,
//     //       tooltip: 'Increment',
//     //       child: Icon(Icons.add),
//     //     ),
//     //     FloatingActionButton(
//     //       onPressed: _decrementCounter,
//     //       tooltip: 'decrement',
//     //       child: Icon(Icons.minimize),
//     //     ),
//     //     FloatingActionButton(
//     //       onPressed: _resetSwhich,
//     //       tooltip: 'resetSwhich',
//     //       child: Icon(Icons.reset_tv),
//     //     ),
//     //   ],
//     // ),
//   }
// }