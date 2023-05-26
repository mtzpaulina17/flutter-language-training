import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget{
  
  const CounterScreen({ key }) : super(key: key); 

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;
  
  void increase (){
    counter++;
    setState(() {});
  }

  void decrease (){
    counter--;
    setState(() {});
  }

  void reset (){
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context){

    const fontSize25 = TextStyle(fontSize: 25);
  
    return  Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: CustomFloatingActions(
          increaseFn: increase,
          decreaseFn: decrease,
          resetFn: reset
          ),
    );
  } 
}

class CustomFloatingActions extends StatelessWidget{

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({super.key, 
  required this.increaseFn, 
  required this.decreaseFn, 
  required this.resetFn,
  });

@override
Widget build(BuildContext context){
  return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FloatingActionButton(
              child: const Icon( Icons.exposure_plus_1_outlined),
              onPressed: () => increaseFn(),
            ),

            FloatingActionButton(
              child: const Icon( Icons.exposure_zero),
              onPressed: () => resetFn(),
            ),

            FloatingActionButton(
              child: const Icon( Icons.exposure_minus_1),
              onPressed: () => decreaseFn(),
            ),
          ],
        );
}

}