import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quiz_title_record.g.dart';

abstract class QuizTitleRecord
    implements Built<QuizTitleRecord, QuizTitleRecordBuilder> {
  static Serializer<QuizTitleRecord> get serializer =>
      _$quizTitleRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Quiz_Title')
  String get quizTitle;

  @nullable
  @BuiltValueField(wireName: 'CreatedBy')
  DocumentReference get createdBy;

  @nullable
  String get quizCode;

  @nullable
  @BuiltValueField(wireName: 'NumberOfQyestions')
  int get numberOfQyestions;

  @nullable
  @BuiltValueField(wireName: 'Description')
  String get description;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(QuizTitleRecordBuilder builder) => builder
    ..quizTitle = ''
    ..quizCode = ''
    ..numberOfQyestions = 0
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QuizTitle');

  static Stream<QuizTitleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<QuizTitleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  QuizTitleRecord._();
  factory QuizTitleRecord([void Function(QuizTitleRecordBuilder) updates]) =
      _$QuizTitleRecord;

  static QuizTitleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createQuizTitleRecordData({
  String quizTitle,
  DocumentReference createdBy,
  String quizCode,
  int numberOfQyestions,
  String description,
}) =>
    serializers.toFirestore(
        QuizTitleRecord.serializer,
        QuizTitleRecord((q) => q
          ..quizTitle = quizTitle
          ..createdBy = createdBy
          ..quizCode = quizCode
          ..numberOfQyestions = numberOfQyestions
          ..description = description));
