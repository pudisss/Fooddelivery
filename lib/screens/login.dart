import "package:flutter/material.dart";
import "homepagenavigation.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    bool press = false;
    bool press2 = false;
    
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(242, 242, 242, 1),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.height,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.black.withOpacity(0.3)
                  )
                ]


              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    
                    child: Image.asset('assets/images/cheflogin.png')
                  ),
                  Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              press = !press;
                              print(press);
                            });
                          },
                          
                          child: Text("Login", style: TextStyle(fontFamily: "SF", fontSize: 18, color: press ? Color.fromRGBO(250, 74, 12, 1): Colors.black, fontWeight: FontWeight.w600))
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              press2 = !press2;
                              print(press2);
                            });
                          },
                          
                          child: Text("Sign up", style: TextStyle(fontFamily: "SF", fontSize: 18, color: press2 ? Color.fromRGBO(250, 74, 12, 1): Colors.black, fontWeight: FontWeight.w600))
                        )
                      ]
                    )
                  )

                ]
              )

            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Email Address", style: TextStyle(fontFamily: "SF", fontSize: 15, color: Colors.black.withOpacity(0.3), fontWeight: FontWeight.w600))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 314,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your email",
                          hintStyle: TextStyle(fontFamily: "SF", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
                          border: UnderlineInputBorder(),

                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    alignment: Alignment.centerLeft,
                    child: Text("Password", style: TextStyle(fontFamily: "SF", fontSize: 16, color: Colors.black.withOpacity(0.3), fontWeight: FontWeight.w600))
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 5),
                    child: SizedBox(
                      width: 314,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                        
                          hintText: "Enter your password",
                          hintStyle: TextStyle(fontFamily: "SF", fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
                          border: UnderlineInputBorder()
                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      child: Text("Forgot password", style: TextStyle(fontFamily: "SF", fontSize: 17, color: Color.fromRGBO(250, 74, 12, 1), fontWeight: FontWeight.w600))
                    )
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 20, top: 50),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homepagenavigation()
                          )
                        );
                      },
                      child: Container(
                        width: 314,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 74, 12, 1),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text("Login", style: TextStyle(fontFamily: "SF", fontSize: 17, color: Colors.white, fontWeight: FontWeight.w600))
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
    );
  }
}