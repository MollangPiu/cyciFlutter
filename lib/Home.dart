import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('머리 부분'),),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              print('HI ');
              Navigator.pushNamed(context, '/def');
            }, child: Text('기본 Widget')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/rowColumn');
            }, child: Text('Row Column 사용')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/boxcon');
            }, child: Text('Box를 꾸미는 용')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/con2');
            }, child: Text('꾸미는 용')),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/counter');
            }, child: Text('좋아요 / 싫어요.')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/parentChild');
            }, child: Text('값 건네받기')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/formW');
            }, child: Text('FormW 사용하기')),









            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/conds');
            }, child: Text('왜 안 돼'))
          ],
        ),
      ),
      bottomNavigationBar: Text('Botoom 부분'),
    );
  }
}
