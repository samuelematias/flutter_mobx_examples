import 'package:flutter/material.dart';
import 'package:extensions/extensions.dart';
import 'package:form_package/form_package.dart';
import 'package:increment_counter_package/increment_counter_package.dart';
import 'package:input_fields_package/input_fields_package.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobx Examples')),
      body: ListView(
        children: [
          _buildFeatureOptions(
            context,
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
          _buildFeatureOptions(
            context,
            featureName: 'Input fields',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<InputFieldsPage>(
                    builder: (context) => const InputFieldsPage()),
              );
            },
          ),
          _buildFeatureOptions(
            context,
            featureName: 'Form',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<FormPage>(
                    builder: (context) => const FormPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureOptions(
    BuildContext context, {
    @required String featureName,
    @required GestureTapCallback onTap,
  }) =>
      Column(
        children: [
          const SizedBox(height: 50),
          InkWell(
            onTap: onTap,
            child: Text(featureName).h1(
              style:
                  TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
            ),
          ),
        ],
      );
}
