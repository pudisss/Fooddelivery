import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/widgets.dart";

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> columnfilepath = [
    "assets/images/card.png",
    "assets/images/bank.png",
    "assets/images/paypal.png",


  ];
  List<String> columntitle = [
    "Card",
    "Bank",
    "Paypal",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(245, 245, 248, 1),
        elevation: 0,
        title: Text("My profile", style: TextStyle(fontFamily: "SF", fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(245, 245, 248, 1),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Text("Information", style: TextStyle(fontFamily: "SF", fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black,))
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 315,
                height: 133,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                child: Row(
                  
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Image.asset('assets/images/profile.png'),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,

                            child: Text("Marvis Ighedosa", style: TextStyle(fontFamily: "SF rounded", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("dosamarvis@gmail.com", style: TextStyle(fontFamily: "SF rounded", fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.3)))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 191,
                            height: 32,
                            child: Text("No 15 uti street off ovie palace road effurun delta state",textAlign: TextAlign.center, style: TextStyle(fontFamily: "SF rounded", fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.3)))
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 20 ),
                alignment: Alignment.centerLeft,
                child: Text("Payment Method", style: TextStyle(fontFamily: "SF rounded", fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black))
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 315,
                height: 231,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                ),
                
              )
            ]
          )
        )
      )
    );
  }
}