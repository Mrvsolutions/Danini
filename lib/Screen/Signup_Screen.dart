import 'package:danini/Comman/ColorFile.dart';
import 'package:danini/Comman/stringfile.dart';
import 'package:danini/Screen/Dashboard/Dashboard.dart';
import 'package:danini/Screen/login_scree.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Signup_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Sign up",
                style: TextStyle(
                  color: dPrimeryColors,
                  fontSize: 26,
                  fontFamily: 'GothaPro',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 220,
              decoration: BoxDecoration(
                color: dSecondaryColors,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 20),
            BuildTextField(
              hint: 'Username',
              mIcon: Icons.person_outline_outlined,
              dSuffixIcon: Icons.person_outline_outlined,
              isEnable: false,
            ),
            SizedBox(height: 20),
            BuildTextField(
              hint: 'email',
              mIcon: Icons.mail_outline,
              dSuffixIcon: Icons.check_box_rounded,
              isEnable: false,
            ),
            SizedBox(height: 20),
            BuildTextField(
              hint: 'password',
              mIcon: Icons.lock_open_sharp,
              dSuffixIcon: Icons.visibility_off,
              isEnable: true,
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  forgotPassword,
                  style: TextStyle(
                      color: dPrimeryColors,
                      fontFamily: 'GothaPro',
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) => Dashboard()),
                    (Route<dynamic> route) => false);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: dPrimeryColors,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  signUp,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'GothaPro',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text(
                orViaSocialMedia,
                style: TextStyle(
                    color: dSecondaryColors,
                    fontSize: 12,
                    fontFamily: 'GothaPro',
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildLoginSources('assets/ic_google.png', context),
                buildLoginSources('assets/ic_facebook.png', context),
                buildLoginSources('assets/ic_twitter.png', context),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  alreadyHaveAccount,
                  style: TextStyle(
                      color: colorbottomtext,
                      fontFamily: 'GothaPro',
                      fontWeight: FontWeight.w300),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()),
                        (Route<dynamic> route) => false);
                  },
                  child: Text(
                    signIn,
                    style: TextStyle(
                        color: dPrimeryColors,
                        fontFamily: 'GothaPro',
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildLoginSources(String imagePath, BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        border: Border.all(color: dSecondaryColors, width: 0.5),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          scale: 14,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }
}

class BuildTextField extends StatelessWidget {
  final IconData mIcon;
  final IconData dSuffixIcon;
  final String hint;
  final bool isEnable;

  const BuildTextField(
      {Key? key,
      required this.mIcon,
      required this.dSuffixIcon,
      required this.hint,
      required this.isEnable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          textAlign: TextAlign.start,
          style: TextStyle(
              color: dPrimeryColors,
              fontSize: 15,
              fontFamily: 'GothaPro',
              fontWeight: FontWeight.w300),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            icon: Icon(mIcon),
            suffixIcon: IconButton(
              icon: Icon(dSuffixIcon, size: 18),
              onPressed: isEnable ? () {} : null,
              //splashColor: Colors.transparent,
            ),
          ),
        ),
        Container(
          height: 0.2,
          decoration: BoxDecoration(color: dSecondaryColors),
        )
      ],
    );
  }
}
