import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCallRequestsRecord extends FirestoreRecord {
  UserCallRequestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "requested_by" field.
  DocumentReference? _requestedBy;
  DocumentReference? get requestedBy => _requestedBy;
  bool hasRequestedBy() => _requestedBy != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "room_id" field.
  String? _roomId;
  String get roomId => _roomId ?? '';
  bool hasRoomId() => _roomId != null;

  // "requested_to" field.
  DocumentReference? _requestedTo;
  DocumentReference? get requestedTo => _requestedTo;
  bool hasRequestedTo() => _requestedTo != null;

  void _initializeFields() {
    _requestedBy = snapshotData['requested_by'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _roomId = snapshotData['room_id'] as String?;
    _requestedTo = snapshotData['requested_to'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserCallRequests');

  static Stream<UserCallRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCallRequestsRecord.fromSnapshot(s));

  static Future<UserCallRequestsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserCallRequestsRecord.fromSnapshot(s));

  static UserCallRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCallRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCallRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCallRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCallRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCallRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCallRequestsRecordData({
  DocumentReference? requestedBy,
  DateTime? createdAt,
  String? roomId,
  DocumentReference? requestedTo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'requested_by': requestedBy,
      'created_at': createdAt,
      'room_id': roomId,
      'requested_to': requestedTo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCallRequestsRecordDocumentEquality
    implements Equality<UserCallRequestsRecord> {
  const UserCallRequestsRecordDocumentEquality();

  @override
  bool equals(UserCallRequestsRecord? e1, UserCallRequestsRecord? e2) {
    return e1?.requestedBy == e2?.requestedBy &&
        e1?.createdAt == e2?.createdAt &&
        e1?.roomId == e2?.roomId &&
        e1?.requestedTo == e2?.requestedTo;
  }

  @override
  int hash(UserCallRequestsRecord? e) => const ListEquality()
      .hash([e?.requestedBy, e?.createdAt, e?.roomId, e?.requestedTo]);

  @override
  bool isValidKey(Object? o) => o is UserCallRequestsRecord;
}
