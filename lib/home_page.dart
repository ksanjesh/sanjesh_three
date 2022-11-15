import 'package:flutter/material.dart';
import 'package:sanjesh_three/details_screen.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String homeTittle ="sanjesh";
  String address = "jp nagar banglore";
  String nameTittle = "jai shree Ram";
  List<String> names = ["sanjesh" ,"ankit" ,"maruti","Sanjesh","Nisha", "Prabhu", "Raju","Bipin","Baba", "Prahalad","Prity","Chhotu","Abhik","Simran","Ravi" ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeTittle),
      ),
      body: ListView(
        children: List.generate(names.length, (i){
         return InkWell(
           onTap: (){
             print([i]);
             Navigator.push(context, MaterialPageRoute(builder:( context)=> DetailScreen(
               name: names[i],
             )));
           },
           child: ListTile(
           title: Text(names[i]),
           subtitle: Text(address),
             leading: const Icon(Icons.person),
             trailing: InkWell(
        onTap: (){

         setState(() {
           names.removeAt(i);
         });
        },
          child: Icon(Icons.delete)),
      ),
         );
      }

      ),
      ),
    );
  }
}
