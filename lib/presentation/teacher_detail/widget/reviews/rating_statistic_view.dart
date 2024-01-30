part of '../../page/sub_views/reviews_page.dart';

class _RatingStatisticView extends StatelessWidget {
  const _RatingStatisticView({
    required this.data,
  });

  final TeacherDetailReview data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Ratings',
          style: TTextStyle.getBodyLarge(fontWeight: TFontWeight.bold),
        ),
        const SizedBox(height: 16.0),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: context.colorScheme.secondary,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: <Widget>[
              Text(
                'Student Evaluation',
                style: TTextStyle.getBodyLarge(
                  fontWeight: TFontWeight.bold,
                  color: context.colorScheme.surface,
                ),
              ),
              const SizedBox(height: 2.0),
              Text(
                '${data.ratingCount.getThousandDivider(decimalDigit: 0)} Ratings',
                style: TTextStyle.getBodyXSmall(
                  fontWeight: TFontWeight.medium,
                  color: TColor.grey300,
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                decoration: const ShapeDecoration(
                  shape: StadiumBorder(
                    side: BorderSide(
                      width: 1.5,
                      color: TColor.grey300,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RatingBar(
                      rating: data.totalRating,
                      emptyColor: TColor.grey400,
                    ),
                    Text(
                      '${data.totalRating.getRatingForm()} out of 5',
                      style: TTextStyle.getBodySmall(
                        fontWeight: TFontWeight.bold,
                        color: context.colorScheme.surface,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 56.0),
                child: _StarCountView(
                  starCounts: data.starCounts,
                  totalRatingCount: data.ratingCount,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
