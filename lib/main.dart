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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
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
