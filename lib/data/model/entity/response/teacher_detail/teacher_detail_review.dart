import '../../../../../app/utils/constant/app_url.dart';

class TeacherDetailReview {
  TeacherDetailReview({
    required this.ratingCount,
    required this.totalRating,
    required this.starCounts,
    required this.comments,
  });

  final int ratingCount;
  final double totalRating;
  final List<({String title, int count})> starCounts;

  final List<TeacherDetailComment> comments;

  static TeacherDetailReview mockData = TeacherDetailReview(
      ratingCount: 1000,
      totalRating: 4,
      starCounts: <({int count, String title})>[
        (title: '5 star', count: 500),
        (title: '4 star', count: 500),
        (title: '3 star', count: 0),
        (title: '2 star', count: 0),
        (title: '1 star', count: 0),
      ],
      comments: TeacherDetailComment.mockData);
}

class TeacherDetailComment {
  TeacherDetailComment({
    required this.photoImage,
    required this.userName,
    required this.rating,
    required this.dateTime,
    required this.description,
  });

  final String photoImage;
  final String userName;
  final double rating;
  final DateTime dateTime;
  final String description;

  static const String mockDescription =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit rhoncus ante non iaculis. Aliquam sit amet enim molestie, consequat orsol Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit rhoncus ante non iaculis. Aliquam sit amet enim molestie, consequat orsol';

  static List<TeacherDetailComment> mockData = List<TeacherDetailComment>.generate(
    20,
    (int index) => TeacherDetailComment(
        photoImage: AppUrl.placeholderImageUrl,
        userName: 'John Doe',
        rating: 3.5,
        dateTime: DateTime.now(),
        description: mockDescription),
  );
}
