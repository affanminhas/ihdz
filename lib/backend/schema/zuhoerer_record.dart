import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZuhoererRecord extends FirestoreRecord {
  ZuhoererRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "date_of_birth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  bool hasDateOfBirth() => _dateOfBirth != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "id_front" field.
  String? _idFront;
  String get idFront => _idFront ?? '';
  bool hasIdFront() => _idFront != null;

  // "id_back" field.
  String? _idBack;
  String get idBack => _idBack ?? '';
  bool hasIdBack() => _idBack != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _address = snapshotData['address'] as String?;
    _dateOfBirth = snapshotData['date_of_birth'] as String?;
    _active = snapshotData['active'] as bool?;
    _isVerified = snapshotData['is_verified'] as bool?;
    _idFront = snapshotData['id_front'] as String?;
    _idBack = snapshotData['id_back'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Zuhoerer');

  static Stream<ZuhoererRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ZuhoererRecord.fromSnapshot(s));

  static Future<ZuhoererRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ZuhoererRecord.fromSnapshot(s));

  static ZuhoererRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ZuhoererRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ZuhoererRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ZuhoererRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ZuhoererRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ZuhoererRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createZuhoererRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? address,
  String? dateOfBirth,
  bool? active,
  bool? isVerified,
  String? idFront,
  String? idBack,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'address': address,
      'date_of_birth': dateOfBirth,
      'active': active,
      'is_verified': isVerified,
      'id_front': idFront,
      'id_back': idBack,
    }.withoutNulls,
  );

  return firestoreData;
}

class ZuhoererRecordDocumentEquality implements Equality<ZuhoererRecord> {
  const ZuhoererRecordDocumentEquality();

  @override
  bool equals(ZuhoererRecord? e1, ZuhoererRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.address == e2?.address &&
        e1?.dateOfBirth == e2?.dateOfBirth &&
        e1?.active == e2?.active &&
        e1?.isVerified == e2?.isVerified &&
        e1?.idFront == e2?.idFront &&
        e1?.idBack == e2?.idBack;
  }

  @override
  int hash(ZuhoererRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.address,
        e?.dateOfBirth,
        e?.active,
        e?.isVerified,
        e?.idFront,
        e?.idBack
      ]);

  @override
  bool isValidKey(Object? o) => o is ZuhoererRecord;
}
