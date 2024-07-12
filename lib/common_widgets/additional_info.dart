import '../config.dart';

class AdditionalInfo extends StatelessWidget {
  final String? text1,text2;
  final bool isDivider;
  const AdditionalInfo({super.key, this.text1, this.text2,  this.isDivider = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text1!,style: appCss.sfProRegular13.textColor(appColor(context).lightText),),
              Text(text2!,style: appCss.sfProBold13.textColor(appColor(context).primary),)
            ]
        ),
        if(isDivider)
        Divider(color: appColor(context).bgColor,height: 0,indent: 4,).marginSymmetric(vertical: Sizes.s10)
      ],
    );
  }
}
