import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:videochat/authentication.dart';
import 'login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

    List images = [
      "f.png", "g.png", "t.png"
    ];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 0.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/signup.png"),
                      fit: BoxFit.cover,
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: h * 0.124,),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      backgroundImage: AssetImage("img/profile1.png"),
                      radius: 60,
                    ),
                  ],
                )


              ),


              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 50,),

                    Container(

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1,1),
                                color: Colors.grey.withOpacity(0.2)
                            )
                          ]
                      ),
                      child: TextField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email, color: Colors.deepOrangeAccent,),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                )
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 7,
                                offset: Offset(1,1),
                                color: Colors.grey.withOpacity(0.2)
                            )
                          ]
                      ),
                      child: TextField(
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password_rounded, color: Colors.deepOrangeAccent,),

                            focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                )
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                  ],
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  AuthController.instance.register(emailcontroller.text.trim(), passwordcontroller.text.trim());
                },
                child: Container(
                  width: w * 0.4,
                  height: h * 0.07,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("img/loginbtn.png"),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),

              RichText(
                  text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>LoginPage()),
                text: "Have an account ?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                    )
              ),
              ),

              SizedBox(height: w * 0.1,),

              RichText(text: TextSpan(
                  text: "signup using one of following method",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[500],
                  ),
              ),
              ),
              Wrap(
                children: List<Widget>.generate(3,
                        (index) {
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.greenAccent,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "img/" + images[index]
                        ),
                      ),
                    ),
                  );
                }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
