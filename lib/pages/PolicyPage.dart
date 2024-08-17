import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Policy'),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey[100]!, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy Policy',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.headlineSmall!.color,
                      ),
                ),
                SizedBox(height: 16),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Vestibulum id ligula porta felis euismod semper. '
                  'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. '
                  'Cras mattis consectetur purus sit amet fermentum.',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        height: 1.5,
                      ),
                ),
                SizedBox(height: 24),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
