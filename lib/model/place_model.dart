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
    required this.imgAsset,
    required this.iconAsset,
  });
}

List<TouristPlace> touristItem = [
  TouristPlace(
    placeName: 'Pesona Kampong',
    placeCategory: 'Cafe',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/cafe.svg',
    color: Colors.amber,
  ),
  TouristPlace(
    placeName: 'Alang Puyuh',
    placeCategory: 'Cafe',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/cafe.svg',
    color: Colors.indigo,
  ),
  TouristPlace(
    placeName: 'Kedai Malika',
    placeCategory: 'Cafe',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/cafe.svg',
    color: Colors.indigo,
  ),
  TouristPlace(
    placeName: 'Warung Wawan',
    placeCategory: 'Kedai',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/kedai.svg',
    color: Colors.indigo,
  ),
  TouristPlace(
    placeName: 'Mountain Cafe',
    placeCategory: 'Cafe',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/cafe.svg',
    color: Colors.lightGreenAccent,
  ),
  TouristPlace(
    placeName: 'Warung Mifta',
    placeCategory: 'Kedai',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/kedai.svg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Warung Mifta 2',
    placeCategory: 'Kedai',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/kedai.svg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Rumah Nenek',
    placeCategory: 'Penginapan',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/hotel.svg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Rumah Aya',
    placeCategory: 'Penginapan',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/hotel.svg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Sarang-Sarang',
    placeCategory: 'Camp',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/camping.svg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Bukit Bintang',
    placeCategory: 'Camp',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/camping.svg',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Taman Tri S',
    placeCategory: 'Taman',
    imgAsset: 'assets/images/default.jpg',
    iconAsset: 'assets/icon/taman.svg',
    color: Colors.lightBlueAccent,
  ),
];
