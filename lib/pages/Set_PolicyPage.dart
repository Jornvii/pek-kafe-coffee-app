import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'support@prkkafe.com',
      query: 'subject=Privacy Policy Inquiry', // add subject or body if needed
    );

    if (!await launchUrl(emailLaunchUri)) {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isDarkMode ? Colors.grey[900]! : Colors.grey[100]!,
              isDarkMode ? Colors.grey[800]! : Colors.white,
            ],
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
                Center(
                  child: Text(
                    'Privacy Policy',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).textTheme.headlineLarge!.color,
                        ),
                  ),
                ),
                SizedBox(height: 24),
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
                          'Introduction',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .color,
                                  ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'This privacy policy explains how we collect, use, disclose, and safeguard your information when you use our application. Please read it carefully.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Information Collection',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .color,
                                  ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'We may collect information about you in a variety of ways. The information we may collect via the application includes:',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '- Personal Data: Personally identifiable information, such as your name, email address, and contact details.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          '- Usage Data: Information about your interaction with the application, including the frequency and duration of use.',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Contact Us',
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .color,
                                  ),
                        ),
                        SizedBox(height: 8),
                        GestureDetector(
                          onTap: _launchEmail,
                          child: Text(
                            'support@pek-cafe.com',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
