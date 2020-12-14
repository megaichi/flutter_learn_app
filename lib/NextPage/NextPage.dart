import 'package:flutter/material.dart';
import 'package:learn_app/NextPage/NextPage.dart';

class NextPage extends StatelessWidget {
  final String name;
  NextPage(this.name);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yaa!'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
              child: RaisedButton(
                child: Text('戻る'),
                onPressed: () {
                  Navigator.pop(context, 'カキクケコ');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}