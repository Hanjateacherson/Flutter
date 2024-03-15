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
      home: Ex06Login(),
    );
  }
}

class Ex06Login extends StatefulWidget {
  const Ex06Login({super.key});

  @override
  State<Ex06Login> createState() => _Ex06LoginState();
}

class _Ex06LoginState extends State<Ex06Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('로그인 화면',
          style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      //키보드가 올라 왔을때 버튼이 나오지 않을 경우
      // pixel overflowed에러가 난 경우
      //scroll 만들어 주기!
      //간단, 단순한 스크롤 만들땐 SingleChildScrollView 만들어 주시면 됩니다!
      body: GestureDetector(
        //GestueDetector
        // 모든위젯이 onpressed와 같은 행동을 감지하는 기능을 가지고 있지 않습니다
        // GesuteDector으로 위젯을 감싸게 되면
        //기능이 생성
        onTap: (){
          //포커스를 잃는 코드
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('image/littleryan.gif'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('email입력'),
                      hintText: "example@example.com",
                      hintStyle: TextStyle(color: Colors.grey[300])
                    ),
                  ),


                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('password 입력'),

                    ),
                    obscureText: true,
                  ),


                ),

                ElevatedButton(onPressed: (){}, child: Text('로그인하기'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class Ex05TextField extends StatefulWidget {
  const Ex05TextField({super.key});

  @override
  State<Ex05TextField> createState() => _Ex05TextFieldState();
}

class _Ex05TextFieldState extends State<Ex05TextField> {
  //tf내에 값을 가지고 오기 위해 controller 가 필요!
  //각각 필요!

  //다트는 new 키워드 생략 가능
  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();

  //생성 후 tf랑 연결
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: emailCon, // 연결
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Row(
                  children: [
                    Icon(Icons.account_circle),
                    Text("email")
                  ],
                ),
               hintText: "example@example.co.kr",
               hintStyle: TextStyle(color: Colors.grey[300])


               //label과 labelText는 함께 사용할 수 없다!
               // labelText:"email"
              ),

            ),
            TextField(
             // keyboardType: TextInputType.number,
             //  keyboardType: TextInputType.,
              controller: passCon,
              obscureText: true, // 비밀번호 처럼 *표시
              decoration: InputDecoration(
                label: Row(
                  children: [
                    Icon(Icons.key),
                    Text('password')
                  ],
                )
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){

              ScaffoldMessenger.of(context).showSnackBar(

                SnackBar(content: Text(emailCon.text))
                // controller의 값 가지고오는 방법
              );


            }, child: Text('로그인하기'))

          ],
        ),
      ),
    );
  }
}

//switch

class Ex04Switch extends StatefulWidget {
  const Ex04Switch({super.key});

  @override
  State<Ex04Switch> createState() => _Ex04SwitchState();
}

class _Ex04SwitchState extends State<Ex04Switch> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Switch(
                value: isChecked, onChanged: (isValue){
              setState(() {
                isChecked = isValue!;
              });
            }),

            SwitchListTile(
              title: Text('안녕하세요'),
                activeColor: Colors.red,
                value: isChecked, onChanged: (isValue){
              setState(() {
                isChecked = isValue!;
              });
            })

          ],
        ),
      ),
    );
  }
}


//radio 버튼
class Ex03Radio extends StatefulWidget {
  const Ex03Radio({super.key});

  @override
  State<Ex03Radio> createState() => _Ex03RadioState();
}
enum Gender{man, woman }

class _Ex03RadioState extends State<Ex03Radio> {
  Gender g = Gender.man;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('당신의 성별은?'),

            RadioListTile(
              title: Text('남성'),
                value: Gender.man, groupValue: g,
                // value와 groupValue가 값이 같을때 선택된 것으로 인식
                onChanged: (value){
                  print(value);
                setState(() {
                  g = value!;

              });

            }),
            Radio(value: Gender.woman, groupValue: g,

                onChanged: (value){
                  print(value);
                  setState(() {
                    g = value!;
                  });

                })
            
          ],
        ),
      ),

    );
  }
}





//CheckboxListTile
class Ex02CheckTile extends StatefulWidget {
  const Ex02CheckTile({super.key});

  @override
  State<Ex02CheckTile> createState() => _Ex02CheckTileState();
}


class _Ex02CheckTileState extends State<Ex02CheckTile> {
  List<bool> isCheckedList = [false, false, false];
  List<String> hobbyList =['운동','게임','베이킹'];

  //임시적으로 클릭한 취미를 담을 리스트
  List<String> hobbyCheckList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('당신의 취미는 무엇입니까?'),
            //CheckboxListTile
            CheckboxListTile(
              title: Text(hobbyList[0]),
                //controlAffinity 체크박스의 위치
                controlAffinity: ListTileControlAffinity.leading,
                value: isCheckedList[0], onChanged: (isValue){

              setState(() {
                isCheckedList[0] = isValue!;

                if(isCheckedList[0]){
                  hobbyCheckList.add(hobbyList[0]);

                  //snack bar 만드는 방법
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$hobbyCheckList'),
                        duration: Duration(seconds: 2),

                      )

                  );

                }else{
                  hobbyCheckList.remove(hobbyList[0]);
                }



              });


            }),
            CheckboxListTile(
                title: Text('게임'),
                //controlAffinity 체크박스의 위치
                controlAffinity: ListTileControlAffinity.leading,
                value: isCheckedList[1], onChanged: (isValue){

              setState(() {
                isCheckedList[1] = isValue!;
                if(isCheckedList[1]){
                  hobbyCheckList.add(hobbyList[1]);

                  //snack bar 만드는 방법
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$hobbyCheckList'),
                        duration: Duration(seconds: 2),

                      )

                  );

                }else{
                  hobbyCheckList.remove(hobbyList[1]);
                }


              });


            }),
            CheckboxListTile(
                title: Text('베이킹'),
                //controlAffinity 체크박스의 위치
                controlAffinity: ListTileControlAffinity.leading,
                value: isCheckedList[2], onChanged: (isValue){

              setState(() {
                isCheckedList[2] = isValue!;
              });


            })

          ],
        ),
      ),
    );
  }
}


class Ex02Checkbox extends StatefulWidget {
  const Ex02Checkbox({super.key});

  @override
  State<Ex02Checkbox> createState() => _Ex02CheckboxState();
}

class _Ex02CheckboxState extends State<Ex02Checkbox> {
  bool isChecked = false;

  List<bool> isCheckedList = [false,false,false];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //value - bool 타입 대입
            //onChanged - 매개변수 bool 타입
            Row(
              children: [
                Checkbox(value: isCheckedList[0], onChanged: (isValue){
                  setState(() {
                    // isCheckedList[0] = !isCheckedList[0];
                    isCheckedList[0] = isValue!;
                  });
                }),
                Text('안녕하세요')
              ],
            ),
            Checkbox(value: isCheckedList[1], onChanged: (isValue){
              setState(() {
                isCheckedList[1] = !isCheckedList[1];
              });
            }),
            Checkbox(value: isCheckedList[2], onChanged: (isValue){
              setState(() {
                isCheckedList[2] = !isCheckedList[2];
              });
            })



          ],
        ),
      ),
    );
  }
}


//stless
//stful
class Ex01button extends StatefulWidget {
  const Ex01button({super.key});

  @override
  State<Ex01button> createState() => _Ex01buttonState();
}

class _Ex01buttonState extends State<Ex01button> {
  int num1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('$num1'),
            ElevatedButton(onPressed: (){
        
              setState(() {
                num1++;
              });
        
        
        
            }, child: Text('버튼'))
          ],
        ),
      ),
    );
  }
}
