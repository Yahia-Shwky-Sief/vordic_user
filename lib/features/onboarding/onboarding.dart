import 'package:flutter/material.dart';
import 'package:vordic_user/core/widgets/logo.dart';
import 'package:vordic_user/features/auth/ui/sign_in.dart';
import 'package:page_transition/page_transition.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.025, 0.5, 0.99],
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1608235882291-02e3b888f3ee?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 20,
              child: logo(fontSize: 40),
            ),
            Positioned(
              bottom: 40,
              child: Column(
                children: [
                  const Text(
                    'Best E-commerce App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'find the best products and deals',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MaterialButton(
                          onPressed: () => context.pushReplacementTransition(
                            child: const SignIn(),
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            type: PageTransitionType.fade,
                          ),
                          child: const Row(
                            children: [
                              Text('Get Started'),
                              Icon(Icons.arrow_forward_rounded),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
