import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComentariosRecord extends FirestoreRecord {
  ComentariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "comentario_texto" field.
  String? _comentarioTexto;
  String get comentarioTexto => _comentarioTexto ?? '';
  bool hasComentarioTexto() => _comentarioTexto != null;

  // "post_type" field.
  DocumentReference? _postType;
  DocumentReference? get postType => _postType;
  bool hasPostType() => _postType != null;

  // "numeros_comentarios" field.
  int? _numerosComentarios;
  int get numerosComentarios => _numerosComentarios ?? 0;
  bool hasNumerosComentarios() => _numerosComentarios != null;

  // "comment_users" field.
  DocumentReference? _commentUsers;
  DocumentReference? get commentUsers => _commentUsers;
  bool hasCommentUsers() => _commentUsers != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _comentarioTexto = snapshotData['comentario_texto'] as String?;
    _postType = snapshotData['post_type'] as DocumentReference?;
    _numerosComentarios = castToType<int>(snapshotData['numeros_comentarios']);
    _commentUsers = snapshotData['comment_users'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comentarios');

  static Stream<ComentariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComentariosRecord.fromSnapshot(s));

  static Future<ComentariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComentariosRecord.fromSnapshot(s));

  static ComentariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComentariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComentariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComentariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComentariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComentariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComentariosRecordData({
  DateTime? createdTime,
  String? comentarioTexto,
  DocumentReference? postType,
  int? numerosComentarios,
  DocumentReference? commentUsers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'comentario_texto': comentarioTexto,
      'post_type': postType,
      'numeros_comentarios': numerosComentarios,
      'comment_users': commentUsers,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComentariosRecordDocumentEquality implements Equality<ComentariosRecord> {
  const ComentariosRecordDocumentEquality();

  @override
  bool equals(ComentariosRecord? e1, ComentariosRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.comentarioTexto == e2?.comentarioTexto &&
        e1?.postType == e2?.postType &&
        e1?.numerosComentarios == e2?.numerosComentarios &&
        e1?.commentUsers == e2?.commentUsers;
  }

  @override
  int hash(ComentariosRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.comentarioTexto,
        e?.postType,
        e?.numerosComentarios,
        e?.commentUsers
      ]);

  @override
  bool isValidKey(Object? o) => o is ComentariosRecord;
}
