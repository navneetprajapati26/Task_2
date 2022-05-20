import 'package:flutter/material.dart';
import 'package:task_2/screen/home.dart';
class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register user ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        shadowColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // for Name
            Container(
              margin: EdgeInsets.all(15),

              decoration: BoxDecoration(
                  //color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(30),
                  )
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(30),
                      )

                  ),
                  // hintText: "Phone Number",
                  labelText: 'Name',
                ),
              ),
            ),

            //for Email ID
            Container(
              margin: EdgeInsets.all(15),

              decoration: BoxDecoration(
                  //color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(30),
                  )
              ),
              child: TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(30),
                      )

                  ),
                  // hintText: "Phone Number",
                  labelText: 'Email Address',
                ),
              ),
            ),


            SizedBox(height: 20,),

            // Btn for Create Account
            InkWell(
              onTap: (){
                // TODO: add funtion for Save user data and go Home :-)
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.amber,

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(30),),
                ),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
