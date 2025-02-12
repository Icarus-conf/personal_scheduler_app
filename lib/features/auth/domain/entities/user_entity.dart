class UserEntity {
  final String uid;
  final String email;
  final String? profileImageUrl;
  final String name;

  const UserEntity({
    required this.uid,
    required this.email,
    required this.name,
    this.profileImageUrl,
  });
}
