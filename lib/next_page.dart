import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.inputValue);
  final String inputValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('２ページ目'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(inputValue),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('戻る'),
              )
            ]),
      ),
    );
  }
}
