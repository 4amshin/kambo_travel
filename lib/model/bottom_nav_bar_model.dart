class KaBottomNavBar {
  final String? svgAssest;

  KaBottomNavBar({
    required this.svgAssest,
  });
}

List<KaBottomNavBar> navBarItem = [
  KaBottomNavBar(
    svgAssest: 'assets/icon/home-1.svg',
  ),
  KaBottomNavBar(
    svgAssest: 'assets/icon/location.svg',
  ),
  KaBottomNavBar(
    svgAssest: 'assets/icon/archive-tick.svg',
  ),
  KaBottomNavBar(
    svgAssest: 'assets/icon/setting.svg',
  ),
];
