import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'notifications_record.g.dart';

abstract class NotificationsRecord
    implements Built<NotificationsRecord, NotificationsRecordBuilder> {
  static Serializer<NotificationsRecord> get serializer =>
      _$notificationsRecordSerializer;

  @nullable
  String get message;

  @nullable
  @BuiltValueField(wireName: 'date_and_time')
  DateTime get dateAndTime;

  @nullable
  String get from;

  @nullable
  DocumentReference get to;

  @nullable
  bool get read;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NotificationsRecordBuilder builder) => builder
    ..message = ''
    ..from = ''
    ..read = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NotificationsRecord._();
  factory NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =
      _$NotificationsRecord;
}

Map<String, dynamic> createNotificationsRecordData({
  String message,
  DateTime dateAndTime,
  String from,
  DocumentReference to,
  bool read,
}) =>
    serializers.toFirestore(
        NotificationsRecord.serializer,
        NotificationsRecord((n) => n
          ..message = message
          ..dateAndTime = dateAndTime
          ..from = from
          ..to = to
          ..read = read));

NotificationsRecord get dummyNotificationsRecord {
  final builder = NotificationsRecordBuilder()
    ..message = dummyString
    ..dateAndTime = dummyTimestamp
    ..from = dummyString
    ..read = dummyBoolean;
  return builder.build();
}

List<NotificationsRecord> createDummyNotificationsRecord({int count}) =>
    List.generate(count, (_) => dummyNotificationsRecord);
