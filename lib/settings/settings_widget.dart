import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../welcome/welcome_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SettingsWidget extends StatefulWidget {
  SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.01, -0.93),
              child: Image.network(
                currentUserPhoto,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 80),
                          child: Text(
                            'Account',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 350,
                        height: 535,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Color(0xFFFFA600),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    currentUserPhoto,
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFFFA600),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    currentUserDisplayName,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFFFA600),
                            ),
                            Text(
                              currentUserEmail,
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFA600),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFFFA600),
                            ),
                            Text(
                              currentPhoneNumber,
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFA600),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFFFA600),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment(1, 0),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0xFFFFA600),
                                      size: 24,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '4.5',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFFFA600),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    '50 ',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Classes',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Color(0xFFFFA600),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 1),
                                    reverseDuration: Duration(milliseconds: 1),
                                    child: EditProfileWidget(),
                                  ),
                                );
                              },
                              text: 'Edit',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFFFFA600),
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final online = false;

                                  final userRecordData = createUserRecordData(
                                    online: online,
                                  );

                                  await currentUserReference
                                      .update(userRecordData);
                                  await signOut();
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 1),
                                      reverseDuration:
                                          Duration(milliseconds: 1),
                                      child: WelcomeWidget(),
                                    ),
                                  );
                                },
                                text: 'Log Out',
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: FlutterFlowTheme.primaryColor,
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
