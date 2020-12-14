import 'package:flutter/material.dart';
import 'package:learn_app/Provider/ProvMain_model.dart';
import 'package:provider/provider.dart';

class ProvMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<ProvModel>(
        create: (_) => ProvModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('コリアンダー'),
          ),
          body: Consumer<ProvModel>(
            builder: (context, model, snapshot) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.provText,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: () {
                        model.changeprovText();
                      },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
