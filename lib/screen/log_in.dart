import 'package:flutter/material.dart';
import 'package:task_2/screen/otp.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Log in",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        //bottomOpacity: 0.0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipOval(

                child: Image.asset(
                  'assets/group26.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              radius: 100,
            ),

            Container(
              margin: EdgeInsets.all(30),

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
                keyboardType: TextInputType.number,
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
                  labelText: 'Phone Number',
                ),
              ),
            ),


            InkWell(
              onTap: (){
                // TODO: add funtion which have Firebass Auth
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Otp()));
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
                    "Get OTP",
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
