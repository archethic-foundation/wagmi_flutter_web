import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TabHeader extends StatelessWidget {
  const TabHeader({required this.methodName, super.key});

  final String methodName;

  @override
  Widget build(BuildContext context) {
    final urlWagmi = 'https://wagmi.sh/core/api/actions/$methodName';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text('This tab is used to test the $methodName method'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                'The documentation is available here: $urlWagmi',
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () async {
                  final uri = Uri.parse(urlWagmi);
                  if (!await canLaunchUrl(uri)) return;

                  await launchUrl(uri);
                },
                child: const Icon(
                  Icons.open_in_new,
                  size: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
