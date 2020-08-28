import 'package:flutter/material.dart';
import 'package:extensions/extensions.dart';
import 'package:increment_counter_package/increment_counter_package.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobx Examples')),
      body: ListView(
        children: [
          _buildFeatureOptions(
            featureName: 'Increment counter',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<IncrementCounterPage>(
                    builder: (context) =>
                        const IncrementCounterPage(title: 'Increment counter')),
              );
            },
          ),
          _buildFeatureOptions(featureName: 'Input name', onTap: () {}),
        ],
      ),
    );
  }

  Widget _buildFeatureOptions({
    @required String featureName,
    @required GestureTapCallback onTap,
  }) =>
      Column(
        children: [
          const SizedBox(height: 50),
          InkWell(onTap: onTap, child: Text(featureName).h1()),
        ],
      );
}
