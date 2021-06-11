import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../sign_up/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeWidget extends StatefulWidget {
  WelcomeWidget({Key key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  TextEditingController emailController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
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
              alignment: Alignment(0.06, 0.03),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xFFFFA600),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment(0, -0.65),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                    child: TextFormField(
                                      controller: emailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        labelStyle:
                                            FlutterFlowTheme.bodyText2.override(
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
                                      ),
                                      style:
                                          FlutterFlowTheme.bodyText2.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFFFA600),
                                        fontWeight: FontWeight.w500,
                                      ),
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
                                  borderRadius: BorderRadius.circular(8),
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
                                      labelStyle:
                                          FlutterFlowTheme.bodyText2.override(
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
                                    style: FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Poppins',
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
                      Align(
                        alignment: Alignment(0, 0.05),
                        child: InkWell(
                          onTap: () async {
                            if (emailController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Email required!',
                                  ),
                                ),
                              );
                              return;
                            }
                            await resetPassword(
                              email: emailController.text,
                              context: context,
                            );
                          },
                          child: Text(
                            'Forgot Password',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFFFFA600),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0, 0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 16, 0, 20),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final user = await signInWithEmail(
                                context,
                                emailController.text,
                                passwordTextController.text,
                              );
                              if (user == null) {
                                return;
                              }

                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: NavBarPage(initialPage: 'Home'),
                                ),
                              );
                            },
                            text: 'Log In',
                            options: FFButtonOptions(
                              width: 140,
                              height: 40,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFA600),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              elevation: 2,
                              borderSide: BorderSide(
                                color: Color(0xFFFFA600),
                                width: 2,
                              ),
                              borderRadius: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Text(
                          'Or',
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFFFFA600),
                          ),
                        ),
                      ),
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
                                    final user =
                                        await signInWithGoogle(context);
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
                                        child: NavBarPage(initialPage: 'Home'),
                                      ),
                                    );
                                  },
                                  text: 'Sign in with Google',
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
                          ? Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 70),
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
                                      reverseDuration:
                                          Duration(milliseconds: 1),
                                      child: NavBarPage(initialPage: 'Home'),
                                    ),
                                  );
                                },
                                text: 'Sign in with Apple',
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
                          : Container(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 1),
                                reverseDuration: Duration(milliseconds: 1),
                                child: SignUpWidget(),
                              ),
                            );
                          },
                          child: Text(
                            'Create an Account',
                            textAlign: TextAlign.center,
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
              ),
            ),
            Align(
              alignment: Alignment(-0.03, -0.81),
              child: Text(
                'Learn on the Go',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFA600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
