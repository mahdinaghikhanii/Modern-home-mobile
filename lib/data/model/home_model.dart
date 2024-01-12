class HomeData {
  final String title;
  final String icon;
  HomeData({required this.title, required this.icon});
}

List<HomeData> homeData = [
  HomeData(title: "Hot", icon: 'assets/hot.svg'),
  HomeData(title: "Cold", icon: 'assets/coold.svg'),
  HomeData(title: "Dry", icon: 'assets/dry.svg')
];
