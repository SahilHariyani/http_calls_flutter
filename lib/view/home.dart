import 'package:api_calls/controller/get_data_from_server.dart';
import 'package:api_calls/model/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello App'),
        ),
        body: Container(
          child: Center(
              child: FutureBuilder<DataModel>(
            future: GetRequest().getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.msg);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
        ));
  }
}
