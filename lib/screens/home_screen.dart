import 'package:clone_twitter/components/buttons/primary_button.dart';
import 'package:clone_twitter/components/buttons/secundary_button.dart';
import 'package:clone_twitter/components/buttons/terms_and_privacy.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/twitter.png', width: 32, height: 32),
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'See what\'s happening in the world rigth now.',
                    style: TextStyle(
                      fontSize: 28,
                      overflow: TextOverflow.clip,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              PrimaryButton(
                icon: 'google.png',
                label: 'Continue with Google',
                // ignore: avoid_print
                onTap: () => print('Clicou no botão 1'),
              ),
              PrimaryButton(
                icon: 'apple_full.png',
                label: 'Continue with Apple',
                // ignore: avoid_print
                onTap: () => print('Clicou no botão 2'),
              ),
              const Row(
                children: [
                  Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('or', style: TextStyle(color: Colors.grey)),
                  ),
                  Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                ],
              ),
              SecundaryButton(
                label: 'Create Account',
                // ignore: avoid_print
                onTap: () => print('Clicou noo butão 3'),
              ),
              const SizedBox(height: 28.0),
              const TermsAndPrivacy(),
              const SizedBox(height: 38.0),
              RichText(
                text: const TextSpan(
                  text: 'Have an account already? ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Log in',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
