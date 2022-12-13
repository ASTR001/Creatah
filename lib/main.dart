import 'package:flutter/material.dart';
import 'package:my_account/view/user_view.dart';
import 'package:my_account/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => userViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Posts app',
        theme: ThemeData.dark(),
        home: userView(),
      ),
    );
  }
}