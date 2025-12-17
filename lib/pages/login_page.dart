import 'package:delivery_app_with_backend/components/my_button.dart';
import 'package:delivery_app_with_backend/components/my_text_field.dart';
import 'package:delivery_app_with_backend/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginMethod() {
    // Implement login functionality here

    //navigate to home page after login
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.lock_open, size: 100, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 25),
            Text(
              'F O O D - D E L I V E R Y - A P P',
              style: GoogleFonts.abel(fontSize: 16, color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(height: 25),
            MyTextField(controller: emailController, hintText: "EMAIL", obscureText: false),
            const SizedBox(height: 10),
            MyTextField(controller: passwordController, hintText: "PASSWORD", obscureText: true),
            const SizedBox(height: 20),
            MyButton(onTap: loginMethod, text: "LOGIN"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'AINDA NÃO TEM UMA CONTA?',
                  style: GoogleFonts.abel(color: Theme.of(context).colorScheme.primary, letterSpacing: 2, fontSize: 13),
                ),
                const SizedBox(width: 4),
                //upper case for register
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'REGISTRE-SE',
                    style: GoogleFonts.abel(
                      color: Theme.of(context).colorScheme.primary,
                      letterSpacing: 2,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
