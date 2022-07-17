import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('page one build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('page one'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('go to page home')),
          ],
        ),
      ),
    );
  }
}
