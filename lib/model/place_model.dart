class TouristPlace {
  final String? placeName;
  final String? placeCategory;
  final String? heroTag;
  final String? rating;
  bool? isRecommend = false;
  final String? openHour;
  final String? imgAsset;
  final String? iconAsset;

  TouristPlace({
    required this.placeName,
    required this.placeCategory,
    required this.heroTag,
    required this.rating,
    this.isRecommend,
    this.openHour,
    this.imgAsset,
    required this.iconAsset,
  });
}

List<TouristPlace> touristItem = [
  TouristPlace(
    placeName: 'Pesona Kampong',
    placeCategory: 'Cafe',
    heroTag: 'pesona',
    rating: '4,5',
    isRecommend: true,
    openHour: '07 - 22',
    imgAsset: 'assets/images/pesona.jpg',
    iconAsset: 'assets/icon/cafe.svg',
  ),
  TouristPlace(
    placeName: 'Alang Puyuh',
    placeCategory: 'Cafe',
    heroTag: 'alang',
    rating: '4,0',
    isRecommend: true,
    openHour: '07 - 22',
    imgAsset: 'assets/images/alang.jpg',
    iconAsset: 'assets/icon/cafe.svg',
  ),
  TouristPlace(
    placeName: 'Kedai Malika',
    placeCategory: 'Cafe',
    heroTag: 'malika',
    rating: '4,0',
    isRecommend: true,
    openHour: '07 - 22',
    imgAsset: 'assets/images/malika.jpg',
    iconAsset: 'assets/icon/cafe.svg',
  ),
  TouristPlace(
    placeName: 'Warung Wawan',
    placeCategory: 'Kedai',
    heroTag: 'wawan',
    rating: '3,7',
    openHour: '07 - 22',
    imgAsset: 'assets/images/wawan.jpg',
    iconAsset: 'assets/icon/kedai.svg',
  ),
  TouristPlace(
    placeName: 'Mountain Cafe',
    placeCategory: 'Cafe',
    heroTag: 'mountain',
    rating: '3,8',
    openHour: '07 - 22',
    imgAsset: 'assets/images/mountain.jpg',
    iconAsset: 'assets/icon/cafe.svg',
  ),
  TouristPlace(
    placeName: 'Warung Mifta',
    placeCategory: 'Kedai',
    heroTag: 'mifta1',
    rating: '3,8',
    openHour: '07 - 22',
    imgAsset: 'assets/images/mifta1.jpg',
    iconAsset: 'assets/icon/kedai.svg',
  ),
  TouristPlace(
    placeName: 'Warung Mifta 2',
    placeCategory: 'Kedai',
    heroTag: 'mifta2',
    rating: '4,0',
    openHour: '07 - 22',
    imgAsset: 'assets/images/mifta2.jpg',
    iconAsset: 'assets/icon/kedai.svg',
  ),
  TouristPlace(
    placeName: 'Rumah Nenek',
    placeCategory: 'HomeStay',
    heroTag: 'nene',
    rating: '4,5',
    isRecommend: true,
    imgAsset: 'assets/images/nene.jpg',
    iconAsset: 'assets/icon/hotel.svg',
  ),
  TouristPlace(
    placeName: 'Rumah Aya',
    placeCategory: 'HomeStay',
    heroTag: 'aya',
    rating: '4,0',
    imgAsset: 'assets/images/aya.jpg',
    iconAsset: 'assets/icon/hotel.svg',
  ),
  TouristPlace(
    placeName: 'Sarang-Sarang',
    placeCategory: 'Camp',
    heroTag: 'sarang',
    rating: '4,5',
    imgAsset: 'assets/images/sarang.jpg',
    iconAsset: 'assets/icon/camping.svg',
  ),
  TouristPlace(
    placeName: 'Bukit Bintang',
    placeCategory: 'Camp',
    heroTag: 'bintang',
    rating: '4,5',
    imgAsset: 'assets/images/bintang.jpg',
    iconAsset: 'assets/icon/camping.svg',
  ),
  TouristPlace(
    placeName: 'Taman Tri S',
    placeCategory: 'Taman',
    heroTag: 'tris',
    rating: '3,5',
    openHour: '06 - 22',
    imgAsset: 'assets/images/tris.jpg',
    iconAsset: 'assets/icon/taman.svg',
  ),
];
