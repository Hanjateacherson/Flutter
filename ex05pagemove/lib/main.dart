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
    return ExLogin (

      routes:{
        '/red' :(context) =>ExRedPage()

      } ,

      home: FirstPage(),
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
            Text('첫번째 페이지 입니다',
            style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: (){
              //Navigator 사용
              //화면관리는 stack 으로 관리
              // push, pop
              //context 현재 보고 있는 화면
              
              // MaterialPageRoute()
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage()
                  )
              );

              Navigator.pushNamed(context, '/red');

              
            }, child: Text(' 두번째 페이지로 이동')),
            ElevatedButton(onPressed: (){

              //pushAndRemoveUntil --> push(페이지 이동)
              // 이전페이지는 제거
              // Navigator.pushAndRemoveUntil(context,
              //     MaterialPageRoute(
              //     builder: (context) => ThirdPage()
              //     )
              //     , (route) => false);
              //(route) => true로 바꾸면 페이지 삭제 안합니다

              //pushReplacement
              //삭제가 아닌 대체
              Navigator.pushReplacement(context,
                  MaterialPageRoute(
                      builder: (_)=>ThirdPage())
              );

            }, child: Text('세번째 페이지로 이동'))

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
            Text('두번째 페이지 입니다',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: (){

              //push를 썼을 때 문제점
              // 화면이 계속 쌓이게 됩니다!!

              //화면이 2개인 경우 이전페이지로 이동 시 pop쓰시면 됩니다!

              //
              Navigator.pop(context);

            }, child: Text(' 첫번째 페이지로 이동'))

          ],
        ),
      ),
    );
  }
}

