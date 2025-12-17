import 'package:delivery_app_with_backend/components/my_button.dart';
import 'package:delivery_app_with_backend/components/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  final VoidCallback onTap;

  RegisterPage({super.key, required this.onTap});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
            MyTextField(controller: confirmPasswordController, hintText: "CONFIRM PASSWORD", obscureText: true),
            const SizedBox(height: 20),
            MyButton(onTap: () {}, text: "CADASTRAR"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'JÁ TEM UMA CONTA?',
                  style: GoogleFonts.abel(color: Theme.of(context).colorScheme.primary, letterSpacing: 2, fontSize: 13),
                ),
                const SizedBox(width: 4),
                //upper case for register
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'FAÇA LOGIN',
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
