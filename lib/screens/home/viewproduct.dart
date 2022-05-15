import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/widgets.dart";
import "../../data.dart";


class ViewProduct extends StatefulWidget {
  final filepath;
  final title;
  final price;

  ViewProduct(this.filepath, this.title, this.price);

  @override
  State<ViewProduct> createState() => _ViewProductState(this.filepath, this.title, this.price);
}

class _ViewProductState extends State<ViewProduct> {
  final filepath;
  final title;
  final price;

  void addtocart({required filepath, required title, required price}) {
    var data = [filepath, title, price];

    cart["Product${cart.length}"] = data;
    

  }
  _ViewProductState(this.filepath, this.title, this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(246, 246, 249, 1),
        elevation: 0,
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/heart.png")
          )
        ]

      ),
      body: SingleChildScrollView(
        child: Container(
          
          color: Color.fromRGBO(246, 246, 249, 1),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset(filepath)
              ),
              Container(
                child: Image.asset('assets/images/scroll.png')
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(title, style: TextStyle(fontFamily: "SF rounded", fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black))
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(price, style: TextStyle(fontFamily: "SF rounded", fontSize: 22, fontWeight: FontWeight.w700, color: Color.fromRGBO(250, 74, 12, 1)))
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50, left: 25),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Delivery Info", style: TextStyle(fontFamily: "SF rounded",fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 50),
                      width: 297,
                      height: 77,
                      child: Text("Delivered between monday aug and thursday 20 from 8pm to 91:32 pm", style: TextStyle(fontFamily: "SF", fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black.withOpacity(0.3)))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Return Policy", style: TextStyle(fontFamily: "SF rounded", fontSize: 17, color:Colors.black, fontWeight: FontWeight.w600))
                    ),
                    Container(
                      width: 297,
                      height: 80,
                      margin: EdgeInsets.only(right: 50, top: 10),
                      child: Text("All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.", style: TextStyle(fontFamily: "SF", fontSize: 15, color: Colors.black.withOpacity(0.3), fontWeight: FontWeight.w400))
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 40, bottom: 20),
                      child: GestureDetector(
                        onTap: () => addtocart(filepath: filepath, title: title, price: price),
                        
                        child: Container(
                          width: 314,
                          height: 70,
                          
                          
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 74, 12, 1),
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Center(
                            child: Text("ADD TO CART", style: TextStyle(fontFamily: "SF rounded", fontSize: 17, color: Colors.white, fontWeight: FontWeight.w600))
                          )
                        )
                      )
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}