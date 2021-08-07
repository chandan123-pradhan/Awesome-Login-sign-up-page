import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
bool isLogin=true;
bool isForgot=false;
bool isSignUp=false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: Get.height / 1,
          width: Get.width / 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/login bg.png",
                  ),
                  fit: BoxFit.fill)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Get.height / 1,
                width: 60,
                child: Column(
                  children: [
                    SizedBox(height:260),
                  isSignUp? Column(
                      children: [
                        Icon(Icons.person_add,size:30,color:Colors.black),
                        Text("Sing up",style:TextStyle(color:Colors.black,fontSize:13,))
                      ],
                    ):  Icon(Icons.lock_open,size:30,color:Colors.black),
                     SizedBox(height:40),
                  isSignUp? Icon(Icons.lock_open,size:30,color:Colors.black):  Column(
                      children: [
                        Icon(Icons.person_add,size:30,color:Colors.black),
                        Text("Sing up",style:TextStyle(color:Colors.black,fontSize:13,))
                      ],
                    )

                  ],
                ),
              ),
              Expanded(
                  child: Container(
                height: Get.height / 1.08,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      isLogin?LoginWidget():Container(),
                     isSignUp?SignUpWidget():Container(),
                      isForgot?ForgotPassword():Container(),
                    ],
                  )
                  
                  
                 
               
               
               
               
                ),
              ))
            ],
          )),
    );
  }






Widget LoginWidget(){
  return  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Icon(Icons.lock,size:60,color:Colors.black),
                    SizedBox(height:30),

                      Text("Explore Us",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 50),
                      Container(
                          width: Get.width / 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.west, size: 30, color: Colors.black),
                              SizedBox(width: 10),
                              Text("Login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            //  width:Get.width/1.2,
                            height: 50,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Username')),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            //  width:Get.width/1.2,
                            height: 50,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password')),
                            )),
                      ),
                      SizedBox(height: 10),
                     
                        
                          InkWell(
                            onTap:(){
                              setState((){
                                isSignUp=false;
                                isLogin=false;
                                isForgot=true;
                              });
                            },
                            child: Text("Forgot Password ?",
                                style: TextStyle(
                                    color: Colors.black,
                                   
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        
                    
                     
                     
                     
                     
                     
                      SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("G",
                              style: TextStyle(
                                  color: Colors.red,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 30),
                          Text("f",
                              style: TextStyle(
                                  color: Colors.blue,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),

SizedBox(height:20),
Container(
  height:50,
  width:Get.width/2.5,
 decoration: BoxDecoration
 (
   borderRadius: BorderRadius.circular(30),
    color:Color(0xFFF2BB66),
     boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
 ),

alignment: Alignment.center,
child:Text("Login",
style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold)
)


),
SizedBox(height:20),
   Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          InkWell(
                            onTap:(){
                              setState((){
                                isSignUp=true;
                                isLogin=false;
                                isForgot=false;
                              });
                            },
                            child: Text("Sing Up",
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                     
                     



                    ],
                  );
               
               
}


Widget ForgotPassword(){
  return  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Icon(Icons.lock,size:60,color:Colors.black),
                    SizedBox(height:30),


                      Text("Explore Us",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 50),
                      Container(
                        alignment: Alignment.center,
                          width: Get.width / 1,
                          child:
                              Text("Forgot passoword",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            
                          ),
                          SizedBox(height:10,),

  Container(
                        alignment: Alignment.center,
                          width: Get.width / 1,
                          child:
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text("Please Enter your email. We'll Share you a passowrd Reset link.",
                                  textAlign: TextAlign.center,
                                  
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              )
                            
                          ),

                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            //  width:Get.width/1.2,
                            height: 50,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'E-mail')),
                            )),
                      ),
                   
                   
   SizedBox(height:30),                
                  
Container(
  height:50,
  width:Get.width/2.5,
 decoration: BoxDecoration
 (
   borderRadius: BorderRadius.circular(30),
    color:Color(0xFFF2BB66),
     boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
 ),

alignment: Alignment.center,
child:Text("Send",
style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold)
)


),
SizedBox(height:20),
InkWell(
  onTap:(){
    setState((){
      isLogin=true;
      isSignUp=false;
      isForgot=false;
    });
  },
  child:   Container(
  
    height:50,
  
    width:Get.width/2.5,
  
   decoration: BoxDecoration
  
   (
  
     borderRadius: BorderRadius.circular(30),
  
      color:Color(0xFFF2BB66),
  
       boxShadow: [
  
                                      BoxShadow(
  
                                        color: Colors.grey.withOpacity(0.5),
  
                                        spreadRadius: 2,
  
                                        blurRadius: 4,
  
                                        offset: Offset(
  
                                            0, 3), // changes position of shadow
  
                                      ),
  
                                    ],
  
   ),
  
  
  
  alignment: Alignment.center,
  
  child:Text("Back",
  
  style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold)
  
  )
  
  
  
  
  
  ),
),


                    ],
                  );
               
               
}







Widget SignUpWidget(){
  return  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.lock,size:60,color:Colors.black),
                    SizedBox(height:30),


                      Text("Explore Us",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 50),
                      Container(
                          width: Get.width / 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.west, size: 30, color: Colors.black),
                              SizedBox(width: 10),
                              Text("Sign Up",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            //  width:Get.width/1.2,
                            height: 50,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Name')),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            //  width:Get.width/1.2,
                            height: 50,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email')),
                            )),
                      ),
                     
                        Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            //  width:Get.width/1.2,
                            height: 50,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password')),
                            )),
                      ),
                     
                     
                     
                     
                     
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          InkWell(
                            onTap:(){
                              setState((){
                                isLogin=true;
                                isSignUp=false;
                                isForgot=false;
                              });
                            },
                            child: Text("Login",
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    
                    
                   
SizedBox(height:40),
Container(
  height:50,
  width:Get.width/2.5,
 decoration: BoxDecoration
 (
   borderRadius: BorderRadius.circular(30),
    color:Color(0xFFF2BB66),
     boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
 ),

alignment: Alignment.center,
child:Text("Signup",
style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold)
)


)



                    ],
                  );
               
               
}





}
