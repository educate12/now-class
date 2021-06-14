import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'user_record.g.dart';

abstract class UserRecord implements Built<UserRecord, UserRecordBuilder> {
  static Serializer<UserRecord> get serializer => _$userRecordSerializer;

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
  @BuiltValueField(wireName: 'classes_student')
  DocumentReference get classesStudent;

  @nullable
  @BuiltValueField(wireName: 'student_rating')
  double get studentRating;

  @nullable
  @BuiltValueField(wireName: 'tutor_rating')
  double get tutorRating;

  @nullable
  @BuiltValueField(wireName: 'total_classes')
  int get totalClasses;

  @nullable
  bool get online;

  @nullable
  @BuiltValueField(wireName: 'student_location')
  String get studentLocation;

  @nullable
  @BuiltValueField(wireName: 'tutor_location')
  String get tutorLocation;

  @nullable
  @BuiltValueField(wireName: 'temp_price')
  double get tempPrice;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..studentRating = 0.0
    ..tutorRating = 0.0
    ..totalClasses = 0
    ..online = false
    ..studentLocation = ''
    ..tutorLocation = ''
    ..tempPrice = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserRecord._();
  factory UserRecord([void Function(UserRecordBuilder) updates]) = _$UserRecord;
}

Map<String, dynamic> createUserRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  DocumentReference classesStudent,
  double studentRating,
  double tutorRating,
  int totalClasses,
  bool online,
  String studentLocation,
  String tutorLocation,
  double tempPrice,
}) =>
    serializers.toFirestore(
        UserRecord.serializer,
        UserRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..classesStudent = classesStudent
          ..studentRating = studentRating
          ..tutorRating = tutorRating
          ..totalClasses = totalClasses
          ..online = online
          ..studentLocation = studentLocation
          ..tutorLocation = tutorLocation
          ..tempPrice = tempPrice));

UserRecord get dummyUserRecord {
  final builder = UserRecordBuilder()
    ..email = dummyString
    ..displayName = dummyString
    ..photoUrl = dummyImagePath
    ..uid = dummyString
    ..createdTime = dummyTimestamp
    ..phoneNumber = dummyString
    ..studentRating = dummyDouble
    ..tutorRating = dummyDouble
    ..totalClasses = dummyInteger
    ..online = dummyBoolean
    ..studentLocation = dummyString
    ..tutorLocation = dummyString
    ..tempPrice = dummyDouble;
  return builder.build();
}

List<UserRecord> createDummyUserRecord({int count}) =>
    List.generate(count, (_) => dummyUserRecord);
