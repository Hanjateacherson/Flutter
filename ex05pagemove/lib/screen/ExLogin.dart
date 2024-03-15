import 'package:ex05pagemove/main.dart';
import 'package:ex05pagemove/screen/red_page.dart';
import 'package:flutter/material.dart';

class ExLogin extends StatelessWidget {
  const ExLogin({super.key, required Map<String, ExRedPage Function(dynamic context)> routes, required FirstPage home});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children:[
            TextField(
              //   controller: emailCon,
              decoration:
              InputDecoration(labelText: 'ID'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              // controller: passwordCon,
              decoration:
              InputDecoration(labelText: 'PW'),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            SizedBox(
              height: 40.0,
            ),
            ButtonTheme(
                minWidth: 100.0,
                height: 50.0,
                child: FloatingActionButton(

                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    onPressed: () {


                    })),
          ],
        ),
      ),
    );
  }
}