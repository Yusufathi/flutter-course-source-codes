import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Portfolio'),
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
  String enteredEmail = "";
  String enteredName = "";
  String enteredPhone = "";

  void onSubmitPress(){
    print(enteredName);
    print(enteredPhone);
    print(enteredEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Blah bblah"),
                Image.asset("images/kevin.jpg",width: 100,height: 100,),
              ],
            ),
            SizedBox(height: 50,),
            TextField(
              onChanged: (String str) {
                enteredName = str;
              },
            ),
            SizedBox(height: 50,),
            TextField(
              onChanged: (String str) {
                enteredEmail = str;
              },
            ),
            SizedBox(height: 50,),
            TextField(
              onChanged: (String str) {
                enteredPhone = str;
              },
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                onSubmitPress();
              },
              child:const Text("Submit !"),
            ),
          ],
        ),
      ),
    );
  }


}
