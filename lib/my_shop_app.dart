import 'package:flutter/material.dart';

class MyShopApp extends StatefulWidget{
  const MyShopApp({super.key});

  @override
  State<MyShopApp> createState() => MyShopAppState();

}


class MyShopAppState extends State<MyShopApp>{

 @override
 Widget build(BuildContext context){
  return MaterialApp(

    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
       iconTheme: IconThemeData(color: Colors.white),
        leading: Icon(Icons.arrow_back_outlined,size: 40, ),
        title: Center(
          child: Text('myshop',
          style: TextStyle( fontSize: 40,color:Colors.white,
          ),)),
        actions: [
            Icon( Icons.add_shopping_cart_outlined,size: 40, ) ],
    ),
      body: Stack(
      
        children:<Widget> [
          
          Positioned(
            top: 20,
            right: 20,
      
            child:FloatingActionButton(onPressed:(){},
            backgroundColor: Colors.green,
           tooltip: 'click me',
                child: Icon(Icons.switch_right,
                color: Colors.white,),)
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child:FloatingActionButton(onPressed:(){},
            backgroundColor: Colors.red,
                tooltip: 'plus button',
                child: Icon(Icons.add, color: Colors.white,),
            ),
            
          ),
        ],
      ),  
    ),
  );
 }
}