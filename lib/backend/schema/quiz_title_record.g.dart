// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_title_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuizTitleRecord> _$quizTitleRecordSerializer =
    new _$QuizTitleRecordSerializer();

class _$QuizTitleRecordSerializer
    implements StructuredSerializer<QuizTitleRecord> {
  @override
  final Iterable<Type> types = const [QuizTitleRecord, _$QuizTitleRecord];
  @override
  final String wireName = 'QuizTitleRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, QuizTitleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.quizTitle;
    if (value != null) {
      result
        ..add('Quiz_Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('CreatedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.quizCode;
    if (value != null) {
      result
        ..add('quizCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfQyestions;
    if (value != null) {
      result
        ..add('NumberOfQyestions')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  QuizTitleRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuizTitleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Quiz_Title':
          result.quizTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CreatedBy':
          result.createdBy = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'quizCode':
          result.quizCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'NumberOfQyestions':
          result.numberOfQyestions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$QuizTitleRecord extends QuizTitleRecord {
  @override
  final String quizTitle;
  @override
  final DocumentReference<Object> createdBy;
  @override
  final String quizCode;
  @override
  final int numberOfQyestions;
  @override
  final String description;
  @override
  final DocumentReference<Object> reference;

  factory _$QuizTitleRecord([void Function(QuizTitleRecordBuilder) updates]) =>
      (new QuizTitleRecordBuilder()..update(updates)).build();

  _$QuizTitleRecord._(
      {this.quizTitle,
      this.createdBy,
      this.quizCode,
      this.numberOfQyestions,
      this.description,
      this.reference})
      : super._();

  @override
  QuizTitleRecord rebuild(void Function(QuizTitleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizTitleRecordBuilder toBuilder() =>
      new QuizTitleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizTitleRecord &&
        quizTitle == other.quizTitle &&
        createdBy == other.createdBy &&
        quizCode == other.quizCode &&
        numberOfQyestions == other.numberOfQyestions &&
        description == other.description &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, quizTitle.hashCode), createdBy.hashCode),
                    quizCode.hashCode),
                numberOfQyestions.hashCode),
            description.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuizTitleRecord')
          ..add('quizTitle', quizTitle)
          ..add('createdBy', createdBy)
          ..add('quizCode', quizCode)
          ..add('numberOfQyestions', numberOfQyestions)
          ..add('description', description)
          ..add('reference', reference))
        .toString();
  }
}

class QuizTitleRecordBuilder
    implements Builder<QuizTitleRecord, QuizTitleRecordBuilder> {
  _$QuizTitleRecord _$v;

  String _quizTitle;
  String get quizTitle => _$this._quizTitle;
  set quizTitle(String quizTitle) => _$this._quizTitle = quizTitle;

  DocumentReference<Object> _createdBy;
  DocumentReference<Object> get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object> createdBy) =>
      _$this._createdBy = createdBy;

  String _quizCode;
  String get quizCode => _$this._quizCode;
  set quizCode(String quizCode) => _$this._quizCode = quizCode;

  int _numberOfQyestions;
  int get numberOfQyestions => _$this._numberOfQyestions;
  set numberOfQyestions(int numberOfQyestions) =>
      _$this._numberOfQyestions = numberOfQyestions;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  QuizTitleRecordBuilder() {
    QuizTitleRecord._initializeBuilder(this);
  }

  QuizTitleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quizTitle = $v.quizTitle;
      _createdBy = $v.createdBy;
      _quizCode = $v.quizCode;
      _numberOfQyestions = $v.numberOfQyestions;
      _description = $v.description;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizTitleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuizTitleRecord;
  }

  @override
  void update(void Function(QuizTitleRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuizTitleRecord build() {
    final _$result = _$v ??
        new _$QuizTitleRecord._(
            quizTitle: quizTitle,
            createdBy: createdBy,
            quizCode: quizCode,
            numberOfQyestions: numberOfQyestions,
            description: description,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
