import 'package:flutter/material.dart';
import 'package:lb20/providers/provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 2'),

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('${context.watch<AppsProvider>().count}')
          ],
        ),
      ),
    );
  }
}