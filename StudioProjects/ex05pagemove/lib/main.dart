import 'package:ex05pagemove/screen/blue_page.dart';
import 'package:ex05pagemove/screen/green_page.dart';
import 'package:ex05pagemove/screen/ExLogin.dart';
import 'package:ex05pagemove/screen/red_page.dart';
import 'package:ex05pagemove/sub.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/red':(context) => ExRedPage(),
        '/green':(context) => ExGreenPage(),
        '/blue':(context) => ExBluePage(),
      },
      home: ExLogin(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red[200],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '첫번째 페이지 입니다',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator 사용
                // 화면관리는 stack으로 관리
                // push, pop

                // MaterialPageRoute()
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                    // SecondPage도 위젯이다.(왜냐, 상속받고있는 Stlw이 위젯이니깐!!
                  ),
                );
              },
              child: Text(' 두번째 페이지로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                // pushAndRemoveUntil : push하고 이전 페이지는 제거!
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //       builder: (_) => ThirdPage(), // context를 _로 대체 가능
                //     ),
                //     (route) => false); // false -> true : 페이지삭제 안함!

                // pushReplacement
                // 현재 페이지를 다음 페이지로 대체
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ThirdPage(),
                  ),
                );
              },
              child: Text('세번째 페이지로 이동'),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/red');
            }, child: Text('빨간페이지로 이동'))
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[200],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '두번째 페이지 입니다',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  // push를 썼을 때 문제점
                  // => 화면이 계속 쌓이게 됨...

                  // 화면이 2개인 경우 이전페이지로 이동 시, pop 쓰시면 됩니다!!
                  Navigator.pop(context);
                },
                child: Text(' 첫번째 페이지로 이동'))
          ],
        ),
      ),
    );
  }
}