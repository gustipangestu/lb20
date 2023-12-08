

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lb20/providers/provider.dart';
import 'package:lb20/screens/camera_page.dart';
import 'package:lb20/screens/home_Page.dart';
import 'package:lb20/screens/second_page.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CameraProvider();
  
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AppsProvider()),
      ChangeNotifierProvider(create: (_) => CameraProvider())
    ],
    child: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  
  Myapp({super.key});
  

  final GoRouter _router = GoRouter(routes: [
    GoRoute(path: "/", builder: (context, state) => const HomePage()),
    GoRoute(
        path: "/secondPage", builder: (context, state) => const SecondPage()),
   
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "MyApp Test",
      theme: ThemeData(primarySwatch: Colors.amber),
      routerConfig: _router,
    );
  }
}
