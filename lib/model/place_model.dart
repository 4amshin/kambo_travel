import 'package:flutter/material.dart';

class TouristPlace {
  final String? placeName;
  final String? placeCategory;
  final Color? color;

  TouristPlace({
    required this.placeName,
    required this.placeCategory,
    required this.color,
  });
}

List<TouristPlace> touristItem = [
  TouristPlace(
    placeName: 'Pesona Kampong',
    placeCategory: 'Cafe',
    color: Colors.amber,
  ),
  TouristPlace(
    placeName: 'Alang Puyuh',
    placeCategory: 'Kedai',
    color: Colors.indigo,
  ),
  TouristPlace(
    placeName: 'Cafe Mountain',
    placeCategory: 'Cafe',
    color: Colors.lightGreenAccent,
  ),
  TouristPlace(
    placeName: 'Warung Mifta',
    placeCategory: 'Kedai',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Rumah Nenek',
    placeCategory: 'Penginapan',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Rumah Aya',
    placeCategory: 'Penginapan',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Sarang-Sarang',
    placeCategory: 'Camp',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Bukit Bintang',
    placeCategory: 'Camp',
    color: Colors.lightBlueAccent,
  ),
  TouristPlace(
    placeName: 'Taman Tri S',
    placeCategory: 'Taman',
    color: Colors.lightBlueAccent,
  ),
];
