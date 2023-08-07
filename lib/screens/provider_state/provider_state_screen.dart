import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:layouts/screens/provider_state/provider_controller.dart';
import 'package:layouts/screens/provider_state/provider_controllrt_2.dart';
import 'package:provider/provider.dart';

class ProviderStateScreen extends StatelessWidget {
  ProviderStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('build');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Number1(),
          Number2(),
          // ContentFirstProvider(),
          // ContentSecoundProvider()
          // Text('${Provider.of<ProviderController>(context).name}'),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'all',
            onPressed: () {
              context.read<ProviderController>().add();
            },
            child: const Text('All'),
          ),
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {
              context.read<ProviderController>().addTo1();
            },
            child: const Text('1'),
          ),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {
              context.read<ProviderController>().addTo2();
            },
            child: const Text('2'),
          ),
        ],
      ),
    );
  }
}

class Number1 extends StatelessWidget {
   Number1({super.key});

  @override
  Widget build(BuildContext context) {

    return Selector<ProviderController, int>(
      selector: (_, provider) => provider.number1,
      builder: (BuildContext context, number1, Widget? child) {
        log('Selector:Number1');
        return Text(
          'number1: ${number1}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 53),
        );
      },
    );
  }
}

class Number2 extends StatelessWidget {
  const Number2({super.key});

  @override
  Widget build(BuildContext context) {
    log('Selector:Number2');
    return Selector<ProviderController, int>(
      selector: (_, provider) => provider.number2,
      builder: (BuildContext context, num, Widget? child) {
        log('Selector:Number2');
        return Text(
          'number2: ${num}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 53),
        );
      },
    );
  }
}

class ContentFirstProvider extends StatelessWidget {
  const ContentFirstProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderController>(
      builder: (BuildContext context, provider, Widget? child) {
        log('build:name:ContentFirstProvider');
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${provider.name}'),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                provider.changeName();
                // Provider.of<ProviderController>(context,listen: false).changeName();
              },
              child: const Text('change name'),
            )
          ],
        );
      },
    );
  }
}

class ContentSecoundProvider extends StatelessWidget {
  const ContentSecoundProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderController2>(
      builder: (BuildContext context, provider, Widget? child) {
        log('build:name:ContentSecoundProvider');
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${provider.name2}'),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                provider.changeName2();
                // Provider.of<ProviderController>(context,listen: false).changeName();
              },
              child: const Text('change name'),
            )
          ],
        );
      },
    );
  }
}
