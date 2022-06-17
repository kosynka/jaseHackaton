import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:janakz/game4/game4.dart';
import 'game4/game4QuestionBrain.dart';
import 'game4/game4question.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('ru', ''),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Game4(),
    );
  }
}

class AppLocalizations {
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    List<String> univers = [
      'KSTU',
      'KSsdf',
      'sdf',
      'sdf',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView.builder(
        itemCount: univers.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: Icon(Icons.list),
            trailing: const Text("KSTU", style: TextStyle(color: Colors.green, fontSize: 15)),
            title:Text(univers[index],)
            );
        }
      ),
    
    );
  }
}
