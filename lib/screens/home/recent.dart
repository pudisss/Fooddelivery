import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/widgets.dart";
import "../../data.dart";

class Recent extends StatefulWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  
  
  @override
  Widget build(BuildContext context) {
   
    for (var i=0; i<cart.length; ++i) {
      for (var j in cart["Product$i"]) {
        values.add(j);
      }
    }
    
   return Scaffold(
     appBar: AppBar(
       leading: GestureDetector(
         onTap: () => Navigator.pop(context),
         child: Icon(Icons.arrow_back_ios_new, color: Colors.black),
       ),
       backgroundColor: Color.fromRGBO(245, 245, 248, 1),
       elevation: 0,
       title: Text("History", style: TextStyle(fontFamily: "SF", fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500))
     ),
     body: Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       color: Color.fromRGBO(245, 245, 248, 1),
       child: cart.isEmpty ? Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             child: Image.asset('assets/images/history.png')
           ),
           Container(
             child: Text("No History Yet", style:TextStyle(fontFamily: "SF", fontSize: 28, color: Colors.black.withOpacity(0.3), fontWeight: FontWeight.w600))
           ),
           Container(
             width: 220,
             height: 40,
             child: Text("Hit the orange button down below to Create an order",textAlign: TextAlign.center, style: TextStyle(fontFamily: "SF", fontSize: 17, color: Colors.black.withOpacity(0.3), fontWeight: FontWeight.w600))
           )
         ]
       ): Container(
         width: MediaQuery.of(context).size.width,
         child: ListView.builder(
           scrollDirection: Axis.vertical,
           itemCount: cart.length,
           itemBuilder: (context, i) {
             return Container(
               child: Row(
                 children: [
                   Container(
                     width: 200,
                     height: 200,
                     child: Image.asset(values[0])
                   ),
                   Container(
                     child: Column(
                       children: [
                         Container(
                           child: Text(values[1], style: TextStyle(fontFamily: "SF rounded", fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600))
                         ),
                         Container(
                           child: Text(values[2], style: TextStyle(fontFamily: "SF rounded", fontSize: 15, color: Color.fromRGBO(250, 74, 12, 1)))
                         )
                       ]
                     )
                   )
                 ]
               )
             );
             
           }
         )
       )
     )
   ); 
  }
}