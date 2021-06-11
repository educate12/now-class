import '../backend/backend.dart';
import '../book/book_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ClassesWidget extends StatefulWidget {
  ClassesWidget({Key key}) : super(key: key);

  @override
  _ClassesWidgetState createState() => _ClassesWidgetState();
}

class _ClassesWidgetState extends State<ClassesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFFA600),
      floatingActionButton: FloatingActionButton(
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
        backgroundColor: Color(0xFFFFA600),
        elevation: 8,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            StreamBuilder<List<ClassesRecord>>(
              stream: queryClassesRecord(
                queryBuilder: (classesRecord) => classesRecord
                    .where('status', isEqualTo: 'Booked+Accepted+Completed')
                    .orderBy('created_time', descending: true),
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
                  columnClassesRecordList = createDummyClassesRecord(count: 4);
                }
                return Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnClassesRecordList.length,
                        (columnIndex) {
                      final columnClassesRecord =
                          columnClassesRecordList[columnIndex];
                      return Align(
                        alignment: Alignment(0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(1, 4, 1, 0),
                              child: Container(
                                width: 370,
                                height: 140,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xFFFFA600),
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 6, 10, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            columnClassesRecord.status,
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFA600),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment(0.8, 0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'relative',
                                                    columnClassesRecord
                                                        .completeTime
                                                        .toDate()),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFFFA600),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Color(0xFFFFA600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            columnClassesRecord.subject,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFA600),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            ' : ',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFA600),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            columnClassesRecord.topic,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFA600),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment(0.8, 0),
                                              child: Text(
                                                columnClassesRecord.price
                                                    .toString(),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.title1
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFFFA600),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Color(0xFFFFA600),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(7, 2, 7, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Class by : ',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFA600),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            columnClassesRecord.tutorName,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFA600),
                                            ),
                                          ),
                                          Text(
                                            ' | ',
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFA600),
                                            ),
                                          ),
                                          Text(
                                            columnClassesRecord.tutorNumber,
                                            style: FlutterFlowTheme.bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFFFA600),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment(0, -1),
              child: Text(
                'History',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
