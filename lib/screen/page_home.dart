import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('page home build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('page home'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.go('/page1');
                },
                child: const Text('go to page one')),
            ElevatedButton(
                onPressed: () {
                  context.go('/page2');
                },
                child: const Text('go to page two')),
          ],
        ),
      ),
    );
  }
}
