part of '../../page/sub_views/reviews_page.dart';

class _CommentListTile extends StatelessWidget {
  const _CommentListTile({
    required this.data,
  });

  final TeacherDetailComment data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 40.0,
                height: 40.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: TColor.grey50,
                  shape: BoxShape.circle,
                ),
                child: CustomNetworkImage(
                  imageUrl: data.photoImage,
                ),
              ),
              const SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.userName,
                    style:
                        TTextStyle.getBodyMedium(fontWeight: TFontWeight.bold),
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      RatingBar(
                        rating: data.rating,
                        starSize: 16.0,
                        spacing: 2.0,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        data.dateTime.format(pattern: DateFormats.mMMMddyyyy),
                        style: TTextStyle.getBodySmall(
                          fontWeight: TFontWeight.medium,
                          color: TColor.grey500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          ReadMoreText(
            data.description,
            textAlign: TextAlign.start,
            trimLines: 3,
            trimMode: TrimMode.line,
            trimCollapsedText: ' See more...',
            trimExpandedText: ' See less',
            style: TTextStyle.getBodyMedium(
              fontWeight: TFontWeight.medium,
              color: TColor.grey600,
            ),
          ),
        ],
      ),
    );
  }
}
