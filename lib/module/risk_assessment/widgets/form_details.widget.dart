import 'package:flutter/material.dart';

import 'sub_details_form.widget.dart';

class FormDetailsWidget extends StatelessWidget {
  const FormDetailsWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SubDetailsForm(
              size: size,
              title: 'Risk Description',
            ),
            SubDetailsForm(
              size: size,
              title: 'Initial Score',
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SubDetailsForm(
              size: size,
              title: 'Go',
            ),
            SubDetailsForm(
              size: size,
              title: 'Migitation Measure',
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SubDetailsForm(
              size: size,
              title: 'Final Score',
            ),
            SubDetailsForm(
              size: size,
              title: 'No Go',
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SubDetailsForm(
          size: size,
          title: 'Final Score',
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
