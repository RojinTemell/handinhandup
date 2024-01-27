import 'package:flutter/material.dart';
import 'package:handinhandup/features/mixin/navigate_mixin.dart';

import '../widget/widget.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackgroundImageWidget(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HAND IN HAND UP',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: size.height * 0.09,
                ),
                const TextFormFieldWidget(
                  keyboardType: TextInputType.name,
                  hintText: 'Name',
                ),
                const TextFormFieldWidget(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Email',
                ),
                const TextFormFieldWidget(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Password',
                  visiblePassword: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: BottonWidget(
                    title: 'SIGN UP ',
                    width: size.width * 0.7,
                    color: const Color.fromARGB(255, 220, 96, 13),
                    callback: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 30),
                  child: Row(
                    children: [
                      const Text(
                        "Do you have account?   ",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                          onTap: () {
                            navigateToWidget(context, const LoginScreen());
                          },
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Color.fromARGB(255, 220, 96, 13),
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
