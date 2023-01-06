import 'package:flutter/material.dart';

class TouristPlace {
  final String? placeName;
  final String? placeCategory;
  final Color? color;
  final String? imgAsset;
  final String? iconAsset;

  TouristPlace({
    required this.placeName,
    required this.placeCategory,
    required this.color,
    this.imgAsset,
    required this.iconAsset,
  });
}

List<TouristPlace> touristItem = [
  TouristPlace(
    placeName: 'Pesona Kampong',
    placeCategory: 'Cafe',
    iconAsset: 'assets/icon/cafe.svg',
    imgAsset: 'assets/images/pesona.jpg',
    color: Colors.amber,
  ),
  TouristPlace(
    placeName: 'Alang Puyuh',
    placeCategory: 'Cafe',
    iconAsset: 'assets/icon/cafe.svg',
    imgAsset: 'assets/images/alang.jpg',
    color: Colors.indigo,
  ),
  TouristPlace(
    placeName: 'Kedai Malika',
    placeCategory: 'Cafe',
    iconAsset: 'assets/icon/cafe.svg',
    imgAsset: 'assets/images/malika.jpg',
    color: Colors.indigo,
  ),
  TouristPlace(
    placeName: 'Warung Wawan',
    placeCategory: 'Kedai',
    iconAsset: 'assets/icon/kedai.svg',
    imgAsset: 'assets/images/wawan.jpg',
    color: Colors.indigo,
  ),
  TouristPlace(
    placeName: 'Mountain Cafe',
    placeCategory: 'Cafe',
    iconAsset: 'assets/icon/cafe.svg',
    imgAsset: 'assets/images/mountain.jpg',
    color: Colors.lightGreenAccent,
  ),
  TouristPlace(
    placeName: 'Warung Mifta',
    placeCategory: 'Kedai',
    iconAsset: 'assets/icon/kedai.svg',
    imgAsset: 'assets/images/mifta1.jpg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Warung Mifta 2',
    placeCategory: 'Kedai',
    iconAsset: 'assets/icon/kedai.svg',
    imgAsset: 'assets/images/mifta2.jpg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Rumah Nenek',
    placeCategory: 'Penginapan',
    iconAsset: 'assets/icon/hotel.svg',
    imgAsset: 'assets/images/nene.jpg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Rumah Aya',
    placeCategory: 'Penginapan',
    iconAsset: 'assets/icon/hotel.svg',
    imgAsset: 'assets/images/aya.jpg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Sarang-Sarang',
    placeCategory: 'Camp',
    iconAsset: 'assets/icon/camping.svg',
    imgAsset: 'assets/images/sarang.jpg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Bukit Bintang',
    placeCategory: 'Camp',
    iconAsset: 'assets/icon/camping.svg',
    imgAsset: 'assets/images/bintang.jpg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Taman Tri S',
    placeCategory: 'Taman',
    iconAsset: 'assets/icon/taman.svg',
    imgAsset: 'assets/images/tris.jpg',
    color: Colors.lightBlueAccent,
  ),
];
