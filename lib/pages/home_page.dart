import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key}) ;

  @override
  Widget build(BuildContext context) {
  return Scaffold(

    //For the config of the navbar 

    appBar: AppBar(
      backgroundColor: Colors.blue[300],
      title: const Text("Practice on the widgets",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),),
      centerTitle: true,

      //Expression "actions" can to add many and differents icons ! Great, right ?

      actions: const [
        Icon(
          Icons.favorite,
          color: Colors.white,
          semanticLabel: 'HEART',
          size: 30,
        ),
        SizedBox(width: 20),
        Icon(
          Icons.ac_unit_sharp,
          size: 30,
          color: Colors.white,
        )
      ],
    ),

    //Start with the body of the App

    body: Container(
       width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
        color: Colors.amber[200],
       ),

       //Create a child for the next step !

       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container (
            height: 500,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.green[900],
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                //First contain
                Container (
                  height: 150,
                  width: 250,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("lib/images/itadori.png")
                    ),
                  ),
                ),
                
                //Second contain
                Container (
                    height: 150,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.ytimg.com/vi/-G2twGIwkyQ/maxresdefault.jpg")
                    ),
                    ),
                  ),

                  //Third contain
                  Container (
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      image: const DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage("lib/images/megumi.jpg")
                      )
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    ),
  );
  }
}