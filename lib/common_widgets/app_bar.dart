
import 'package:dhruvi_practical/config.dart';
import 'package:flutter_svg/svg.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? title;
  final bool isAction;
  const CommonAppBar({super.key, this.title, this.isAction=true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appColor(context).whiteColor,
      leading: SvgPicture.asset(svgAssets.arrowLeft,
          height: Sizes.s24, width: Sizes.s24, fit: BoxFit.scaleDown),
      centerTitle: true,
      title: Text(title!,
          style: appCss.sfProMedium18
              .textColor(appColor(context).darkText)
              .letterSpace(1.2)),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(28),
        child: Container(
          margin: EdgeInsets.only(bottom: Sizes.s8),
          padding: EdgeInsets.symmetric(
              vertical: Sizes.s5, horizontal: Sizes.s16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: appColor(context).lightText.withOpacity(.10),
          ),
          child: Text(
            "05/24/22 - 05/27/22",
            style:
            appCss.sfProBold11.textColor(appColor(context).lightText),
          ),
        ),
      ),
      actions:isAction ? [
        Image.asset(imageAssets.currency, height: Sizes.s24)
            .marginSymmetric(horizontal: Sizes.s17)
      ]:[],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
