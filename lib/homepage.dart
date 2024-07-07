import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_example/main.dart';
class Homepage extends StatelessWidget {
  Homepage({super.key});

    void incrementCounter(BuildContext context){
Provider.of<Counter>(context, listen: false).incrementCounter();
  }
 
  @override
  Widget build(BuildContext context) {
       var counter = Provider.of<Counter>(context).getCounter;
      

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider statemanageent"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("You have pushed button this many time:",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),
          Text("$counter",style: TextStyle(
            fontSize: 30,
            color: Colors.blueGrey

          ),),
          ElevatedButton(onPressed: () => incrementCounter(context),
           child:Icon(Icons.add,size: 20,))
        ],
      ),
    );
  }
}