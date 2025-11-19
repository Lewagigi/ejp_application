import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: const MyHomePage(title: 'Église Jeunes Prodiges'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 👉 Voici ton widget ajouté (avec texte en gras et grand)
  Widget customContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(57.0),
      alignment: Alignment.center,
      child: const Text(
        'Bienvenue dans ton application Prodige !',
        style: TextStyle(
          fontSize: 54, // texte plus grand
          fontWeight: FontWeight.bold, // texte en gras
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            // 👉 Appel du widget que tu voulais ajouter
            customContent(context),
          ],
        ),
      ),
    );
  }
}
