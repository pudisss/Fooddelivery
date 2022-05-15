import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/widgets.dart";
import "package:animations/animations.dart";
import "viewproduct.dart";


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> listviewtext = [
    "Foods",
    "Drinks",
    "Snacks",
    "Saurce",
  ];

  List<String> listviewfilepath = [
    "assets/images/listview1.png",
    "assets/images/listview2.png"
  ];

  double listviewwidth = 70;
  double listviewheight = 35;

  List<String> listviewtitle = [
    "Veggie Tomato Mix",
    "Spicy fish sauce"
  ];

  List<String> listviewprice = [
    "N1,900",
    "N2,300.99"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset('assets/images/menu.png')
        ),
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        elevation: 0,
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/shop.png")
          )
        ]
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(242, 242, 242, 1),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20, top: 40),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Delicious", style: TextStyle(fontFamily: "SF rounded", fontSize: 34, fontWeight: FontWeight.w700))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("food for you", style: TextStyle(fontFamily: "SF rounded", fontSize: 34, fontWeight: FontWeight.w700, color: Colors.black))
                    ),
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 314,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: "Search",
                      hintStyle: TextStyle(fontFamily: "SF rounded", fontSize: 17, color: Colors.black.withOpacity(0.35), fontWeight: FontWeight.w600),

                      fillColor: Color.fromRGBO(239, 238, 238, 1),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      )
                    )
                  )
                )
              ),
              Container(
                height: 35,
                width: 350,
                margin: EdgeInsets.only(top: 30, left: 100),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return Container(
                      height: 35,
                      width: 70,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(250, 74, 12, 1),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text(listviewtext[i], style: TextStyle(fontFamily: "SF rounded", fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white))
                      )
                    );
                  }
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 25),
                child: AnimatedContainer(
                duration: Duration(milliseconds: 600),
                

                height: 321,
                child: ListView.builder(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return 
                      
                    
                      
                     GestureDetector(
                       onTap: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => ViewProduct(listviewfilepath[i], listviewtitle[i], listviewprice[i])
                           )
                         );
                       },
                       child: Container(
                      height: 321,
                      width: 220,
                      margin: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(20, 20)
                          ),
                          BoxShadow(
                            blurRadius: 40,
                            color: Colors.white,
                            offset: Offset(-20, -20)
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset(listviewfilepath[i])
                          ),
                          Spacer(),
                          Container(
                            child: Text(listviewtitle[i], style: TextStyle(fontFamily: "SF rounded", fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black))

                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 20),
                            child: Text(listviewprice[i], style: TextStyle(fontFamily: "SF rounded", fontSize: 17, fontWeight: FontWeight.w700, color: Color.fromRGBO(250, 74, 12, 1)))
                          )
                          
                        ]
                      )
                    ));
                  }
                )
              )
          )]
          )
        )
      )
    );
    
  }
}