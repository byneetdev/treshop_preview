part of '../home_page.dart';

class _BuildLabelSection extends StatelessWidget {
  const _BuildLabelSection({
    Key? key,
    required this.label,
    required this.onViewAllTap,
  }) : super(key: key);

  final String label;
  final VoidCallback onViewAllTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: theme.textTheme.headline3),
          InkWell(
            onTap: onViewAllTap,
            borderRadius: BorderRadius.circular(15.0),
            child: Text(
              'See all',
              style: theme.textTheme.subtitle1!
                  .copyWith(color: theme.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
