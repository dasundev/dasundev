import 'package:dasundev/constants.dart';
import 'package:dasundev/screens/Login/login_screen.dart';
import 'package:dasundev/shared/components/my_form_fields.dart';
import 'package:flutter/material.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: EdgeInsets.only(top: kDefaultPadding * 15),
        child: Container(
          width: size.width * 0.90,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                MyTextField(
                  hintText: "Name",
                  keybordType: TextInputType.name,
                ),
                MyTextField(
                  hintText: "Email",
                  keybordType: TextInputType.emailAddress,
                ),
                MyPasswordField(
                  hintText: "Password",
                  keybordType: TextInputType.emailAddress,
                  suffixIcon: true

                ),
                MyPasswordField(
                  hintText: "Re-Password",
                  keybordType: TextInputType.emailAddress,
                  suffixIcon: false
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                    width: double.infinity,
                    child: GestureDetector(
                      child: Text(
                        'Already a buyer? Log In',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginScreen()));
                      },
                    )),
                SizedBox(
                  height: 50,
                ),
                MyFlatButton(
                  name: "Sign Up",
                  pressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
