import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/OTP/otp.dart';
import 'package:whatsapp_ui_clone/widgets/uihelper.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String selectedcountry="Pakistan";
  TextEditingController phonecontroller=TextEditingController();

  List<String> countries=[
    "India",
    "Pakistan",
    "United States",
    "China",
    "Canada",
    "Germany",
    "France",
    "Brazil",
    "Australia",
    "Japan"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: UiHelper.customText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          UiHelper.customText(
            text: "WhatsApp will need to verify your phone",
            height: 14,
            color: Color(0XFF5E5E5E),
          ),
          UiHelper.customText(
            text: "number. Carrier charges may apply.",
            height: 16,
          ),
          UiHelper.customText(
            text: "What’s my number?",
            height: 16,
            color: Color(0XFF00A884)
          ),
SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60),
            child: DropdownButtonFormField(items:countries.map((String country){
                  return DropdownMenuItem(child:Text(country.toString()),value: country,);
            }).toList(), onChanged:(value){
              setState(() {
                selectedcountry=value!;
              });

            },value: selectedcountry,decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884)), // when focused
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF00A884))
              ),
            ),),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+92",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))
                      ),
                        focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))
                    ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884))
                        )
                    ),
                  ),
                ),
              ),
            SizedBox(width: 10,),
            SizedBox(width: 180,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                               keyboardType: TextInputType.number,
                  controller: phonecontroller,
                                 decoration :InputDecoration(
                     enabledBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Color(0XFF00A884))
                     )
                                 )
                                ),
                )
              )

            ],
          )


        ],
      ),
      floatingActionButton: UiHelper.customButton(callback: (){
      Login(phonecontroller.text.toString());
      }, buttonText: "Next",),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  Login(String phoneno){
    if(phoneno==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
      Text("Enter Phone no"),backgroundColor: Color(0XFF00A884),));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen(Phonenummber: phoneno)));
    }
  }
}
