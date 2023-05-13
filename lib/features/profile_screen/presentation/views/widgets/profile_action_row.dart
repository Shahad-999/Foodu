import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileActionRow extends StatelessWidget {
  const ProfileActionRow({
    Key? key,
    required this.icon,
    required this.text,
    this.onClickItem,
    this.iconData,
  })  : assert(icon != null || iconData != null),
        assert(icon == null || iconData == null),
        super(key: key);

  const ProfileActionRow.icon({
    Key? key,
    required this.text,
    this.onClickItem,
    required this.iconData,
  })  : icon = null,
        super(key: key);

  final String? icon;
  final IconData? iconData;
  final String text;
  final VoidCallback? onClickItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          icon != null ?
          Center(
            child: SvgPicture.asset(
              icon!,
              semanticsLabel: '',
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
            ),
          ) : Center(
            child: Icon(
                iconData,
              size: 24,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 1,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
              maxLines: 1,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          if(onClickItem !=null ) GestureDetector(
            onTap: onClickItem,
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          )
        ],
      ),
    );
  }
}
