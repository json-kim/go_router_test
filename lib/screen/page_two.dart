import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('page two build');

    return Scaffold(
      appBar: AppBar(
        title: Text(GoRouter.of(context).location),
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
