import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class QuizMakerFirebaseUser {
  QuizMakerFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

QuizMakerFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QuizMakerFirebaseUser> quizMakerFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<QuizMakerFirebaseUser>(
        (user) => currentUser = QuizMakerFirebaseUser(user));
