import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '09.버튼제스처위젯실습',
      home: const MyHomePage(title: '09.버튼제스처위젯실습..'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      //floatingActionButton : Scaffold 위젯 속성. (body안에서 안됨)
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.question_answer),
          onPressed:(){
            print('플로팅 버튼 클릭');
          }
      ),
      body: Column(
        children: [
          //텍스트버튼
          TextButton(onPressed: (){
            print('텍스트버튼클릭');
          },
              child:const Text('텍스트버튼')//메모리효율성을위해 const선언
          ),

          //아웃라인 버튼 > 테두리가있는버튼
          OutlinedButton(
              onPressed: (){
                print('아웃라인 버튼클릭');
              },
              child: const Text('아웃라인 버튼')
          ),

          //엘리베이트 버튼
          ElevatedButton(
              onPressed: (){
                print('엘리베이트 버튼 클릭');
              },
              child: const Text('엘리베이트 버튼')
          ),

          //아이콘버튼
          IconButton(
              onPressed: (){
                print('아이콘 버튼 클릭');
              },
              icon: Icon(Icons.plus_one)
          ),

          //제스쳐 감지 위젯
          GestureDetector(
            //한번누르는거
            onTap: (){
              print('탭제스쳐');
            },
            
            //두번누르는거
            onDoubleTap: (){
              print('더블탭제스쳐');
            },
            
            //길게누르는거
            onLongPress: (){
              print('롱프레스 제스쳐');
            }, 
            child: Container(
              width:400,
              height: 200,
              color:Colors.blue,
              child:Text('제스처 감지 박스'),
            ),
          ),
        ],
      )


    );
  }
}