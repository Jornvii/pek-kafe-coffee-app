import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main Title
              Center(
                child: Text(
                  'About Our Coffee App',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.headlineLarge!.color,
                      ),
                ),
              ),
              const SizedBox(height: 24),
              // About Us Card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Mission',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).textTheme.titleLarge!.color,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'We are dedicated to providing the best coffee experience through a user-friendly app that brings your favorite drinks to your doorstep. Our mission is to make your coffee moments better and more enjoyable.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              height: 1.5,
                            ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Our Story',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).textTheme.titleLarge!.color,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Founded by a team of coffee enthusiasts, our app combines technology and passion to bring you the best coffee experience. From humble beginnings to becoming a favorite among coffee lovers, our journey has been fueled by dedication and innovation.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              height: 1.5,
                            ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
