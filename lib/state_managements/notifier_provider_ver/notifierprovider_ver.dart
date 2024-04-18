import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'example.dart';

class StateMangemet extends ConsumerWidget {
  StateMangemet({super.key, required this.title});
  final String title; 

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final  example = ref.watch(exampleNotifierProvider);
    final notifier = ref.read(exampleNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${example}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => notifier.countUp(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}