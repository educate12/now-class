import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageDetailsWidget extends StatefulWidget {
  MessageDetailsWidget({Key key}) : super(key: key);

  @override
  _MessageDetailsWidgetState createState() => _MessageDetailsWidgetState();
}

class _MessageDetailsWidgetState extends State<MessageDetailsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: FlutterFlowTheme.tertiaryColor,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, -0.85),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Card Title',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFA600),
                                  ),
                                ),
                                Text(
                                  getCurrentTimestamp.toString(),
                                  style: FlutterFlowTheme.title2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFA600),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Color(0xFFFFA600),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida mattis lorem, et posuere tortor rutrum vitae. Vivamus lacinia fringilla libero, at maximus quam imperdiet sed. Pellentesque egestas eget ex a consectetur.',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFA600),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFFFFA600),
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
