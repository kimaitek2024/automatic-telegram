import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CodesRecord extends FirestoreRecord {
  CodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "available" field.
  bool? _available;
  bool get available => _available ?? false;
  bool hasAvailable() => _available != null;

  // "who_used" field.
  DocumentReference? _whoUsed;
  DocumentReference? get whoUsed => _whoUsed;
  bool hasWhoUsed() => _whoUsed != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "activated_time" field.
  DateTime? _activatedTime;
  DateTime? get activatedTime => _activatedTime;
  bool hasActivatedTime() => _activatedTime != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
    _available = snapshotData['available'] as bool?;
    _whoUsed = snapshotData['who_used'] as DocumentReference?;
    _created = snapshotData['created'] as DateTime?;
    _activatedTime = snapshotData['activated_time'] as DateTime?;
    _cost = castToType<int>(snapshotData['cost']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('codes');

  static Stream<CodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CodesRecord.fromSnapshot(s));

  static Future<CodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CodesRecord.fromSnapshot(s));

  static CodesRecord fromSnapshot(DocumentSnapshot snapshot) => CodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCodesRecordData({
  String? code,
  bool? available,
  DocumentReference? whoUsed,
  DateTime? created,
  DateTime? activatedTime,
  int? cost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'available': available,
      'who_used': whoUsed,
      'created': created,
      'activated_time': activatedTime,
      'cost': cost,
    }.withoutNulls,
  );

  return firestoreData;
}

class CodesRecordDocumentEquality implements Equality<CodesRecord> {
  const CodesRecordDocumentEquality();

  @override
  bool equals(CodesRecord? e1, CodesRecord? e2) {
    return e1?.code == e2?.code &&
        e1?.available == e2?.available &&
        e1?.whoUsed == e2?.whoUsed &&
        e1?.created == e2?.created &&
        e1?.activatedTime == e2?.activatedTime &&
        e1?.cost == e2?.cost;
  }

  @override
  int hash(CodesRecord? e) => const ListEquality().hash([
        e?.code,
        e?.available,
        e?.whoUsed,
        e?.created,
        e?.activatedTime,
        e?.cost
      ]);

  @override
  bool isValidKey(Object? o) => o is CodesRecord;
}
