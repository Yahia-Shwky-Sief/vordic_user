import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vordic_user/features/home/data/models/ad.dart';

class AdDateSource{
  CollectionReference adCollection = FirebaseFirestore.instance.collection('ad');

  Future<List<Ad>> getAds() async {
    try {
      QuerySnapshot querySnapshot = await adCollection.get();
      List<Ad> ads = querySnapshot.docs.map((doc) => Ad.fromJson(doc.data() as Map<String, dynamic>)).toList();
      return ads;
    } catch (e) {
      throw Exception('Failed to load ads: $e');
    }
  }
}