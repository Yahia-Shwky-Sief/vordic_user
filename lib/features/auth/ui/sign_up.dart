import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vordic_user/core/theme/app_palette.dart';
import 'package:vordic_user/core/widgets/logo.dart';
import 'package:vordic_user/features/auth/ui/sign_in.dart';
import 'package:vordic_user/core/widgets/text_form_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  logo(fontSize: 28),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Welcome to Vordic!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    textFormField(
                      hintText: 'Username',
                      controller: usernameController,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    textFormField(
                      hintText: 'Email',
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    textFormField(
                      hintText: 'Password',
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: false,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: AppPalette.whiteColor,
                        textColor: AppPalette.backgroundColor,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            // Process data.
                          }
                        },
                        child: const Text('Sign up'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                context.pushTransition(
                    type: PageTransitionType.fade, child: const SignIn());
              },
              child: const Text(
                'Have an account? Sign in',
                style: TextStyle(color: AppPalette.whiteColor, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
