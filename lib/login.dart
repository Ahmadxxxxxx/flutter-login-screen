import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // ignore: non_constant_identifier_names
  Color Purple=const Color.fromRGBO(126, 81, 200, 1);
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordcontainer=TextEditingController();
  bool showpass=true;
  bool rememberme=true;
  int fbpressed=0;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold( //a widget in Flutter used to implements the basic material design visual layout structure
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, //la nshil el 5at te3 el appbar w nedmeja ma3 el body
        // ignore: prefer_const_constructors
        title: Text(
          'LOG IN',
          style:const TextStyle(
            fontSize: 20,
            letterSpacing: 0.5,
            color:Color.fromRGBO(126, 81, 200, 1),
            
          ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon:Icon(
              Icons.arrow_back,
              color:Purple,
            ), onPressed: () { },

          ),
      ),
      body:ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(
            height: 10,
          ),
          // ignore: prefer_const_constructors
          Center(
            child: const Text(
            'Learning App ',
            style:TextStyle(
              fontSize: 26,
              letterSpacing: 0.5,
              color:Color.fromRGBO(126, 81, 200, 1),

            ),
            //textAlign: TextAlign.center,
            ),
            
          ),
          //  SizedBox(
          //   height: 50,
          // ),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 50, 25, 35), //Margin means the spacing outside of the border, while padding is the spacing inside of the border
            child: const Text(
              'Enter your login details to access your account ',
              textAlign:TextAlign.center,
              style:TextStyle(
                fontSize: 23,
                letterSpacing: 0.5,
                color:Color.fromRGBO(126, 81, 200, 1),
              ),
              //textAlign: TextAlign.center,
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    if(fbpressed==0){
                      fbpressed=1;
                    }
                    else{
                      fbpressed=0;
                    }
                  });
                },
                child: Container(
                  width: 150,
                  height:50,
                  decoration: BoxDecoration(
                    color:fbpressed==0 ? Colors.blue :Colors.red,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  //padding:const EdgeInsets.fromLTRB(25, 15, 25, 15),
              
                  //margin:const EdgeInsets.only(left:25),
                  child:const Center(
                    child: Text(
                      'Facebook',
                      style:TextStyle(
                        fontSize: 20,
                        color:Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              //this is google bich
              Container(
                width: 150,
                height:50,
                
                decoration: BoxDecoration(
                  color:Colors.orange,
                  borderRadius: BorderRadius.circular(15)
                  
                ),
                //padding:const EdgeInsets.fromLTRB(25, 15, 25, 15),

                //margin:const EdgeInsets.only(left:25),
                child:const Center(
                  child: Text(
                    'Google',
                    style:TextStyle(
                      fontSize: 20,
                      color:Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            padding:const EdgeInsets.only(left: 15),
            width:MediaQuery.of(context).size.width, //take the width of all the screen
            margin:const EdgeInsets.symmetric(horizontal: 25),
            decoration:BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                color:Purple, 
                width: 1.5,
              ),

            ),
            child: TextField(
              decoration: const InputDecoration(
                border:InputBorder.none,
                hintText:'EMAIL',
              ),
              controller: emailController,
             
            ),
            
          ),
          const SizedBox(
            height: 20,
          ),

          Container(
            height: 50,
            padding:const EdgeInsets.only(left: 15),
            width:MediaQuery.of(context).size.width,
            margin:const EdgeInsets.symmetric(horizontal: 25),
            decoration:BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                color:Purple, 
                width: 1.5,
              ),

            ),
            child: TextField(
              obscureText: showpass,
              decoration: InputDecoration(
                border:InputBorder.none,
                suffixIcon: IconButton(
                  splashColor: Purple,
                  icon:showpass==true?  Icon(Icons.remove_red_eye,
                  color: Purple,):const Icon(Icons.remove_red_eye_rounded),
                   onPressed: () { 
                    setState(() {
                      showpass=!showpass;
                      
                    });
                    },
                  
                ),
                hintText:'Password',
              ),
              controller: passwordcontainer,
             
            ),
            
          ),

           const SizedBox(
            height: 20,
          ),

          Row(
            
            children: [
              const SizedBox(
            width: 25,
          ),
         
              Checkbox(
                value: showpass,
                 onChanged: ((value) {
                  setState(() {
                    rememberme=!rememberme;
                  });
                 
                
              })),
              const SizedBox(
                width:0,
                ),
               const Text(
                'Remember me?',
                //textAlign: TextAlign.start,
                style:TextStyle(
                  fontSize: 16,
                  color:Color.fromRGBO(126, 81, 200, 1),                 
                ),
              ),

              const SizedBox(
                width:50,
                ),
                GestureDetector(
                  onTap: () {
                    // ignore: avoid_print
                    print('forget password pressed');
                   
                  },
                  child: const Text(
                  'Forget Password?',
                  //textAlign: TextAlign.start,
                  style:TextStyle(
                    fontSize: 16,
                    color:Colors.orange,
                                     
                  ),
                              ),
                ),

            ],
          ),
          const SizedBox(
            height: 20,

          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60), //Margin means the spacing outside of the border, while padding is the spacing inside of the border
            height: 45,
            width: MediaQuery.of(context).size.width,
            
                
                decoration:BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Purple,
              // border: Border.all(
              //   color:Purple, 
              //   width: 1.5,
              // ),

            ),
            child: const Center(
              child: Text(
                'Log in with your account',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 90,

                  ),
                  Text(
                  'Dont have an Account?',
                  style: TextStyle(
                    color: Purple,
                    fontSize: 16,
                  ),
                ),
                 const SizedBox(
                    width:15,

                  ),
                  const Text(
                  'Create one',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                  ),
                ),

                ]
              ),    
        ],
      ),
    );
  }
}