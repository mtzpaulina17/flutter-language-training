import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  
  const HomeScreen({ key }) : super(key: key); 

  @override
  Widget build(BuildContext context){

    const fontSize25 = TextStyle(fontSize: 25);
    int counter = 0;

    return  Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Numero de clicks", style: fontSize25),
              Text( counter.toString(), style: fontSize25),
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: const Icon( Icons.add),
          onPressed: () {
          counter++;
          },
        ),
    );
  } 
}