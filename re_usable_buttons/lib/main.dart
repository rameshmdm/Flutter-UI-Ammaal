import 'package:flutter/material.dart';
import 'package:re_usable_buttons/reusablebutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ReUsableIconButton(
                buttonColor: Colors.blue,
                icon: Icons.add_box_rounded,
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 100));
                },
              ),
              ReUsableIconButton(
                buttonColor: Colors.pink,
                icon: Icons.remove_circle,
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 100));
                },
              ),
              ReUsableIconButton(
                buttonColor: Colors.green,
                icon: Icons.notifications_active,
                iconSize: 30,
                borderRadius: 5,
                verticalPadding: 10,
                horizontalPadding: 60,
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 100));
                },
              ),
              ReUsableIconButton(
                buttonColor: Colors.black,
                icon: Icons.mail,
                iconSize: 30,
                borderRadius: 20,
                verticalPadding: 10,
                horizontalPadding: 60,
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 100));
                },
              ),
              ReUsableIconButton(
                buttonColor: Colors.teal,
                icon: Icons.add_circle,
                iconSize: 40,
                borderRadius: 30,
                verticalPadding: 10,
                horizontalPadding: 60,
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 100));
                },
              ),
              ReUsableIconButton(
                buttonColor: Colors.blueAccent,
                icon: Icons.cached_rounded,
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 100));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReUsableIconButton(
                    buttonColor: Colors.deepOrangeAccent,
                    icon: Icons.add_shopping_cart_outlined,
                    iconSize: 40,
                    onTap: () async {
                      await Future.delayed(const Duration(milliseconds: 100));
                    },
                  ),
                  ReUsableIconButton(
                    buttonColor: Colors.cyan,
                    icon: Icons.add_shopping_cart_outlined,
                    iconSize: 40,
                    onTap: () async {
                      await Future.delayed(const Duration(milliseconds: 100));
                    },
                  ),
                  ReUsableIconButton(
                    buttonColor: Colors.purpleAccent,
                    icon: Icons.add_shopping_cart_outlined,
                    iconSize: 40,
                    onTap: () async {
                      await Future.delayed(const Duration(milliseconds: 100));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
