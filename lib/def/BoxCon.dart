import 'package:flutter/material.dart';

//stless
class BoxCon extends StatelessWidget {
  const BoxCon({super.key});

  //Text(Span), Image(그림, img), Icon(특수 문자), Container(div)
  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(

      theme: ThemeData(
        fontFamily: 'sunflower', // 기본 설정
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white10,
            fontSize:25,
            fontWeight: FontWeight.bold,
            fontFamily:  'perisienne'// displayLarge: 이 설정을 불러 올 때, 적용 할 fontFamily
          )
        ),
      ),

      home: Scaffold(
        appBar: AppBar(title: Text('Box',
          style: textTheme.displayLarge,),

          backgroundColor: Colors.black12,

        ),
        body: _Body(),
      ),
    );
  }
}

// Java에서 접근제어자.
// public, protected, default, private
class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 100,
      height: 100,
      //꾸미는 용, Container 디자인 권한
      decoration: BoxDecoration(
        // color: Colors.amberAccent,
          border: Border.all(
            width: 16,
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [Colors.red, Colors.blue],begin: Alignment.topLeft, end: Alignment.bottomRight)
      ),
      child: Column(
        children: [
          Text('Hello', style: textTheme.displayLarge,),
          Icon(Icons.star)
        ],
      ),
    );
  }
}