
import '../config.dart';

class CommonSmallCircle extends StatelessWidget {
  const CommonSmallCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s8,
      width: Sizes.s8,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color:
              appColor(context).primary.withOpacity(.10),
              width: 1)),
    );
  }
}
