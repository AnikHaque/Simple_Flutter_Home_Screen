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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Image.network('https://static.vecteezy.com/system/resources/thumbnails/021/797/174/small/arrow-left-icon-isolated-on-white-background-vector.jpg',
          width: 12.0,
        ),
        // Replace 'left_image.png' with the path to your left image asset.
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlm_sEIi_htOXXc6vQqp2zUo-3fdamqS6uQw&usqp=CAU',width: 32.0,), // Replace with your right image URL.
        ],
        centerTitle: true, // Center the title horizontally.
      ),



      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is mod 5 Assignment',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'My ',
                    style: TextStyle(
                      color: Colors.pink, // Color for "My"
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'phone ',
                    style: TextStyle(
                      color: Colors.blue, // Color for "phone"
                      fontWeight: FontWeight.bold,
                        fontSize: 13
                    ),
                  ),
                  TextSpan(
                    text: 'name ',
                    style: TextStyle(
                      color: Colors.pink, // Color for "My"
                      fontWeight: FontWeight.bold,
                        fontSize: 13
                    ),

                  ),
                  TextSpan(
                    text: 'Your ',
                    style: TextStyle(
                      color: Colors.orange, // Color for "phone"
                     fontSize: 16
                    ),
                  ),
                  TextSpan(
                    text: 'phone ',
                    style: TextStyle(
                      color: Colors.orange,
                        fontSize: 16
                    ),
                  ),
                  TextSpan(
                    text: 'name',
                    style: TextStyle(
                      color: Colors.orange,
                        fontSize: 16
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
