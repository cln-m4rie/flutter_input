import 'package:flutter/material.dart';
import 'package:flutter_input/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Input Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('画面遷移とボタン'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'text',
                  ),
                  onChanged: (String text) => {
                    setState(() {
                      inputText = text;
                    })
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    onPressed: inputText.isNotEmpty
                        ? () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NextPage(
                                        inputText,
                                      )),
                            )
                        : null,
                    child: const Text('クリックできるボタン'),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
