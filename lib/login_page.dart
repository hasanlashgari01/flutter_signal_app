import 'package:flutter/material.dart';
// import 'package:flutter_blog_navigation/password_recovery.dart';
import 'blog_page.dart';
import 'password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void navToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VIP ورود به حساب سینگنال ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )
                  ],
                ),
                Image(image: AssetImage('images/w.png')),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(200.0, 40.0),
                      side: BorderSide(color: Colors.black, width: 2.0),
                      foregroundColor: Colors.black),
                  onPressed: () => navToBlogPage(context, BlogScreen()),
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ثبت نام'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: Size(200.0, 43.0)),
                ),
                TextButton(
                  onPressed: () => navToBlogPage(context, PasswordRecovery()),
                  child: Text('فراموشی رمز عبور'),
                  style: TextButton.styleFrom(surfaceTintColor: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
