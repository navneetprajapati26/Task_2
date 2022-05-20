import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_2/screen/registerUser.dart';
class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter your OTP",
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
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin1){},
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            )

                        ),
                        hintText: "0",

                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],

                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin2){},
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                        hintText: "0",

                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],

                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value){
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      onSaved: (pin3){},
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        ),
                        hintText: "0",

                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],

                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                      onSaved: (pin4){},
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(30),
                            )

                        ),
                        hintText: "0",

                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                // TODO: add funtion for Verifi Entered OTP
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterUser()));
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
                  "Verifi",
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
