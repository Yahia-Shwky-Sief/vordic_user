import 'package:flutter/material.dart';
import 'package:vordic_user/core/theme/app_palette.dart';
import 'package:vordic_user/core/widgets/logo.dart';
import 'package:vordic_user/features/auth/ui/sign_up.dart';
import 'package:vordic_user/core/widgets/text_form_field.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vordic_user/features/navigation_bar/navigation_bar.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: logo(fontSize: 28),
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
                    'Welcome back!',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          child: const Text('Forgot password?'),
                        ),
                      ],
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
                          context.pushReplacementTransition(
                              type: PageTransitionType.fade,
                              child: const NavigationBarScreen());
                        },
                        child: const Text('Sign in'),
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
                    type: PageTransitionType.fade, child: const SignUp());
              },
              child: const Text(
                'Don\'t have an account? Sign up',
                style: TextStyle(color: AppPalette.whiteColor, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
