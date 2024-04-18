import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state_managements/notifier_provider_ver/notifierprovider_ver.dart';


void main() {
  runApp(const ProviderScope(child: MyApp())); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StateMangemet(title: 'Flutter Demo Home Page'),
    );
  }
}
