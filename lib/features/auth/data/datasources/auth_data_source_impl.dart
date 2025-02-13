import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/features/auth/data/datasources/auth_data_source.dart';
import 'package:personal_scheduler_app/features/auth/data/models/user_model.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

  AuthDataSourceImpl(this.firebaseAuth, this.firestore, this.storage);

  @override
  Future<UserModel> login(String email, String password) async {
    final userCredential = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final uid = userCredential.user!.uid;
    final doc = await firestore.collection('users').doc(uid).get();
    if (!doc.exists) {
      throw Exception('User data not found');
    }
    return UserModel.fromFirestore(doc.data()!);
  }

  @override
  Future<UserModel> register(
      String email, String password, String name, File? imageFile) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String? profileImageUrl;
      final uid = userCredential.user!.uid;

      // Upload image if exists
      if (imageFile != null) {
        final ref = storage.ref().child('profile_images/$uid.jpg');
        await ref.putFile(imageFile);
        profileImageUrl = await ref.getDownloadURL();

        // Update auth user photoURL
        await userCredential.user!.updatePhotoURL(profileImageUrl);
      }

      // Create user model
      final user = UserModel(
        uid: uid,
        email: email,
        name: name,
        profileImageUrl: profileImageUrl,
      );

      // Save to Firestore
      await firestore.collection('users').doc(uid).set(user.toJson());

      return user;
    } on FirebaseException catch (e) {
      throw Exception('Firebase Error: ${e.message}');
    } catch (e) {
      throw Exception('Registration failed: ${e.toString()}');
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }
}
