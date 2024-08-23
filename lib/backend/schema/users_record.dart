import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
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

  // "sponsorID" field.
  String? _sponsorID;
  String get sponsorID => _sponsorID ?? '';
  bool hasSponsorID() => _sponsorID != null;

  // "my_sponsoringID" field.
  String? _mySponsoringID;
  String get mySponsoringID => _mySponsoringID ?? '';
  bool hasMySponsoringID() => _mySponsoringID != null;

  // "activation_code" field.
  String? _activationCode;
  String get activationCode => _activationCode ?? '';
  bool hasActivationCode() => _activationCode != null;

  // "status_membership" field.
  String? _statusMembership;
  String get statusMembership => _statusMembership ?? '';
  bool hasStatusMembership() => _statusMembership != null;

  // "vip_user" field.
  bool? _vipUser;
  bool get vipUser => _vipUser ?? false;
  bool hasVipUser() => _vipUser != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "activated_code" field.
  DocumentReference? _activatedCode;
  DocumentReference? get activatedCode => _activatedCode;
  bool hasActivatedCode() => _activatedCode != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _sponsorID = snapshotData['sponsorID'] as String?;
    _mySponsoringID = snapshotData['my_sponsoringID'] as String?;
    _activationCode = snapshotData['activation_code'] as String?;
    _statusMembership = snapshotData['status_membership'] as String?;
    _vipUser = snapshotData['vip_user'] as bool?;
    _admin = snapshotData['admin'] as bool?;
    _activatedCode = snapshotData['activated_code'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? sponsorID,
  String? mySponsoringID,
  String? activationCode,
  String? statusMembership,
  bool? vipUser,
  bool? admin,
  DocumentReference? activatedCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'sponsorID': sponsorID,
      'my_sponsoringID': mySponsoringID,
      'activation_code': activationCode,
      'status_membership': statusMembership,
      'vip_user': vipUser,
      'admin': admin,
      'activated_code': activatedCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.sponsorID == e2?.sponsorID &&
        e1?.mySponsoringID == e2?.mySponsoringID &&
        e1?.activationCode == e2?.activationCode &&
        e1?.statusMembership == e2?.statusMembership &&
        e1?.vipUser == e2?.vipUser &&
        e1?.admin == e2?.admin &&
        e1?.activatedCode == e2?.activatedCode;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.sponsorID,
        e?.mySponsoringID,
        e?.activationCode,
        e?.statusMembership,
        e?.vipUser,
        e?.admin,
        e?.activatedCode
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
