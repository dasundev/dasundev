import 'package:flutter/material.dart';

import '../../Constants.dart';

class MyFlatButton extends StatelessWidget {
  const MyFlatButton({
    Key key,
    this.pressed,
    this.name,
  }) : super(key: key);

  final Function pressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FlatButton(
      highlightColor: Colors.white,
      splashColor: Colors.white,
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.70,
        height: size.height * 0.07,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
        child: Text("$name",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600)),
      ),
      onPressed: pressed,
    );
  }
}

class MyPasswordField extends StatelessWidget {
  const MyPasswordField({
    Key key,
    this.hintText,
    this.keybordType,
    this.suffixIcon,
  }) : super(key: key);

  final String hintText;
  final TextInputType keybordType;
  final bool suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: suffixIcon
          ? InputDecoration(
              hintText: "$hintText",
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility_outlined, color: Colors.black45),
                onPressed: () {
                  print('Clicked');
                },
              ),
              focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.black, width: 1)))
          : InputDecoration(
              hintText: "$hintText",
              focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.black, width: 1))),
      keyboardType: keybordType,
      obscureText: true,
      style: TextStyle(
          fontSize: 20, color: kTextColor, fontWeight: FontWeight.w400),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key key,
    this.hintText,
    this.keybordType,
  }) : super(key: key);

  final String hintText;
  final TextInputType keybordType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "$hintText",
          focusedBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Colors.black, width: 1))),
      keyboardType: keybordType,
      style: TextStyle(
          fontSize: 20, color: kTextColor, fontWeight: FontWeight.w400),
    );
  }
}
