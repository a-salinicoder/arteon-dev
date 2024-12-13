// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageArunStruct extends FFFirebaseStruct {
  MessageArunStruct({
    String? role,
    String? type,
    DateTime? createdAt,
    List<String>? images,
    String? dataJson,
    List<String>? audios,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _type = type,
        _createdAt = createdAt,
        _images = images,
        _dataJson = dataJson,
        _audios = audios,
        super(firestoreUtilData);

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;

  void updateImages(Function(List<String>) updateFn) {
    updateFn(_images ??= []);
  }

  bool hasImages() => _images != null;

  // "dataJson" field.
  String? _dataJson;
  String get dataJson => _dataJson ?? '';
  set dataJson(String? val) => _dataJson = val;

  bool hasDataJson() => _dataJson != null;

  // "audios" field.
  List<String>? _audios;
  List<String> get audios => _audios ?? const [];
  set audios(List<String>? val) => _audios = val;

  void updateAudios(Function(List<String>) updateFn) {
    updateFn(_audios ??= []);
  }

  bool hasAudios() => _audios != null;

  static MessageArunStruct fromMap(Map<String, dynamic> data) =>
      MessageArunStruct(
        role: data['role'] as String?,
        type: data['type'] as String?,
        createdAt: data['created_at'] as DateTime?,
        images: getDataList(data['images']),
        dataJson: data['dataJson'] as String?,
        audios: getDataList(data['audios']),
      );

  static MessageArunStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageArunStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'type': _type,
        'created_at': _createdAt,
        'images': _images,
        'dataJson': _dataJson,
        'audios': _audios,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'images': serializeParam(
          _images,
          ParamType.String,
          isList: true,
        ),
        'dataJson': serializeParam(
          _dataJson,
          ParamType.String,
        ),
        'audios': serializeParam(
          _audios,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static MessageArunStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageArunStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        images: deserializeParam<String>(
          data['images'],
          ParamType.String,
          true,
        ),
        dataJson: deserializeParam(
          data['dataJson'],
          ParamType.String,
          false,
        ),
        audios: deserializeParam<String>(
          data['audios'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'MessageArunStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MessageArunStruct &&
        role == other.role &&
        type == other.type &&
        createdAt == other.createdAt &&
        listEquality.equals(images, other.images) &&
        dataJson == other.dataJson &&
        listEquality.equals(audios, other.audios);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([role, type, createdAt, images, dataJson, audios]);
}

MessageArunStruct createMessageArunStruct({
  String? role,
  String? type,
  DateTime? createdAt,
  String? dataJson,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageArunStruct(
      role: role,
      type: type,
      createdAt: createdAt,
      dataJson: dataJson,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageArunStruct? updateMessageArunStruct(
  MessageArunStruct? messageArun, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messageArun
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageArunStructData(
  Map<String, dynamic> firestoreData,
  MessageArunStruct? messageArun,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messageArun == null) {
    return;
  }
  if (messageArun.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messageArun.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageArunData =
      getMessageArunFirestoreData(messageArun, forFieldValue);
  final nestedData =
      messageArunData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messageArun.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageArunFirestoreData(
  MessageArunStruct? messageArun, [
  bool forFieldValue = false,
]) {
  if (messageArun == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messageArun.toMap());

  // Add any Firestore field values
  messageArun.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageArunListFirestoreData(
  List<MessageArunStruct>? messageAruns,
) =>
    messageAruns?.map((e) => getMessageArunFirestoreData(e, true)).toList() ??
    [];