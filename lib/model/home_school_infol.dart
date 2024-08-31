class HomeSchoolInfo {
  final String schoolName;
  final String schoolLogo;
  final String logo;
  final String location;
  final String price;
  final bool hasVideo;
  final String vipUrl;
  final List<ActivityInfo> activityList;
  final List<String> labels;
  HomeSchoolInfo(this.schoolName, this.schoolLogo, this.logo, this.activityList,
      this.labels, this.location, this.price, this.vipUrl, this.hasVideo);
}

class ActivityInfo {
  final String logo;
  final String title;
  final String url;

  ActivityInfo(this.logo, this.title, this.url);
}
