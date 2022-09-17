import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/colors.dart';

class DarkContainer extends StatelessWidget {
  final String iconAsset;
  final VoidCallback onTap;
  final String device;
  final String companyName;
  final bool itsOn;
  final VoidCallback switchButton;
  final bool isFav;
  final VoidCallback switchFav;
  const DarkContainer({
    Key? key,
    required this.iconAsset,
    required this.onTap,
    required this.device,
    required this.companyName,
    required this.itsOn,
    required this.switchButton,
    required this.isFav,
    required this.switchFav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: itsOn
              ? color_9
              : color_0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:  10,
            vertical:  6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: itsOn
                          ? color_10
                          : color_12,
                      borderRadius:
                          const BorderRadius.all(Radius.elliptical(45, 45)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        iconAsset,
                        color: itsOn ? color_0: color_13,
                      ),
                    ),
                  ),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    device,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: itsOn ? color_0 : color_14,
                        ),
                  ),
                  Text(
                    companyName,
                    textAlign: TextAlign.left,
                    style:   TextStyle(
                        color: itsOn ? color_0 : color_13,
                        fontSize: 13,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.6),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    itsOn ? 'On' : 'Off',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: itsOn ? color_0 : color_14,
                        ),
                  ),
                  GestureDetector(
                    onTap: switchButton,
                    child: Container(
                      width: 48,
                      height: 25.6,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: itsOn ? color_10 : color_11,
                        border: Border.all(
                          color: color_0,
                          width: itsOn ? 2 : 0,
                        ),
                      ),
                      child: Row(
                        children: [
                          itsOn ? const Spacer() : const SizedBox(),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: color_0,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
