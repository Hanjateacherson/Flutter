import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExCu(),
    );
  }
}

class ExCu extends StatelessWidget {
  const ExCu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //Appbar의 우측 아이콘 넣는법
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 30,)
        ],

        title: Text('더보기'),

      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(24),
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('박*호님',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),


                Row(
                  children: [
                    Text('Friends',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,
                          // color: Colors.purple
                          // 참고 - 색상코드로 컬러 지정해주기
                          //Color(0xff rgb)
                          color: Color(0xff751485)

                      ),

                    ),
                    SizedBox(width: 3,),

                    Text('155p',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),

              ],
            ),
          ),

          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.all(16),
            alignment: Alignment.topLeft,
            child: Text('서비스',
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16),),
          ),

          Container(
            margin: EdgeInsets.all(8),
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(children:[
                      Icon(Icons.copyright, size: 50,),
                      Positioned(
                        bottom: 3,
                        right: 3,
                        child: Container(
                          alignment: Alignment.center,
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(3)
                          ),
                          child: Text('N', style:
                          TextStyle(color: Colors.white),),
                        ),
                      )



                    ] ),
                    Text("포인트 충전소")
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Stack(children:[
                      Icon(Icons.chat, size: 50,),
                      Positioned(
                        bottom: 3,
                        right: 3,
                        child: Container(
                          alignment: Alignment.center,
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(3)
                          ),
                          child: Text('N', style:
                          TextStyle(color: Colors.white),),
                        ),
                      )



                    ] ),
                    Text('상담하기')
                  ],
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}



class ExHeart extends StatelessWidget {
  const ExHeart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Icon(Icons.favorite_border_sharp, size: 150),
            ),
            Visibility(
              visible: true,
              child: Positioned(
                right: 10,
                top: 15,
                child: Container(
                  width: 30,
                  height: 30,
                  color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExPosition extends StatelessWidget {
  const ExPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Positioned 위젯은 Stack 위젯과 함께 쓰이는 위젯
            // 역할 : Stack의 자식 위젯 위치를 지정
            Positioned(
              // 양쪽 모두 지정해 줄 경우 짤리는 모습은 나타나지 않음!
              top: 20,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ),
            Positioned(
              // 코드상 위에 있는 container에만
              // positioned 지정해줄 경우 컨테이너가 사라짐

              // 코드상 아래에 있는 container에만
              // positioned지정해줄 경우 컨테이너가 해당 숫자만큼 이동!
              // 단, stack위젯의 크기를 지정해주지 안고 (빨간색) 컨테이너보다
              // 더 큰 숫자 만큼의 이동을 할 경우 마치 사라진 것처럼 보임
              top: 150,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Stack위젯
class ExStack extends StatelessWidget {
  const ExStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          //겹치기가 가능한 위젯
          // 뒤에 작성할수록 위치적으로 위로 오게 됩니다!
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}

class Ex06FlexibleExpanded extends StatelessWidget {
  const Ex06FlexibleExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "flexible, expanded 사용X",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.red,
                  child: Text("container1"),
                ),
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.orange,
                  child: Text("container2"),
                ),
              ],
            ),
            Text(
              "flexible 사용 ",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                //flexible을 사용 할 시
                // 화면이 넘어간 경우에는 1:1 비율로 차지
                Flexible(
                  flex: 2,
                  child: Container(
                    width: 1700,
                    height: 50,
                    color: Colors.red,
                    child: Text("container1"),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                    child: Text("container2"),
                  ),
                ),
              ],
            ),
            Text(
              "flexible tight 사용 ",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                //flexible을 사용 할 시
                // 화면이 넘어간 경우에는 1:1 비율로 차지
                Flexible(
                  flex: 3,
                  //loose, tight가 존재
                  // loose인 경우에는 여백이 남았을때 여백을 표시
                  // tight인 경우 여백이 남아 있음에도 불구하고 채워버립니다.
                  fit: FlexFit.tight,
                  child: Container(
                    width: 1700,
                    height: 50,
                    color: Colors.red,
                    child: Text("container1"),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                    child: Text("container2"),
                  ),
                ),
              ],
            ),
            Text(
              "flexible flex 사용 ",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                //flexible을 사용 할 시
                // 화면이 넘어간 경우에는 1:1 비율로 차지
                Flexible(
                  flex: 2,
                  //loose, tight가 존재
                  // loose인 경우에는 여백이 남았을때 여백을 표시
                  // tight인 경우 여백이 남아 있음에도 불구하고 채워버립니다.
                  fit: FlexFit.tight,
                  child: Container(
                    width: 1700,
                    height: 50,
                    color: Colors.red,
                    child: Text("container1"),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                    child: Text("container2"),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.yellow,
                    child: Text("container3"),
                  ),
                ),
              ],
            ),
            Text(
              "Expanded 사용 ",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                //flexible을 사용 할 시
                // 화면이 넘어간 경우에는 1:1 비율로 차지
                Expanded(
                  flex: 2,
                  //expanded는 flexible의 flexible fit 이 tight로 고정되어있는 위젯

                  child: Container(
                    width: 1700,
                    height: 50,
                    color: Colors.red,
                    child: Text("container1"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                    child: Text("container2"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.yellow,
                    child: Text("container3"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExRow extends StatelessWidget {
  const ExRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 100,
          color: Colors.green,
          // end 끝으로 이동
          // mainAxisAlignment: MainAxisAlignment.end,

          // spacebetween - 양끝에 배치한 후 일정 간격으로 위젯을 배치
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // spaceEvenly - 동일한 간격
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly

          // mainAxisAlignment: MainAxisAlignment.spaceAround

          // 본인 축이 아닌 다른 축의 정렬
          // end - cross축의 end
          // crossAxisAlignment: CrossAxisAlignment.end,
          //
          // crossAxisAlignment: CrossAxisAlignment.start,
          child: Row(
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.red,
              ),
              Container(
                width: 20,
                height: 20,
                color: Colors.yellow,
              ),
              Container(
                width: 20,
                height: 20,
                color: Colors.orange,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Ex05Kakao extends StatelessWidget {
  const Ex05Kakao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.yellowAccent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "image/klogo.png",
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text("카카오톡으로 로그인하기")
            ],
          ),
        ),
      ),
    );
  }
}

//SizedBox
// 사용목적 1 : 자식위젯의 크기를 정하기 위해
//      ㄴ  Container의 사용목적과 동일!!!
// 사용목적 2 : Row, Column 위젯의 사이공간을 넣기 위해서

class Ex04SizedBox extends StatelessWidget {
  const Ex04SizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          //container의 차이점
          //1. 요소(property)의 개수
          //    ㄴ  container는 SizedBox보다 많은 요소를 가지고 있어요
          //          ㄴ  컴퓨터입장에서 container는 상대적으로 무거운 애
          // 결론 : 자식위젯의 크기를 결정해줄때만 SizedBox 사용

          child: Row(
            children: [
              Text(
                "hello world",
                style: TextStyle(fontSize: 30),
              ),

              Container(
                color: Colors.red,
                child: SizedBox(
                  width: 50,
                  height: 50,
                ),
              ),
              //소소한 팁 flutter 3버전 오면서
              // 버튼의 이름이 바뀜 (RasiedButton)
              ElevatedButton(onPressed: () {}, child: Text("버튼"))
            ],
          ),
        ),
      ),
    );
  }
}

//가로 화면 꽉 채우기
class Ex03Container extends StatelessWidget {
  const Ex03Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.all(16),
          //double.infinity - 세로도 가능
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            children: [
              Column(children: [
                Text(
                  "아이유와 도미노를 더 맛있게~",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("도미노 매니아 되고 ~40% 할인받자~!")
              ]),
              Flexible(
                  child: Image.asset('image.KakaoTalk_20240311_143409255.png'))
            ],
          ),

          //사실 가로를 꽉 채우는 코드는 2개가 존재
        ),
      ),
    );
  }
}

class Ex02Container extends StatelessWidget {
  const Ex02Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              child: Icon(
                Icons.call,
                size: 80,
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: 32, left: 32),
              decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
            Container(
              width: 120,
              height: 120,
              child: Icon(
                Icons.camera_alt_outlined,
                size: 80,
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: 32, left: 32),
              decoration: BoxDecoration(
                  color: Colors.red[500],
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          ],
        ),
      ),
    );
  }
}

class Ex01Container extends StatelessWidget {
  const Ex01Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //color: Colors.blue,
          width: 200,
          height: 200,
          //alignment: Alignment.center,
          //margin, padding주는 법 3가지 존재

          //1번 EdgeInsets.fromLTRB(0,0,0,0)
          //margin: EdgeInsets.fromLTRB(10, 10, 10, 10),

          //2번 EdgeInsets.all(double)
          //margin: EdgeInsets.all(20),

          //3번 EdgeInstes.only() -> 원하는 위치만 margin/padding주기

          //only메소드는 named parameter를 가지고 있음!
          margin: EdgeInsets.only(left: 30, top: 50),

          decoration: BoxDecoration(
              color: Colors.redAccent,
              border: Border.all(color: Colors.black, width: 10),
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
              borderRadius: BorderRadius.all(Radius.circular(50))),

          child: Center(
            child: Text(
              "hello world",
              style: TextStyle(fontSize: 32),
            ),
          ),
        ),
      ),
    );
  }
}
