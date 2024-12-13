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

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "stage_name" field.
  String? _stageName;
  String get stageName => _stageName ?? '';
  bool hasStageName() => _stageName != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "instagram_url" field.
  String? _instagramUrl;
  String get instagramUrl => _instagramUrl ?? '';
  bool hasInstagramUrl() => _instagramUrl != null;

  // "youtube_url" field.
  String? _youtubeUrl;
  String get youtubeUrl => _youtubeUrl ?? '';
  bool hasYoutubeUrl() => _youtubeUrl != null;

  // "spotify_artist_url" field.
  String? _spotifyArtistUrl;
  String get spotifyArtistUrl => _spotifyArtistUrl ?? '';
  bool hasSpotifyArtistUrl() => _spotifyArtistUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "primary_genre" field.
  List<String>? _primaryGenre;
  List<String> get primaryGenre => _primaryGenre ?? const [];
  bool hasPrimaryGenre() => _primaryGenre != null;

  // "role" field.
  List<String>? _role;
  List<String> get role => _role ?? const [];
  bool hasRole() => _role != null;

  // "languages" field.
  List<String>? _languages;
  List<String> get languages => _languages ?? const [];
  bool hasLanguages() => _languages != null;

  // "total_calls" field.
  double? _totalCalls;
  double get totalCalls => _totalCalls ?? 0.0;
  bool hasTotalCalls() => _totalCalls != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _stageName = snapshotData['stage_name'] as String?;
    _fullName = snapshotData['full_name'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _instagramUrl = snapshotData['instagram_url'] as String?;
    _youtubeUrl = snapshotData['youtube_url'] as String?;
    _spotifyArtistUrl = snapshotData['spotify_artist_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _primaryGenre = getDataList(snapshotData['primary_genre']);
    _role = getDataList(snapshotData['role']);
    _languages = getDataList(snapshotData['languages']);
    _totalCalls = castToType<double>(snapshotData['total_calls']);
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _title = snapshotData['title'] as String?;
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
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  DateTime? editedTime,
  String? bio,
  String? stageName,
  String? fullName,
  String? email,
  String? password,
  String? instagramUrl,
  String? youtubeUrl,
  String? spotifyArtistUrl,
  String? phoneNumber,
  String? displayName,
  double? totalCalls,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'edited_time': editedTime,
      'bio': bio,
      'stage_name': stageName,
      'full_name': fullName,
      'email': email,
      'password': password,
      'instagram_url': instagramUrl,
      'youtube_url': youtubeUrl,
      'spotify_artist_url': spotifyArtistUrl,
      'phone_number': phoneNumber,
      'display_name': displayName,
      'total_calls': totalCalls,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.stageName == e2?.stageName &&
        e1?.fullName == e2?.fullName &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.instagramUrl == e2?.instagramUrl &&
        e1?.youtubeUrl == e2?.youtubeUrl &&
        e1?.spotifyArtistUrl == e2?.spotifyArtistUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayName == e2?.displayName &&
        listEquality.equals(e1?.primaryGenre, e2?.primaryGenre) &&
        listEquality.equals(e1?.role, e2?.role) &&
        listEquality.equals(e1?.languages, e2?.languages) &&
        e1?.totalCalls == e2?.totalCalls &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.title == e2?.title;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.editedTime,
        e?.bio,
        e?.stageName,
        e?.fullName,
        e?.email,
        e?.password,
        e?.instagramUrl,
        e?.youtubeUrl,
        e?.spotifyArtistUrl,
        e?.phoneNumber,
        e?.displayName,
        e?.primaryGenre,
        e?.role,
        e?.languages,
        e?.totalCalls,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
