import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'classes_record.g.dart';

abstract class ClassesRecord
    implements Built<ClassesRecord, ClassesRecordBuilder> {
  static Serializer<ClassesRecord> get serializer => _$classesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Subject')
  String get subject;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get university;

  @nullable
  String get course;

  @nullable
  String get subject;

  @nullable
  @BuiltValueField(wireName: 'subject_code')
  String get subjectCode;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: 'payement_method')
  String get payementMethod;

  @nullable
  String get topic;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: 'class_student_and_tutor')
  BuiltList<DocumentReference> get classStudentAndTutor;

  @nullable
  @BuiltValueField(wireName: 'complete_time')
  DateTime get completeTime;

  @nullable
  double get price;

  @nullable
  @BuiltValueField(wireName: 'tutor_name')
  String get tutorName;

  @nullable
  @BuiltValueField(wireName: 'tutor_email')
  String get tutorEmail;

  @nullable
  @BuiltValueField(wireName: 'tutor_number')
  String get tutorNumber;

  @nullable
  @BuiltValueField(wireName: 'tutor_rating')
  double get tutorRating;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ClassesRecordBuilder builder) => builder
    ..subject = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..university = ''
    ..course = ''
    ..subject = ''
    ..subjectCode = ''
    ..type = ''
    ..payementMethod = ''
    ..topic = ''
    ..status = ''
    ..classStudentAndTutor = ListBuilder()
    ..price = 0.0
    ..tutorName = ''
    ..tutorEmail = ''
    ..tutorNumber = ''
    ..tutorRating = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Classes');

  static Stream<ClassesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ClassesRecord._();
  factory ClassesRecord([void Function(ClassesRecordBuilder) updates]) =
      _$ClassesRecord;
}

Map<String, dynamic> createClassesRecordData({
  String subject,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String university,
  String course,
  String subject,
  String subjectCode,
  String type,
  String payementMethod,
  String topic,
  String status,
  DateTime completeTime,
  double price,
  String tutorName,
  String tutorEmail,
  String tutorNumber,
  double tutorRating,
}) =>
    serializers.toFirestore(
        ClassesRecord.serializer,
        ClassesRecord((c) => c
          ..subject = subject
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..university = university
          ..course = course
          ..subject = subject
          ..subjectCode = subjectCode
          ..type = type
          ..payementMethod = payementMethod
          ..topic = topic
          ..status = status
          ..classStudentAndTutor = null
          ..completeTime = completeTime
          ..price = price
          ..tutorName = tutorName
          ..tutorEmail = tutorEmail
          ..tutorNumber = tutorNumber
          ..tutorRating = tutorRating));

ClassesRecord get dummyClassesRecord {
  final builder = ClassesRecordBuilder()
    ..subject = dummyString
    ..email = dummyString
    ..displayName = dummyString
    ..photoUrl = dummyImagePath
    ..uid = dummyString
    ..createdTime = dummyTimestamp
    ..phoneNumber = dummyString
    ..university = dummyString
    ..course = dummyString
    ..subject = dummyString
    ..subjectCode = dummyString
    ..type = dummyString
    ..payementMethod = dummyString
    ..topic = dummyString
    ..status = dummyString
    ..completeTime = dummyTimestamp
    ..price = dummyDouble
    ..tutorName = dummyString
    ..tutorEmail = dummyString
    ..tutorNumber = dummyString
    ..tutorRating = dummyDouble;
  return builder.build();
}

List<ClassesRecord> createDummyClassesRecord({int count}) =>
    List.generate(count, (_) => dummyClassesRecord);
