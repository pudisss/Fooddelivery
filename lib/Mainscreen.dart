import 'dart:ui';

import "package:flutter/material.dart";
import "screens/login.dart";


class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          
          color: Color.fromRGBO(255, 70, 10, 1),
          child: Column(
            children: [
              Container(
                width: 73,
                height: 73,
                margin: EdgeInsets.only(top: 50, right: MediaQuery.of(context).size.width * 0.6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset("assets/images/chef.png")
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 25, top: 50),

                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Food for", style: TextStyle(fontFamily: "SF rounded", fontSize: 65, fontWeight: FontWeight.w900, color: Colors.white,))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Everyone", style: TextStyle(fontFamily: "SF rounded", fontSize: 65, fontWeight: FontWeight.w900, color: Colors.white))
                    )
                  ]
                )
              ),
              Container(
                child: Image.asset("assets/images/welcomepage.png")
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login()
                      )
                    );
                  },
                  child: Container(
                    width: 314,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(
                      child: Text("Get started", style: TextStyle(fontFamily: "SF", fontSize: 17, fontWeight: FontWeight.w600, color: Color.fromRGBO(255, 70, 10, 1)))
                    )
                  )
                )
              )
            
            ]
          )
        )
      )
    );
  }
}