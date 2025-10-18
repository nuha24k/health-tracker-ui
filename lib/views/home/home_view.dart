import 'package:flutter/material.dart';
import 'widgets/home_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with profile and notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      'assets/images/profile-removebg-preview.png',
                    ),
                    backgroundColor: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined, size: 28),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Greeting
              const Text(
                'Good morning, Emma ☀️',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3748),
                ),
              ),
              const SizedBox(height: 30),

              // Category tabs
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildTab('Activity', true),
                    const SizedBox(width: 20),
                    _buildTab('Mood', false),
                    const SizedBox(width: 20),
                    _buildTab('Food', false),
                    const SizedBox(width: 20),
                    _buildTab('Sleep', false),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Mood History Section with Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Mood History',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2D3748),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Mood emojis row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildMoodDay('😡', 'Mon', const Color(0xFFFFB3B3)),
                        _buildMoodDay('😑', 'Tue', const Color(0xFFD1D9E6)),
                        _buildMoodDay('😢', 'Wed', const Color(0xFF78C1F3)),
                        _buildMoodDay('😊', 'Thu', const Color(0xFFFFD6E7)),
                        _buildMoodDay('😄', 'Fri', const Color(0xFF9BE8D8)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Actions Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Actions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2D3748),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Action buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildActionCard(
                      Icons.self_improvement,
                      'Meditate',
                      gradient: const LinearGradient(
                        colors: [Color(0xFF9BE8D8), Color(0xFF78C1F3)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      iconColor: const Color(0xFF2D3748),
                      textColor: const Color(0xFF2D3748),
                    ),
                    const SizedBox(width: 16),
                    _buildActionCard(
                      Icons.book,
                      'Journal',
                      gradient: const LinearGradient(
                        colors: [Color(0xFFE2F6CA), Color(0xFF9BE8D8)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      iconColor: const Color(0xFF2D3748),
                      textColor: const Color(0xFF2D3748),
                    ),
                    const SizedBox(width: 16),
                    _buildActionCard(
                      Icons.chat_bubble_outline,
                      'Chatting',
                      backgroundColor: const Color(0xFFFFD6E7),
                      iconColor: const Color(0xFF2D3748),
                      textColor: const Color(0xFF2D3748),
                    ),
                    const SizedBox(width: 16),
                    _buildActionCard(
                      Icons.menu_book,
                      'Reading',
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFFF2B3), Color(0xFFFFE4B3)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      iconColor: const Color(0xFF2D3748),
                      textColor: const Color(0xFF2D3748),
                    ),
                    const SizedBox(width: 16),
                    _buildActionCard(
                      Icons.restaurant_menu,
                      'Eating',
                      gradient: const RadialGradient(
                        colors: [Color(0xFFD1D9E6), Color(0xFF78C1F3)],
                      ),
                      iconColor: const Color(0xFF2D3748),
                      textColor: const Color(0xFF2D3748),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Activity Suggestions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Activity Suggestions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2D3748),
                    ),
                  ),
                  Icon(Icons.tune, size: 20, color: Colors.grey[600]),
                ],
              ),
              const SizedBox(height: 20),

              // Suggestion cards
              _buildSuggestionCard(
                Icons.directions_run,
                'Take a 5-min session',
                '5 min • 3 exercise',
                '+20 🔥',
                const Color(0xFF78C1F3),
              ),
              const SizedBox(height: 15),
              _buildSuggestionCard(
                Icons.self_improvement,
                'Short meditation',
                '',
                '+20 🔥',
                const Color(0xFF9BE8D8),
              ),

              // Extra padding untuk memberikan ruang di bawah (dikurangi karena bottom nav dinaikkan)
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(String text, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF2D3748) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? Colors.white : const Color(0xFF718096),
          fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildMoodDay(String emoji, String day, Color bgColor) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(emoji, style: const TextStyle(fontSize: 24)),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          day,
          style: const TextStyle(fontSize: 12, color: Color(0xFF718096)),
        ),
      ],
    );
  }

  Widget _buildActionCard(
    IconData icon,
    String title, {
    Color? backgroundColor,
    Gradient? gradient,
    Color? iconColor,
    Color? textColor,
  }) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: gradient,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon, 
            size: 24, 
            color: iconColor ?? const Color(0xFF553C9A),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: textColor ?? const Color(0xFF2D3748),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestionCard(
    IconData icon,
    String title,
    String subtitle,
    String points,
    Color bgColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 20, color: const Color(0xFF2D3748)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2D3748),
                  ),
                ),
                if (subtitle.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF718096),
                    ),
                  ),
                ],
              ],
            ),
          ),
          Text(
            points,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3748),
            ),
          ),
        ],
      ),
    );
  }
}
