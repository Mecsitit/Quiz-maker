// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuizRecord> _$quizRecordSerializer = new _$QuizRecordSerializer();

class _$QuizRecordSerializer implements StructuredSerializer<QuizRecord> {
  @override
  final Iterable<Type> types = const [QuizRecord, _$QuizRecord];
  @override
  final String wireName = 'QuizRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, QuizRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.question;
    if (value != null) {
      result
        ..add('Question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.option1;
    if (value != null) {
      result
        ..add('Option1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.option2;
    if (value != null) {
      result
        ..add('Option2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.option3;
    if (value != null) {
      result
        ..add('Option3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.option4;
    if (value != null) {
      result
        ..add('Option4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.corrrectAnswer;
    if (value != null) {
      result
        ..add('CorrrectAnswer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('CreatedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.quiztitle;
    if (value != null) {
      result
        ..add('quiztitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.questionNumber;
    if (value != null) {
      result
        ..add('Question_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  QuizRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuizRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Option1':
          result.option1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Option2':
          result.option2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Option3':
          result.option3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Option4':
          result.option4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CorrrectAnswer':
          result.corrrectAnswer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CreatedBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'quiztitle':
          result.quiztitle = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Question_number':
          result.questionNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$QuizRecord extends QuizRecord {
  @override
  final String question;
  @override
  final String option1;
  @override
  final String option2;
  @override
  final String option3;
  @override
  final String option4;
  @override
  final String corrrectAnswer;
  @override
  final String createdBy;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> quiztitle;
  @override
  final int questionNumber;
  @override
  final DocumentReference<Object> reference;

  factory _$QuizRecord([void Function(QuizRecordBuilder) updates]) =>
      (new QuizRecordBuilder()..update(updates)).build();

  _$QuizRecord._(
      {this.question,
      this.option1,
      this.option2,
      this.option3,
      this.option4,
      this.corrrectAnswer,
      this.createdBy,
      this.user,
      this.quiztitle,
      this.questionNumber,
      this.reference})
      : super._();

  @override
  QuizRecord rebuild(void Function(QuizRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizRecordBuilder toBuilder() => new QuizRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizRecord &&
        question == other.question &&
        option1 == other.option1 &&
        option2 == other.option2 &&
        option3 == other.option3 &&
        option4 == other.option4 &&
        corrrectAnswer == other.corrrectAnswer &&
        createdBy == other.createdBy &&
        user == other.user &&
        quiztitle == other.quiztitle &&
        questionNumber == other.questionNumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, question.hashCode),
                                            option1.hashCode),
                                        option2.hashCode),
                                    option3.hashCode),
                                option4.hashCode),
                            corrrectAnswer.hashCode),
                        createdBy.hashCode),
                    user.hashCode),
                quiztitle.hashCode),
            questionNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuizRecord')
          ..add('question', question)
          ..add('option1', option1)
          ..add('option2', option2)
          ..add('option3', option3)
          ..add('option4', option4)
          ..add('corrrectAnswer', corrrectAnswer)
          ..add('createdBy', createdBy)
          ..add('user', user)
          ..add('quiztitle', quiztitle)
          ..add('questionNumber', questionNumber)
          ..add('reference', reference))
        .toString();
  }
}

class QuizRecordBuilder implements Builder<QuizRecord, QuizRecordBuilder> {
  _$QuizRecord _$v;

  String _question;
  String get question => _$this._question;
  set question(String question) => _$this._question = question;

  String _option1;
  String get option1 => _$this._option1;
  set option1(String option1) => _$this._option1 = option1;

  String _option2;
  String get option2 => _$this._option2;
  set option2(String option2) => _$this._option2 = option2;

  String _option3;
  String get option3 => _$this._option3;
  set option3(String option3) => _$this._option3 = option3;

  String _option4;
  String get option4 => _$this._option4;
  set option4(String option4) => _$this._option4 = option4;

  String _corrrectAnswer;
  String get corrrectAnswer => _$this._corrrectAnswer;
  set corrrectAnswer(String corrrectAnswer) =>
      _$this._corrrectAnswer = corrrectAnswer;

  String _createdBy;
  String get createdBy => _$this._createdBy;
  set createdBy(String createdBy) => _$this._createdBy = createdBy;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _quiztitle;
  DocumentReference<Object> get quiztitle => _$this._quiztitle;
  set quiztitle(DocumentReference<Object> quiztitle) =>
      _$this._quiztitle = quiztitle;

  int _questionNumber;
  int get questionNumber => _$this._questionNumber;
  set questionNumber(int questionNumber) =>
      _$this._questionNumber = questionNumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  QuizRecordBuilder() {
    QuizRecord._initializeBuilder(this);
  }

  QuizRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _option1 = $v.option1;
      _option2 = $v.option2;
      _option3 = $v.option3;
      _option4 = $v.option4;
      _corrrectAnswer = $v.corrrectAnswer;
      _createdBy = $v.createdBy;
      _user = $v.user;
      _quiztitle = $v.quiztitle;
      _questionNumber = $v.questionNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuizRecord;
  }

  @override
  void update(void Function(QuizRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuizRecord build() {
    final _$result = _$v ??
        new _$QuizRecord._(
            question: question,
            option1: option1,
            option2: option2,
            option3: option3,
            option4: option4,
            corrrectAnswer: corrrectAnswer,
            createdBy: createdBy,
            user: user,
            quiztitle: quiztitle,
            questionNumber: questionNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
