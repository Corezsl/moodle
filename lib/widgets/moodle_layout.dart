import 'package:flutter/material.dart';
import 'nav_drawer.dart';

class MoodleLayout extends StatelessWidget {
  final Widget child;
  final String title;

  const MoodleLayout({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name ?? '/';
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 1,
        titleSpacing: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // Custom Moodle-like Logo Symbol
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: const Color(0xFF0075FF), // Blue icon color
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Center(
                  child: Text(
                    'm',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              if (isDesktop) ...[
                _navLink(context, 'Dashboard', '/', currentRoute == '/'),
                _navLink(context, 'My Modules and Courses', '/courses', currentRoute == '/courses'),
              ] else
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          const CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xFFE9ECEF),
            foregroundColor: Color(0xFF5D2D5F),
            child: Text(
              'YH', // Initials for "Yourname Here"
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      drawer: isDesktop ? null : const NavDrawer(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Left Sidebar for Desktop view matching Moodle purple/burgundy panel
          if (isDesktop)
            Container(
              width: 70,
              color: const Color(0xFF5D2D5F), // Deep purple side panel
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  _sidebarIcon(context, Icons.speed_outlined, '/', currentRoute == '/'),
                  _sidebarIcon(context, Icons.school_outlined, '/courses', currentRoute == '/courses'),
                ],
              ),
            ),
          // Main Content View
          Expanded(
            child: Container(
              color: const Color(0xFFF2F2F2), // Moodle off-white background
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  Widget _navLink(BuildContext context, String label, String route, bool active) {
    return TextButton(
      onPressed: () {
        if (ModalRoute.of(context)?.settings.name != route) {
          Navigator.pushReplacementNamed(context, route);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Text(
          label,
          style: TextStyle(
            color: active ? const Color(0xFF5D2D5F) : Colors.black87,
            fontWeight: active ? FontWeight.bold : FontWeight.normal,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget _sidebarIcon(BuildContext context, IconData icon, String route, bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: active
            ? const Border(left: BorderSide(color: Colors.white, width: 4))
            : null,
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white, size: 28),
        onPressed: () {
          if (ModalRoute.of(context)?.settings.name != route) {
            Navigator.pushReplacementNamed(context, route);
          }
        },
      ),
    );
  }
}
