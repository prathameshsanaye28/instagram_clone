

import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  final String email;
  final String photoUrl;
  final String username;
  final String bio;
  final List followers;
  final List following;
  final String uid;

  const User({
    required this.bio,
    required this.email,
    required this.followers,
    required this.following,
    required this.photoUrl,
    required this.username,
    required this.uid,
  });

  Map<String, dynamic> toJson()=>{
      'username': username,
      'uid': uid,
      'email': email,
      'bio':bio,
      'followers':[],
      'following':[],
      'photoUrl': photoUrl,
  };

  static User fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map<String,dynamic>;

    return User(
      bio: snapshot['bio'],
      email: snapshot['email'],
      followers: snapshot['followers'],
      following: snapshot['following'],
      photoUrl: snapshot['photoUrl'],
      uid: snapshot['uid'],
      username: snapshot['username'],
    );
  }
}