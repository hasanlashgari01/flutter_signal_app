import 'package:flutter/material.dart';
import 'package:flutter_blog_navigation/custom_widgets/post_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({Key? key}) : super(key: key);

  final List<Widget> listBlogWidget = [
    getPost(image: "a", name: 'Alchemy Pay', date: '۱۹ آذر'),
    getPost(image: 'c', name: 'Cosmos', date: '۱۹ آذر'),
    getPost(image: 'r', name: 'Ripple', date: '۱۹ آذر'),
    getPost(image: 's', name: 'SafeMoon', date: '۱۹ آذر'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("اخبار و سیگنال های VIP", textDirection: TextDirection.rtl),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...listBlogWidget,
                  SizedBox(height: 20),
                  TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget SignalCart() {}
}
