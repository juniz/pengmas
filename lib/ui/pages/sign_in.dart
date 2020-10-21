part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordVaild = false;
  //bool isSigningIn = false;
  bool visible = false;

  Future userLogin() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;

    // SERVER LOGIN API URL
    var url =
        'http://rsiaisyiyahnganjuk.com/infy/public/index.php/api/penggunas';

    // Store all data with Param Name.
    var data = {"email": email, "password": password};

    // Starting Web API Call.
    var response = await http.post(url, body: data);

    // Getting Server response into variable.
    var map = jsonDecode(response.body);
    var message = map["message"];
    var res = map["data"];

    // If the Response Message is Matched.
    if (message == 'Login Berhasil') {
      // Hiding the CircularProgressIndicator.
      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setString("email", res[0]['email']);
      await prefs.setString("nama", res[0]['nama']);
      await prefs.setInt("id", res[0]['id']);
      await prefs.setBool("isSigningIn", true);
      setState(() {
        visible = false;
      });

      context.bloc<PageBloc>().add(GoToMainPage());

      // Navigate to Profile Screen & Sending Email to Next Screen.
      /*
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  home(email: emailController.text)));*/
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      setState(() {
        visible = false;
      });

      // Showing Alert Dialog with Response JSON Message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Email atau Password Salah"),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  // final String assetName = "assets/images/newpack/7 SCENE.svg";
  // final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Image Sign In');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(color: accentColor4),
      SafeArea(
          child: Container(
        color: Colors.white,
      )),
      Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 200,
                  width: 400,
                  // child: Image.asset(),
                  child: Image(
                      image: AssetImage("assets/images/newpack/7 SCENE.png")),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 40),
                  child: Text(
                    "Halo, Apa Kabar?",
                    style: blackTextFont.copyWith(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        isEmailValid = EmailValidator.validate(text);
                      });
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Email",
                      hintText: "Email",
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        isPasswordVaild = text.length >= 6;
                      });
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Password",
                      hintText: "Password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Center(
                  child: Container(
                    width: 250,
                    height: 50,
                    margin: EdgeInsets.only(top: 40, bottom: 30),
                    child: RaisedButton(
                      child: Text(
                        "Masuk",
                        style: whiteTextFont.copyWith(fontSize: 16),
                      ),
                      color: mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed:
                          userLogin, /*() {
                        context.bloc<PageBloc>().add(GoToMainPage());
                      },*/
                    ),
                  ),
                ),
                Visibility(
                    visible: visible,
                    child: Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: CircularProgressIndicator())),
                Padding(
                  padding: const EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Pengguna Baru? ",
                        style:
                            greyTextFont.copyWith(fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Mulai sekarang juga",
                        style: purpleTextFont,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ]));
  }
}
