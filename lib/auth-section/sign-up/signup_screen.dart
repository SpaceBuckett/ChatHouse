import 'package:chathouse/Constants/colors.dart';
import 'package:chathouse/custom_widgets/image_container.dart';
import 'package:chathouse/screens/root_screen/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Column(
                children: [
                  Center(
                    child: ImageContainer(
                      assetImage: 'assets/send.png',
                      height: 140,
                      width: 140,
                    ),
                  ),
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.person_outline_sharp,
                        ),
                        hintText: 'Your Name',
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your Name';
                        }
                        return null;
                      },
                    ),
                    const CustomDivider(),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email_outlined,
                        ),
                        hintText: 'Your Email',
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your Email';
                        }
                        return null;
                      },
                    ),
                    const CustomDivider(),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock_outlined,
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: 'Strengthen Your Security',
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your Password';
                        }
                        return null;
                      },
                    ),
                    const CustomDivider(),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock_outlined,
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: 'Strengthen Your Security',
                        labelText: 'Confirm Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your password';
                        }
                        return null;
                      },
                    ),
                    const CustomDivider(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 50,
                  width: 400,
                  // width: 300,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Get.to(const RootScreen());

                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(
                  //     content: Text("Form Submitter"),
                  //   ),
                  // );
                }
              },
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 50,
                width: 400,
                // width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kPrimaryColor),
                  // boxShadow: const [
                  //   BoxShadow(
                  //     blurRadius: 1,
                  //     color: Colors.grey,
                  //     offset: Offset(0, 1),
                  //   )
                  // ],
                ),
                child: const Center(
                  child: Text(
                    'Sign-In',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 75),
          ],
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 2,
      color: Colors.grey,
    );
  }
}
