import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../booking_done_in_house_cash/booking_done_in_house_cash_widget.dart';
import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class BookInHouseCashWidget extends StatefulWidget {
  BookInHouseCashWidget({
    Key key,
    this.users,
  }) : super(key: key);

  final UserRecord users;

  @override
  _BookInHouseCashWidgetState createState() => _BookInHouseCashWidgetState();
}

class _BookInHouseCashWidgetState extends State<BookInHouseCashWidget> {
  String codeValue;
  String courseValue;
  String universityValue;
  TextEditingController textController1;
  String subjectValue;
  TextEditingController topicController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    topicController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                child: Container(
                  width: 350,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color(0xFFFFA600),
                      width: 2,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment(0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            'Book in less than a Minute',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          ),
                        ),
                        Text(
                          widget.users.tempPrice.toString(),
                          style: FlutterFlowTheme.title1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.primaryColor,
                          ),
                        ),
                        Divider(
                          color: Color(0xFFFFA600),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                              child: Text(
                                'Address : ',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                child: TextFormField(
                                  controller: textController1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintText:
                                        'Example: 17 Ceatrixs 283 Witbank',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFFA600),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFFFA600),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFA600),
                                  ),
                                  keyboardType: TextInputType.multiline,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  'University: ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFA600),
                                  ),
                                ),
                              ),
                              FlutterFlowDropDown(
                                options: ['TUT'],
                                onChanged: (value) {
                                  setState(() => universityValue = value);
                                },
                                width: 244,
                                height: 40,
                                textStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                ),
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Color(0xFFFFA600),
                                borderWidth: 1,
                                borderRadius: 20,
                                margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  'Course: ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFA600),
                                  ),
                                ),
                              ),
                              FlutterFlowDropDown(
                                options: [
                                  'ELECTRICAL (HIGH CERT.)',
                                  'ELECTRICAL'
                                ],
                                onChanged: (value) {
                                  setState(() => courseValue = value);
                                },
                                width: 262,
                                height: 40,
                                textStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                ),
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Color(0xFFFFA600),
                                borderWidth: 1,
                                borderRadius: 20,
                                margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  'Subject: ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFA600),
                                  ),
                                ),
                              ),
                              FlutterFlowDropDown(
                                options: [
                                  'MATHS I',
                                  'MATHS 2',
                                  'ELECTRICAL I',
                                  'ELECTRONICS 1'
                                ],
                                onChanged: (value) {
                                  setState(() => subjectValue = value);
                                },
                                width: 261,
                                height: 40,
                                textStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                ),
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Color(0xFFFFA600),
                                borderWidth: 1,
                                borderRadius: 20,
                                margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  'Subject Code: ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFA600),
                                  ),
                                ),
                              ),
                              FlutterFlowDropDown(
                                options: ['EE012', 'MTH21', 'MTH1'],
                                onChanged: (value) {
                                  setState(() => codeValue = value);
                                },
                                width: 219,
                                height: 40,
                                textStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFA600),
                                ),
                                fillColor: Colors.white,
                                elevation: 2,
                                borderColor: Color(0xFFFFA600),
                                borderWidth: 1,
                                borderRadius: 20,
                                margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  'Topic: ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFA600),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: TextFormField(
                                    controller: topicController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'For Example: Ohm\'s Law',
                                      hintStyle: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Color(0xFFFFA600),
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFFA600),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFFA600),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Color(0xFFFFA600),
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.normal,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final university = universityValue;
                              final course = courseValue;
                              final subject = subjectValue;
                              final subjectCode = codeValue;
                              final type = 'In House';
                              final payementMethod = 'Cash';
                              final topic = topicController.text;
                              final status = 'Booked and Incomplete';
                              final email = '';
                              final studentAddress = textController1.text;
                              final price = widget.users.tempPrice;

                              final classesRecordData = createClassesRecordData(
                                university: university,
                                course: course,
                                subject: subject,
                                subjectCode: subjectCode,
                                type: type,
                                payementMethod: payementMethod,
                                topic: topic,
                                status: status,
                                email: email,
                                studentAddress: studentAddress,
                                price: price,
                              );

                              await ClassesRecord.collection
                                  .doc()
                                  .set(classesRecordData);
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: BookingDoneInHouseCashWidget(),
                                ),
                              );
                            },
                            text: 'Nex',
                            options: FFButtonOptions(
                              width: 200,
                              height: 40,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFA600),
                                fontWeight: FontWeight.w500,
                              ),
                              borderSide: BorderSide(
                                color: Color(0xFFFFA600),
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Warning!!'),
                                    content: Text(
                                        'Are you sure you want to Cancel?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('YES'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            text: 'Cancel',
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
                        )
                      ],
                    ),
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
