import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Ex03second());
  }
}

//Ex03second
class Ex03second extends StatelessWidget {
  const Ex03second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("두번째 예제"),
        backgroundColor: Colors.green[200],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("image/ryan1.jpg", width: 120,height: 120,),
          Text("안녕 나는 라이언이야")
        ],
      ),
    );
  }
}



//Ex03first
class Ex03first extends StatelessWidget {
  const Ex03first({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("첫번째 예제"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset("image/ryan1.jpg", width: 120,height: 120,),
              Text("안녕 나는 라이언이야")
            ],
          ),
        ),
      ),
    );
  }
}



class Ex03widget extends StatelessWidget {
  const Ex03widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(child: Text('안녕')),
      
    );
  }
}




class Ex02widget extends StatelessWidget {
  const Ex02widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 예제'),
        backgroundColor:  Colors.green,
      ),
      
      body: Column(
        children: [
          Text('안녕'),
          TextField(),

          //이미지 옮길 시 주의사항
          // drag and drop할 경우 실제 경로가 변경
          //image.asset(경로)
          //경로 폴더명/
        Image.asset('image/ryan1.jpg', width: 150,height: 150,),


          //이미지, 영상과 같이 외부에서 가지고온 파일을
          //읽고 싶은 경우 환경설정



        ],
      ),

    );
  }
}



//stless - stateless약자
// ctrl + space 자동완성
class Ex01widget extends StatelessWidget {
  const Ex01widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //앱의 큰 틀
      //scaffold 단두대, 발판

      //높은 곳에서 작업할 수 있도록 설치한 큰 틀

      //appbar를 구성하기 위한 방법이 별도로 존재
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        //요소간 ,(comma)존재 해야합니다!
        title: Text('My first app'),
      ),
      //위젯이 생성될 때 크기는 해당 위젯의 크기
      //이미 생성된 위젯을 다른 위젯으로 감싸기 위해
      //alt +enter - wrap with ~
      body: Row(
        children: [
          Text('hello world',
              textAlign: TextAlign.end,
              style: TextStyle(
                  backgroundColor: Colors.amberAccent[700], fontSize: 30)),
          Text('안녕하세요 '),

          //Icon위젯
          Icon(
            Icons.alarm,
            color: Colors.blue,
            size: 100,
          ),

          //Icon 버튼 위젯
          IconButton(onPressed: (){
            print("hi");
          },
              icon: Icon(Icons.access_time))

        ],
      ),
    );
  }
}
