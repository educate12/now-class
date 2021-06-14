import '../book_online/book_online_widget.dart';
import '../choose_payment/choose_payment_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookWidget extends StatefulWidget {
  BookWidget({Key key}) : super(key: key);

  @override
  _BookWidgetState createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              'https://picsum.photos/seed/884/600',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment(0, -0.2),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookOnlineWidget(),
                    ),
                  );
                },
                text: 'Online Class',
                options: FFButtonOptions(
                  width: 200,
                  height: 40,
                  color: Color(0x80FFA600),
                  textStyle: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.15),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChoosePaymentWidget(),
                    ),
                  );
                },
                text: 'In House Class',
                options: FFButtonOptions(
                  width: 200,
                  height: 40,
                  color: Color(0x80FFA600),
                  textStyle: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.tertiaryColor,
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.64),
              child: Text(
                'How do you want to attend your Class?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.title2.override(
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
