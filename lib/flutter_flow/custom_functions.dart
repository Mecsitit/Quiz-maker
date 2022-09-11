import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

dynamic firebasetoJson(QuizRecord document) {
  // SAVE FIRESTORE TO JSON
  if (document == null) {
    return null;
  }
  final _data = <String, dynamic>{
    'question': document.question,
    'option1': document.option1,
    'option2': document.option2,
    'option3': document.option3,
    'option4': document.option4,
    'corrrectAnswer': document.corrrectAnswer,
    'createdBy': document.createdBy,
    'questionNumber': document.questionNumber,
    'reference': document.reference.path,
    'quiztitle': document.quiztitle.path,
  };
  return _data;
}

bool checkAnswer(
  String text1,
  String text2,
) {
  // ONTAP CHANGE COLOR
  final t1 = text1.toLowerCase();
  final t2 = text2.toLowerCase();

  if (t1 == t2) {
    debugPrint('Correct!');
    return true;
  } else {
    debugPrint('Wrong!');
    return false;
  }
}

String jsontoString(String rawQuestion) {
  // Add your function code here!
  return rawQuestion.toLowerCase();
}
