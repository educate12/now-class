import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NowClassFirebaseUser {
  NowClassFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

NowClassFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NowClassFirebaseUser> nowClassFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NowClassFirebaseUser>(
            (user) => currentUser = NowClassFirebaseUser(user));
