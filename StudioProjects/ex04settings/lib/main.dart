import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: OnBoarding(),
    );
  }
}

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        skipTextButton: Text('Skip'),
        trailing: Text('Login'),
        background: [
          Image.asset('image/page1.jpg',

          //double.infinity
            // ㄴ 부모위젯의 크기까지 크겠다
            // 감싸져 있는 부모 위젯에 따라 크기가 달라짐

        //MediaQuery.of(context).size.width
            // ㄴ 어플의 가로 길이 만큼 크겠다
            width: MediaQuery.of(context).size.width,


         ),
          Image.asset('image/page2.jpg'),
        ],
        totalPage: 2,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 2'),
              ],
            ),
          ),
        ],

    );
  }
}



class Ex02animatedText extends StatelessWidget {
  const Ex02animatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 250.0,
        child: TextLiquidFill(
          text: 'LIQUIDY',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.redAccent,
          textStyle: TextStyle(
            fontSize: 80.0,
            fontWeight: FontWeight.bold,
          ),
          boxHeight: 300.0,
        ),
      ),
    );
  }
}


class Ex01toast extends StatelessWidget {
  const Ex01toast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){

              Fluttertoast.showToast(
                  msg: "뒤로 버튼을 한번 더 클릭 시 종료합니다.",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );


            },
            child: Text("토스트 띄우기"),
          ),
        ),
      ),
    );
  }
}
