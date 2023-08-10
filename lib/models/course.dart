class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;
  String video;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
    required this.video,
  });
}

List<Course> courses = [
  Course(
    author: "Flutter",
    completedPercentage: .75,
    name: "Flutter",
    thumbnail: "assets/images/Flutter.png",
    video: "65 Videos",
  ),
  Course(
    author: "React Native",
    completedPercentage: .60,
    name: "React Native",
    thumbnail: "assets/images/React Native.png",
    video: "45 Videos",
  ),
  Course(
    author: "Python",
    completedPercentage: .75,
    name: "Python",
    thumbnail: "assets/images/Python.png",
    video: "30 Videos",
  ),
  Course(
    author: "C#",
    completedPercentage: .75,
    name: "C#",
    thumbnail: "assets/images/C#.png",
    video: "21 Videos",
  ),
];
