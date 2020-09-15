part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 22),
                  height: 56,
                  child: Stack(
                    children: <Widget>[
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       context.bloc<PageBloc>().add(GoToSplashPage());
                      //     },
                      //     child: Icon(Icons.arrow_back, color: Colors.black),
                      //   ),
                      // ),
                      Center(
                        child: Text(
                          "Buat akun barumu disini",
                          style: blackTextFont.copyWith(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90,
                  height: 104,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    (AssetImage("assets/images/user_pic1.png")),
                                fit: BoxFit.cover)),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            // if (widget.registrationData.profileImage ==
                            //     null) {
                            //   widget.registrationData.profileImage =
                            //       await getImage();
                            // } else {
                            //   widget.registrationData.profileImage = null;
                            // }

                            setState(() {});
                          },
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        ("assets/images/btn_add_photo.png")))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: TextField(
                    // controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Nama lengkap",
                        hintText: "Nama lengkap"),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: TextField(
                    // controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Email",
                        hintText: "Email"),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: TextField(
                    // controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Password",
                        hintText: "Password"),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: TextField(
                    // controller: retypePasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Confirm Password",
                        hintText: "Confirm Password"),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  height: 50,
                  margin: EdgeInsets.only(top: 40, bottom: 30),
                  child: RaisedButton(
                    child: Text(
                      "Daftar",
                      style: whiteTextFont.copyWith(fontSize: 16),
                    ),
                    color: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UserProfile();
                      }));
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
