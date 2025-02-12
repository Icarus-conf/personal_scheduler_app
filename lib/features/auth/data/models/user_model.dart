import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_scheduler_app/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.uid,
    required super.email,
    required super.name,
    super.profileImageUrl,
  });

  /// Convert to JSON (for Firestore)
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'profileImageUrl': profileImageUrl,
    };
  }

  /// Create from Firestore document
  factory UserModel.fromFirestore(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      email: json['email'],
      name: json['name'],
      profileImageUrl: json['profileImageUrl'],
    );
  }

  /// Convert FirebaseAuth User to UserModel (for login/register)
  factory UserModel.fromFirebaseUser(User firebaseUser,
      {String? name, String? profileImageUrl}) {
    return UserModel(
      uid: firebaseUser.uid,
      email: firebaseUser.email ?? "",
      name: name ?? "Unknown",
      profileImageUrl: profileImageUrl,
    );
  }
}
