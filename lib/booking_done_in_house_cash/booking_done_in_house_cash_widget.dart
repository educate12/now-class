import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDoneInHouseCashWidget extends StatefulWidget {
  BookingDoneInHouseCashWidget({
    Key key,
    this.classes,
    this.users,
  }) : super(key: key);

  final ClassesRecord classes;
  final UserRecord users;

  @override
  _BookingDoneInHouseCashWidgetState createState() =>
      _BookingDoneInHouseCashWidgetState();
}

class _BookingDoneInHouseCashWidgetState
    extends State<BookingDoneInHouseCashWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -1),
              child: Image.network(
                'https://picsum.photos/seed/484/300',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment(0, -0.68),
              child: Text(
                'Congrats, your Booking is Done, as Soon as a Tutor has Accepted, it will appear below:',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFFA600),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.22),
              child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color(0xFFFFA600),
                    width: 2,
                  ),
                ),
                child: StreamBuilder<List<ClassesRecord>>(
                  stream: queryClassesRecord(
                    queryBuilder: (classesRecord) => classesRecord
                        .where('status', isEqualTo: 'Booked and Incomplete'),
                    limit: 1,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }
                    List<ClassesRecord> columnClassesRecordList = snapshot.data;
                    // Customize what your widget looks like with no query results.
                    if (snapshot.data.isEmpty) {
                      // return Container();
                      // For now, we'll just include some dummy data.
                      columnClassesRecordList =
                          createDummyClassesRecord(count: 1);
                    }
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(columnClassesRecordList.length,
                          (columnIndex) {
                        final columnClassesRecord =
                            columnClassesRecordList[columnIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/963/600',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    columnClassesRecord.tutorRating.toString(),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    columnClassesRecord.tutorName,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    columnClassesRecord.tutorNumber,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title3.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    columnClassesRecord.tutorAddress,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFA600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment(0, 0),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          final subject =
                                              'Booked and Completed';
                                          final price = widget.users.tempPrice;

                                          final classesRecordData =
                                              createClassesRecordData(
                                            subject: subject,
                                            price: price,
                                          );

                                          await columnClassesRecord.reference
                                              .update(classesRecordData);
                                        },
                                        text: 'Tutor Arrived',
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: Color(0x00FFFFFF),
                                          textStyle: FlutterFlowTheme.subtitle2
                                              .override(
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
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Align(
                              alignment: Alignment(0, 0),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Warning!'),
                                              content: Text(
                                                  'Are you sure you want to cancel the Request?If you cancel you will be charged R20.'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('NO'),
                                                ),
                                                TextButton(
                                                  onPressed: () async {
                                                    Navigator.pop(
                                                        alertDialogContext);
                                                    final price = 20;
                                                    final status =
                                                        'Booked and Cancelled';

                                                    final classesRecordData =
                                                        createClassesRecordData(
                                                      price: price,
                                                      status: status,
                                                    );

                                                    await columnClassesRecord
                                                        .reference
                                                        .update(
                                                            classesRecordData);
                                                    ;
                                                  },
                                                  child: Text('YES'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        'Cancel',
                                        textAlign: TextAlign.center,
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFFF0000),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.91),
              child: AutoSizeText(
                'Note: Only leave this page when the Tutor has arrived.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.title2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFFF0000),
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
