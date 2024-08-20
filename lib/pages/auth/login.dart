import 'package:coffee_order_app/pages/auth/register_screen.dart';
import 'package:coffee_order_app/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  Widget _buildTextFormField({
    required String label,
    required IconData icon,
    required bool isPassword,
  }) {
    return TextFormField(
      obscureText: isPassword && !_isPasswordVisible,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Theme.of(context).hintColor.withOpacity(0.7),
        ),
        prefixIcon: Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).hintColor.withOpacity(0.7),
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              )
            : null,
        filled: true,
        fillColor: Theme.of(context).colorScheme.surface.withOpacity(0.5),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.redAccent,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
      ),
      style: TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $label';
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  'https://i.pinimg.com/originals/1a/56/ea/1a56eaaaf78869d7c6e0e620b2b98394.gif',
                  height: 100,
                ),
                const SizedBox(height: 40),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                _buildTextFormField(
                  label: 'Email',
                  icon: Icons.email,
                  isPassword: false,
                ),
                const SizedBox(height: 20),
                _buildTextFormField(
                  label: 'Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SplashScreen()),
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Or continue with',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(179, 40, 35, 35)),
                ),
                const SizedBox(height: 20),
                SignInButton(
                  Buttons.Google,
                  text: 'Sign in with Google',
                  onPressed: () {
                    // Handle Google login
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                const SizedBox(height: 10),
                SignInButton(
                  Buttons.Facebook,
                  text: 'Sign in with Facebook',
                  onPressed: () {
                    // Handle Facebook login
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text(
                    'Don\'t have an account? Register',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
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
