import 'package:flutter/material.dart';
import '../widgets/moodle_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MoodleLayout(
      title: 'Dashboard',
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Warning Banner
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF8D7DA),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xFFF5C6CB)),
              ),
              padding: const EdgeInsets.all(12),
              child: const Text(
                'Timeline Upgrade: Timeline is currently not visible in the Safari browser. '
                'If you have problems please try Chrome, Firefox or Edge.',
                style: TextStyle(color: Color(0xFF721C24), fontSize: 13),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5D2D5F),
              ),
            ),
            const SizedBox(height: 24),

            // Placeholder block 1
            Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feature Placeholder 1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D2D5F),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'This is a placeholder block. Students must implement features like Search Courses, Timeline, or Recently Accessed Items here.',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Placeholder block 2
            Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feature Placeholder 2',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5D2D5F),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'This is a placeholder block. Students must implement features like the mini Calendar view here.',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
