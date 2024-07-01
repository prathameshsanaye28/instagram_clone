import 'dart:typed_data';
import 'package:instagram_clone/models/user.dart' as model;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/resources/storage_methods.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;
    DocumentSnapshot snap = await _firestore.collection('users').doc(currentUser.uid!).get();

    return model.User.fromSnap(snap);
  }


  //signup user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String bio,
    required String username,
    required Uint8List file,    
  })async{
    String res = "Some error occurred";
    try{

      if(email.isNotEmpty||password.isNotEmpty||bio.isNotEmpty||username.isNotEmpty||file!=null){
        UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        
        String photoUrl = await StorageMethods().uploadImageToStorage('profilePics', file, false);

        //add user to database
        model.User user = model.User(
          username: username,
          uid: cred.user!.uid,
          email: email,
          bio:bio,
          followers:[],
          following:[],
          photoUrl: photoUrl,);


       await _firestore.collection('users').doc(cred.user!.uid).set(user.toJson());
        res = 'Success';
      } 

    } on FirebaseAuthException catch(err){
      if(err.code == 'invalid-email'){
        res = 'The email is invalid';
      }
      if(err.code == 'weak-password'){
        res = 'Password is weak';
      }
    }
    
    catch(err){
      res = err.toString();
    }
    return res;
  }


  //logging in
  Future<String> loginUser({
    required String email,
    required String password
  })async{
    String res = 'Some error occured';
    try{
      if(email.isNotEmpty || password.isNotEmpty)
      {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        res = 'success';
      }
      else{
        res = 'Please enter all details';
      }
    }
    catch(err){
      res = err.toString();
    }
    return res;
  }


}