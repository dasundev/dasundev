import 'package:flutter/material.dart';
import '../../../Constants.dart';

class Background extends StatelessWidget {
  const Background({
    Key key, 
    @required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      color: kBackgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: -80,
            top: -100,
            child: Container(
              width: size.width * 0.70,
              height: size.width * 0.70,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(150)),
              child: Center(
                  child: Container(
                padding: EdgeInsets.only(
                    top: kDefaultPadding * 4.5, left: kDefaultPadding * 3),
                child: Text(
                  '<?Signup>',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              )),
            ),
          ),
          child
        ],
      ),
    );
  }
}
