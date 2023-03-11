import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  color: const Color(0xff69D261),
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xff69D261),
                  )),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Image.network("https://i.redd.it/0j7qth9vdty31.jpg"),
                  FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white,
                    size: 100,
                  ),
                ],
              ),
            ),
            Text(
              'Whatsapp Clone',
              style: TextStyle(
                  fontSize: 30,
                  color: const Color(0xff69D261),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
