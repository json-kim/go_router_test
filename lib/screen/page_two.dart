import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('page two build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('page two'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.go('/');
                },
                child: const Text('go to page home')),
            ElevatedButton(
                onPressed: () {
                  context.go('/page1');
                },
                child: const Text('go to page one')),
          ],
        ),
      ),
    );
  }
}
