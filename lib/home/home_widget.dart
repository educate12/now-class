import '../auth/auth_util.dart';
import '../book/book_widget.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 1.03),
              child: Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFFFA600),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.55),
              child: Image.network(
                'data:image/png;base64,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',
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(0, -0.84),
              child: Text(
                'Learn on the Go',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFA600),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.03, 0.69),
              child: Container(
                width: 300,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.01, 0.21),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0x00EEEEEE),
                  image: Image.network(
                    currentUserPhoto,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFFFFA600),
                    width: 8,
                  ),
                ),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    currentUserPhoto,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.1, 0.38),
              child: Icon(
                Icons.star,
                color: Color(0xFFFFA600),
                size: 24,
              ),
            ),
            Align(
              alignment: Alignment(0.04, 0.39),
              child: Text(
                '4.2',
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFA600),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.04, 0.46),
              child: Text(
                currentUserDisplayName,
                style: FlutterFlowTheme.title2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFA600),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.03, 0.54),
              child: Text(
                currentUserEmail,
                style: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFA600),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.03, 0.62),
              child: Text(
                currentPhoneNumber,
                style: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFA600),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.04, 0.91),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: BookWidget(),
                    ),
                  );
                },
                text: 'Book a Now Class',
                options: FFButtonOptions(
                  width: 170,
                  height: 45,
                  color: Color(0xFFFFA600),
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: 20,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.02, 0.71),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                      reverseDuration: Duration(milliseconds: 0),
                      child: EditProfileWidget(),
                    ),
                  );
                },
                text: 'Edit Profile',
                options: FFButtonOptions(
                  width: 100,
                  height: 20,
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFFFFA600),
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                  borderSide: BorderSide(
                    color: Color(0xFFFFA600),
                    width: 1,
                  ),
                  borderRadius: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
