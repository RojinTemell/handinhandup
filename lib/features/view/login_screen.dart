import 'package:flutter/material.dart';
import 'package:handinhandup/features/mixin/navigate_mixin.dart';
import 'package:handinhandup/features/view/signup_screen.dart';

import '../widget/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with NavigatorManager {
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
              const  Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 40),
                  child:  Text(
                    """Together, we can make a difference in someone's life.""",
                    style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                const TextFormFieldWidget(
                  keyboardType: TextInputType.name,
                  hintText: 'Name',
                ),
                const TextFormFieldWidget(
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Password',
                  visiblePassword: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: BottonWidget(
                    title: 'LOGIN',
                    width: size.width * 0.7,
                    color: const Color.fromARGB(255, 220, 96, 13),
                    callback: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,top: 30),
                  child: Row(
                    children: [
                      const Text(
                        "Don't you have account?  ",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                          onTap: () {
                            navigateToWidget(context, const SignUpScreen());
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color:  Color.fromARGB(255, 220, 96, 13),
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
