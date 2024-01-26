import 'package:apiin/controller/Homecont.dart';
import 'package:apiin/views/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getapi(),
        builder: (context, AsyncSnapshot snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Details(
                      data: snapshot.data[index],
                    ),));
                  },
                  child: ListTile(
                    leading: Text("${snapshot.data[index]['name']}"),
                  ),
                );
              },);
          }
          else{
            return CircularProgressIndicator();
          }
        },),
    );
  }
}