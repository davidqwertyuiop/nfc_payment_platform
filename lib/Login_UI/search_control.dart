import 'package:flutter/material.dart';

class SearchControl extends StatefulWidget {
  const SearchControl({super.key});

  @override
  SearchControlState createState() =>  SearchControlState();
}

class  SearchControlState extends State <SearchControl> with SingleTickerProviderStateMixin{
 
  late Animation<double> animation;
  late AnimationController animController;
 bool isForward = false;


  @override
  void initState(){
    super.initState();

    animController = AnimationController(duration: const Duration(milliseconds: 200,), vsync: this);
    final curvedAnimation = CurvedAnimation(parent: animController, curve: Curves.easeOutExpo);
    animation = Tween<double>(begin: 0, end: 0).animate(curvedAnimation)
    ..addListener((){setState(() {
 
    });});
    }
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Set the end value of the animation to 80% of the screen width
    double searchBarWidth = screenWidth * 0.57;
    
    animation = Tween<double>(begin: 0, end: searchBarWidth).animate(animController);

    return 
  SizedBox(
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(width: animation.value, height: 50,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 120, 117, 117), borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)) ),
        child: const Padding(
          padding: EdgeInsets.only(left: 20, bottom: 5),
          child: TextField(cursorColor: Colors.white,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(border: InputBorder.none),),),),
          Container(width: 50, height: 50, decoration: BoxDecoration(color: const Color.fromARGB(255, 120, 117, 117), 
          borderRadius: animation.value > 1 ?
           const BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(0), bottomRight: Radius.circular(50), topRight: Radius.circular(50)):BorderRadius.circular(50),),
          child: IconButton(icon:const Icon(Icons.search, color: Colors.white,),
          onPressed: () {
            if(!isForward){
              animController.forward(); 
              isForward = true;
              }else{animController.reverse(); isForward = false;}  },),)
          ],//children
          ),);
  }
}