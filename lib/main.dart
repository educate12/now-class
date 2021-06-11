import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/firebase_user_provider.dart';
import 'package:now_class/welcome/welcome_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'home/home_widget.dart';
import 'messages/messages_widget.dart';
import 'classes/classes_widget.dart';
import 'settings/settings_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<NowClassFirebaseUser> userStream;
  NowClassFirebaseUser initialUser;

  @override
  void initState() {
    super.initState();
    userStream = nowClassFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Now Class',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null
          ? Center(
              child: Builder(
                builder: (context) => Image.asset(
                  'assets/images/IMG_5360.PNG',
                  width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : WelcomeWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Home';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Home': HomeWidget(),
      'Messages': MessagesWidget(),
      'Classes': ClassesWidget(),
      'Settings': SettingsWidget(),
    };
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.notifications,
              size: 24,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.bookReader,
              size: 24,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.bookReader,
              size: 24,
            ),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 24,
            ),
            activeIcon: Icon(
              Icons.settings,
              size: 24,
            ),
            label: 'Settings',
          )
        ],
        backgroundColor: Colors.white,
        currentIndex: tabs.keys.toList().indexOf(_currentPage),
        selectedItemColor: FlutterFlowTheme.primaryColor,
        unselectedItemColor: Color(0x5D777777),
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
