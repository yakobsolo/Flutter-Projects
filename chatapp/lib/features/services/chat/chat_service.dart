import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  // get instance of firestore

  final FirebaseFirestore _firsestore = FirebaseFirestore.instance;

  // get user stream

  Stream<List<Map<String, dynamic>>> getUsersStream() {
    return _firsestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final user = doc.data();

        return user;
      }).toList();
    });
  }
}
