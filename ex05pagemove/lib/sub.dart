import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[200],
        width: double.infinity,
        height: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('세번째 페이지 입니다',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(onPressed: (){
              //Navigator 사용
              //화면관리는 stack 으로 관리
              // push, pop
              //context 현재 보고 있는 화면

              //MaterialPageRoute()
              }, child: Text(' 다음 페이지로 이동'))

          ],
        ),
      ),
    );
  }
}
