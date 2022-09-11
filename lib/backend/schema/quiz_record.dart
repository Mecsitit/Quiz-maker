import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quiz_record.g.dart';

abstract class QuizRecord implements Built<QuizRecord, QuizRecordBuilder> {
  static Serializer<QuizRecord> get serializer => _$quizRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Question')
  String get question;

  @nullable
  @BuiltValueField(wireName: 'Option1')
  String get option1;

  @nullable
  @BuiltValueField(wireName: 'Option2')
  String get option2;

  @nullable
  @BuiltValueField(wireName: 'Option3')
  String get option3;

  @nullable
  @BuiltValueField(wireName: 'Option4')
  String get option4;

  @nullable
  @BuiltValueField(wireName: 'CorrrectAnswer')
  String get corrrectAnswer;

  @nullable
  @BuiltValueField(wireName: 'CreatedBy')
  String get createdBy;

  @nullable
  DocumentReference get user;

  @nullable
  DocumentReference get quiztitle;

  @nullable
  @BuiltValueField(wireName: 'Question_number')
  int get questionNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(QuizRecordBuilder builder) => builder
    ..question = ''
    ..option1 = ''
    ..option2 = ''
    ..option3 = ''
    ..option4 = ''
    ..corrrectAnswer = ''
    ..createdBy = ''
    ..questionNumber = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quiz');

  static Stream<QuizRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<QuizRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  QuizRecord._();
  factory QuizRecord([void Function(QuizRecordBuilder) updates]) = _$QuizRecord;

  static QuizRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createQuizRecordData({
  String question,
  String option1,
  String option2,
  String option3,
  String option4,
  String corrrectAnswer,
  String createdBy,
  DocumentReference user,
  DocumentReference quiztitle,
  int questionNumber,
}) =>
    serializers.toFirestore(
        QuizRecord.serializer,
        QuizRecord((q) => q
          ..question = question
          ..option1 = option1
          ..option2 = option2
          ..option3 = option3
          ..option4 = option4
          ..corrrectAnswer = corrrectAnswer
          ..createdBy = createdBy
          ..user = user
          ..quiztitle = quiztitle
          ..questionNumber = questionNumber));
