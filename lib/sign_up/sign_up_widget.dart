import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../congrats/congrats_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SignUpWidget extends StatefulWidget {
  SignUpWidget({Key key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController emailTextController;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.1, -0.85),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment(0.05, 0.05),
                              child: Text(
                                'Create an Account',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 330,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xFFFFA600),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: TextFormField(
                                  controller: emailTextController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Name and Surname',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFFFFA600),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFFFFA600),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 330,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xFFFFA600),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: TextFormField(
                                  controller: textController1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFFFFA600),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFFFFA600),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 330,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xFFFFA600),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: TextFormField(
                                  controller: textController2,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Cell Number',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFFFFA600),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFFFFA600),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.05, -0.15),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          width: 330,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xFFFFA600),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: TextFormField(
                              controller: passwordTextController,
                              obscureText: !passwordVisibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Example: 38#4dhkf',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                  fontWeight: FontWeight.w500,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordVisibility =
                                        !passwordVisibility,
                                  ),
                                  child: Icon(
                                    passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFFFFA600),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFA600),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.05, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final user = await createAccountWithEmail(
                              context,
                              emailTextController.text,
                              passwordTextController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            final displayName = emailTextController.text;
                            final phoneNumber = textController2.text;

                            final userRecordData = createUserRecordData(
                              displayName: displayName,
                              phoneNumber: phoneNumber,
                            );

                            await UserRecord.collection
                                .doc(user.uid)
                                .update(userRecordData);

                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'Home'),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'Sign Up',
                          options: FFButtonOptions(
                            width: 140,
                            height: 40,
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Montserrat',
                              color: Color(0xFFFFA600),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Color(0xFFFFA600),
                              width: 2,
                            ),
                            borderRadius: 30,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Align(
                      alignment: Alignment(0, 0),
                      child: Container(
                        width: 230,
                        height: 44,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final user = await signInWithGoogle(context);
                                  if (user == null) {
                                    return;
                                  }
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 1),
                                      reverseDuration:
                                          Duration(milliseconds: 1),
                                      child: CongratsWidget(),
                                    ),
                                  );
                                },
                                text: 'Sign Up with Google',
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.transparent,
                                  size: 20,
                                ),
                                options: FFButtonOptions(
                                  width: 230,
                                  height: 44,
                                  color: Colors.white,
                                  textStyle: GoogleFonts.getFont(
                                    'Roboto',
                                    color: Color(0xFFFFA600),
                                    fontSize: 17,
                                  ),
                                  elevation: 4,
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFA600),
                                    width: 0,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.83, 0),
                              child: Container(
                                width: 22,
                                height: 22,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFFFA600),
                    ),
                    isIos
                        ? Align(
                            alignment: Alignment(0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final user = await signInWithApple(context);
                                if (user == null) {
                                  return;
                                }
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1),
                                    reverseDuration: Duration(milliseconds: 1),
                                    child: CongratsWidget(),
                                  ),
                                );
                              },
                              text: 'Sign Up with Apple',
                              icon: FaIcon(
                                FontAwesomeIcons.apple,
                                size: 20,
                              ),
                              options: FFButtonOptions(
                                width: 230,
                                height: 44,
                                color: Colors.white,
                                textStyle: GoogleFonts.getFont(
                                  'Roboto',
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                                elevation: 4,
                                borderSide: BorderSide(
                                  color: Color(0xFFFFA600),
                                  width: 0,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.02, 0.96),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeWidget(),
                    ),
                  );
                },
                child: Text(
                  'Already have an Account',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFFFFA600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
