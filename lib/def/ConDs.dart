import 'package:flutter/material.dart';

class ConDs extends StatefulWidget {

  const ConDs({Key? key}) : super(key: key);

  @override
  State<ConDs> createState() => _ConactionScreen();
}

class _ConactionScreen extends State<ConDs> {
  DateTime firstDat = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'sunflower',
          textTheme: TextTheme(
              displayLarge: TextStyle(
                color: Colors.white,
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'parisienne',
              ),
              displayMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0
              ),
              bodyLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0
              ),
              bodyMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
              )

          ),
        ),
        home: Scaffold(
            backgroundColor: Colors.pink[100],
            body: SafeArea(
                top: true,
                bottom: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _DDay(
                      onHeartPressed: onHeartPressed,
                    ),
                    _CopuleImage()
                  ],
                ))
        )
    );
  }

  void onHeartPressed() {
    print('클릭');
  }
}

class _DDay extends StatelessWidget {

  final GestureTapCallback onHeartPressed;

  _DDay({
    required this.onHeartPressed
  });


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;


    return Column(
      children: [
        const SizedBox(height: 16.0),
        Text(
          'u&I',
          style: textTheme.displayLarge,
        ),
        Text('우리가 처음 만난 날',
            style: textTheme.bodyLarge),
        Text(
            '2024.12.13',
            style: textTheme.bodyMedium
        ),
        const SizedBox(height: 16.0),
        IconButton(
          iconSize: 60.0,
          onPressed: onHeartPressed,
          icon: Icon(
              Icons.favorite,
              color: Colors.red
          ),
        ),
        const SizedBox(height: 16.0),
        Text(
            'D+365',
            style: textTheme.headlineMedium
        )
      ],
    );
  }
}

class _CopuleImage extends StatelessWidget {
  const _CopuleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
        Center(
          child: Image.asset(
              height: MediaQuery.of(context).size.height / 2,
              '/img/img_1.webp'),
        )
    );
  }
}