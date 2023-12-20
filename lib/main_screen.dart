import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget{

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
   return _MainScreen();
  }
}


class _MainScreen extends State<MainScreen>{

  final _num1controller=TextEditingController();
  final _num2controller=TextEditingController();
  dynamic ans;

  void add(){
    setState(() {
      ans=double.parse(_num1controller.text)+double.parse(_num2controller.text);  
    });
  }

  void sub(){
    setState(() {
      ans=double.parse(_num1controller.text)-double.parse(_num2controller.text);  
    });
  }

  void mul(){
    setState(() {
      ans=double.parse(_num1controller.text)*double.parse(_num2controller.text);  
    });
  }

  void div(){
    setState(() {
      ans=double.parse(_num1controller.text)~/double.parse(_num2controller.text);  
    });
  }

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home:  Scaffold(
        body: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[

           Text('Answer= $ans',style: const TextStyle(fontSize:25)),
           const SizedBox(height: 5),
          Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: _num1controller,
            decoration:  const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter first number',
            ),
            style: const TextStyle(fontSize:20),
          ),
        ),
        const SizedBox(height: 5)
        ,
        Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: _num2controller,
            decoration:  const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter second number',
            ),
            style: const TextStyle(fontSize:20 ),
          ),
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: add, child: const Icon(Icons.add)),
            ElevatedButton(onPressed: sub, child: const Icon(Icons.remove))
          ],
        ),
        const SizedBox(height:20),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: div,
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  child: const Text('/'),
                ),
                ElevatedButton(
                  onPressed: mul,
                  child: const Icon(Icons.close),
                )
              ],
            )
        ]),
      ),
    );
  }
}