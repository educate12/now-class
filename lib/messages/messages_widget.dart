import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../message_details/message_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MessagesWidget extends StatefulWidget {
  MessagesWidget({Key key}) : super(key: key);

  @override
  _MessagesWidgetState createState() => _MessagesWidgetState();
}

class _MessagesWidgetState extends State<MessagesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFFFFA600)),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: StreamBuilder<List<NotificationsRecord>>(
          stream: queryNotificationsRecord(
            queryBuilder: (notificationsRecord) => notificationsRecord
                .where('to', isEqualTo: currentUserReference)
                .orderBy('date_and_time', descending: true),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            List<NotificationsRecord> columnNotificationsRecordList =
                snapshot.data;
            // Customize what your widget looks like with no query results.
            if (snapshot.data.isEmpty) {
              // return Container();
              // For now, we'll just include some dummy data.
              columnNotificationsRecordList =
                  createDummyNotificationsRecord(count: 4);
            }
            return InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 1),
                    reverseDuration: Duration(milliseconds: 1),
                    child: MessageDetailsWidget(),
                  ),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(columnNotificationsRecordList.length,
                    (columnIndex) {
                  final columnNotificationsRecord =
                      columnNotificationsRecordList[columnIndex];
                  return Padding(
                    padding: EdgeInsets.fromLTRB(1, 5, 0, 0),
                    child: Container(
                      width: 400,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xFFFFA600),
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment(-0.8, -0.2),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                      columnNotificationsRecord.from,
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFFFA600),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                child: Text(
                                  dateTimeFormat(
                                      'relative',
                                      columnNotificationsRecord.dateAndTime
                                          .toDate()),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.primaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Color(0xFFFFA600),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment(-0.6, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                    child: Text(
                                      columnNotificationsRecord.message,
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFFFA600),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment(0.95, 0),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 2, 10, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.fade,
                                            duration: Duration(milliseconds: 1),
                                            reverseDuration:
                                                Duration(milliseconds: 1),
                                            child: MessageDetailsWidget(),
                                          ),
                                        );
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFFFFA600),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
