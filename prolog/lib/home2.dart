import 'package:flutter/material.dart';
import 'package:prolog/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 185, 176, 176),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: Text("Home"),
          actions: [
            IconButton(
                onPressed: () {
                  signout(context);
                },
                
                icon: Icon(Icons.exit_to_app),
                ),
                
          ],
        ),
        body: ListView.separated(
          
          
          itemBuilder: (context, index) {
            return ListTile(title: Text("Person $index"),
            subtitle: Text("message $index"),
            leading: CircleAvatar(child: Image.asset("assets/images/abstract--removebg-preview.jpg"),
             ) );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 20,
        ));
  }
}

signout(BuildContext ctx) {
  Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx) =>  MyHomePage()), (route)=>false);
}

