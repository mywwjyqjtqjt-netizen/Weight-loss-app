import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      // Original App ki Dark aur Neon Orange Theme
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange/Red
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black Background
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  // Screens ke placeholders jinhein hum agle steps mein bharenge
  final List<Widget> _screens = [
    const Center(child: Text('Plan Screen (Step 2 mein aayegi)', style: TextStyle(fontSize: 18, color: Colors.grey))),
    const Center(child: Text('Report Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
    const Center(child: Text('Me Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  // Step 2 Update: Ab humne placeholder ki jagah actual PlanScreen() link kar di hai
  final List<Widget> _screens = [
    const PlanScreen(),
    const Center(child: Text('Report Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
    const Center(child: Text('Me Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}

// ==================== NEW CODE: PLAN SCREEN & HERO BANNER ====================
class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOSE WEIGHT FOR MEN',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 30 DAYS CHALLENGE CARD (Original UI Copy)
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'FULL BODY CHALLENGE',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4500),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '30 DAYS',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '0% COMPLETED',
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0, // 0% initial completion
                        backgroundColor: Color(0xFF333333),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'START CHALLENGE',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Workout Categories (Step 3 mein aayengi)',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const PlanScreen(),
    const Center(child: Text('Report Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
    const Center(child: Text('Me Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOSE WEIGHT FOR MEN',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 30 Days Challenge Card (Step 2 wala)
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'FULL BODY CHALLENGE',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4500),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '30 DAYS',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '0% COMPLETED',
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0,
                        backgroundColor: Color(0xFF333333),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'START CHALLENGE',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // ==================== NEW CODE: BODY FOCUS LIST ====================
              const Text(
                'BODY FOCUS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 15),

              // Alag-alag body target workout cards
              _buildWorkoutCard('ABS WORKOUT', 'Beginner • 15 Mins', Icons.accessibility_new, const Color(0xFFE65100)),
              _buildWorkoutCard('CHEST WORKOUT', 'Intermediate • 18 Mins', Icons.fitness_center, const Color(0xFFD84315)),
              _buildWorkoutCard('ARM WORKOUT', 'Beginner • 12 Mins', Icons.star_border, const Color(0xFF311B92)),
              _buildWorkoutCard('LEG WORKOUT', 'Advanced • 25 Mins', Icons.directions_run, const Color(0xFF1B5E20)),
            ],
          ),
        ),
      ),
    );
  }

  // Cards banane wala helper widget function (Taki code clean rahe)
  Widget _buildWorkoutCard(String title, String subtitle, IconData iconData, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: accentColor, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 15, color: Colors.white),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
        onTap: () {
          // Agle steps mein yahan click karne se exercises detail screen khulegi
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const PlanScreen(),
    const Center(child: Text('Report Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
    const Center(child: Text('Me Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOSE WEIGHT FOR MEN',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 30 Days Challenge Card
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'FULL BODY CHALLENGE',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4500),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '30 DAYS',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '0% COMPLETED',
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0,
                        backgroundColor: Color(0xFF333333),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      // Step 4 Update: Button click par navigation jodi hai
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DaysGridScreen()),
                        );
                      },
                      child: const Text(
                        'START CHALLENGE',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'BODY FOCUS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 15),
              _buildWorkoutCard('ABS WORKOUT', 'Beginner • 15 Mins', Icons.accessibility_new, const Color(0xFFE65100)),
              _buildWorkoutCard('CHEST WORKOUT', 'Intermediate • 18 Mins', Icons.fitness_center, const Color(0xFFD84315)),
              _buildWorkoutCard('ARM WORKOUT', 'Beginner • 12 Mins', Icons.star_border, const Color(0xFF311B92)),
              _buildWorkoutCard('LEG WORKOUT', 'Advanced • 25 Mins', Icons.directions_run, const Color(0xFF1B5E20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String subtitle, IconData iconData, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: accentColor, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 15, color: Colors.white),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
        onTap: () {},
      ),
    );
  }
}

// ==================== NEW CODE: 30 DAYS GRID SCREEN ====================
class DaysGridScreen extends StatelessWidget {
  const DaysGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '30 DAYS CHALLENGE',
          style: TextStyle(fontWeight: FontWeight.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 30, // 30 Days total
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Har line mein 4 circles honge original app ki tarah
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context) {
            int dayNumber = context.hashCode % 2 == 0 ? 0 : 1; // Fake logic for design variation
            int currentDay = index + 1;
            
            // Rest days built-in copy (Original app mein har 4-5 din baad rest hota hai)
            bool isRestDay = currentDay % 4 == 0;

            return InkWell(
              onTap: () {
                // Step 5 mein yahan click karne par Exercises Detail list open hogi
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isRestDay ? const Color(0xFF333333) : const Color(0xFF1E1E1E),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isRestDay ? Colors.transparent : const Color(0xFFFF4500).withOpacity(0.4),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: isRestDay
                      ? const Icon(Icons.coffee, color: Colors.amber, size: 18) // Rest Day Icon
                      : Text(
                          '$currentDay',
                          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const PlanScreen(),
    const Center(child: Text('Report Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
    const Center(child: Text('Me Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOSE WEIGHT FOR MEN',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 30 Days Challenge Card
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'FULL BODY CHALLENGE',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4500),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '30 DAYS',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '0% COMPLETED',
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0,
                        backgroundColor: Color(0xFF333333),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DaysGridScreen()),
                        );
                      },
                      child: const Text(
                        'START CHALLENGE',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'BODY FOCUS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 15),
              _buildWorkoutCard('ABS WORKOUT', 'Beginner • 15 Mins', Icons.accessibility_new, const Color(0xFFE65100)),
              _buildWorkoutCard('CHEST WORKOUT', 'Intermediate • 18 Mins', Icons.fitness_center, const Color(0xFFD84315)),
              _buildWorkoutCard('ARM WORKOUT', 'Beginner • 12 Mins', Icons.star_border, const Color(0xFF311B92)),
              _buildWorkoutCard('LEG WORKOUT', 'Advanced • 25 Mins', Icons.directions_run, const Color(0xFF1B5E20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String subtitle, IconData iconData, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: accentColor, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 15, color: Colors.white),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
        onTap: () {},
      ),
    );
  }
}

// ==================== COPIED 30 DAYS GRID SCREEN ====================
class DaysGridScreen extends StatelessWidget {
  const DaysGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '30 DAYS CHALLENGE',
          style: TextStyle(fontWeight: FontWeight.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 30, 
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 4 circles per row like Leap Fitness app
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) { // FIXED: index parameter added properly here
            int currentDay = index + 1;
            bool isRestDay = currentDay % 4 == 0; // Built-in rest days

            return InkWell(
              onTap: () {
                // Step 5 mein yahan click se actual exercise screen open hogi
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isRestDay ? const Color(0xFF333333) : const Color(0xFF1E1E1E),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isRestDay ? Colors.transparent : const Color(0xFFFF4500).withOpacity(0.4),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: isRestDay
                      ? const Icon(Icons.coffee, color: Colors.amber, size: 18) 
                      : Text(
                          '$currentDay',
                          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const PlanScreen(),
    const Center(child: Text('Report Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
    const Center(child: Text('Me Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOSE WEIGHT FOR MEN',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'FULL BODY CHALLENGE',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4500),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '30 DAYS',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '0% COMPLETED',
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0,
                        backgroundColor: Color(0xFF333333),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DaysGridScreen()),
                        );
                      },
                      child: const Text(
                        'START CHALLENGE',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'BODY FOCUS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 15),
              _buildWorkoutCard('ABS WORKOUT', 'Beginner • 15 Mins', Icons.accessibility_new, const Color(0xFFE65100)),
              _buildWorkoutCard('CHEST WORKOUT', 'Intermediate • 18 Mins', Icons.fitness_center, const Color(0xFFD84315)),
              _buildWorkoutCard('ARM WORKOUT', 'Beginner • 12 Mins', Icons.star_border, const Color(0xFF311B92)),
              _buildWorkoutCard('LEG WORKOUT', 'Advanced • 25 Mins', Icons.directions_run, const Color(0xFF1B5E20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String subtitle, IconData iconData, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: accentColor, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 15, color: Colors.white),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
        onTap: () {},
      ),
    );
  }
}

class DaysGridScreen extends StatelessWidget {
  const DaysGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '30 DAYS CHALLENGE',
          style: TextStyle(fontWeight: FontWeight.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 30, 
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, 
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) { 
            int currentDay = index + 1;
            bool isRestDay = currentDay % 4 == 0; 

            return InkWell(
              onTap: () {
                // Step 5 Update: Day par click karne se exercises screen khulegi
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseListScreen(dayTitle: 'DAY $currentDay'),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isRestDay ? const Color(0xFF333333) : const Color(0xFF1E1E1E),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isRestDay ? Colors.transparent : const Color(0xFFFF4500).withOpacity(0.4),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: isRestDay
                      ? const Icon(Icons.coffee, color: Colors.amber, size: 18) 
                      : Text(
                          '$currentDay',
                          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// ==================== NEW CODE: EXERCISE LIST SCREEN ====================
class ExerciseListScreen extends StatelessWidget {
  final String dayTitle;
  const ExerciseListScreen({super.key, required this.dayTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 1. TOP HERO BANNER (Sporty look)
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF4500), Color(0xFF1E1E1E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: const EdgeInsets.only(left: 16, bottom: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dayTitle,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.black, color: Colors.white),
                    ),
                    const Text(
                      'Full Body Lose Weight • 20 Mins',
                      style: TextStyle(fontSize: 14, color: Colors.white70, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          // 2. EXERCISES LIST VIEW
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                _buildExerciseTile('JUMPING JACKS', '00:30', Icons.directions_run),
                _buildExerciseTile('INCLINE PUSH-UPS', 'x12', Icons.fitness_center),
                _buildExerciseTile('ABDOMINAL CRUNCHES', 'x16', Icons.accessibility_new),
                _buildExerciseTile('RUSSIAN TWIST', 'x20', Icons.sync),
                _buildExerciseTile('PLANK', '00:40', Icons.timer),
                _buildExerciseTile('COBRA STRETCH', '00:30', Icons.self_improvement),
              ],
            ),
          ),

          // 3. BOTTOM START BUTTON
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF4500),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              onPressed: () {
                // Step 6 mein actual workout tracking full-screen timer setup karenge
              },
              child: const Text(
                'START',
                style: TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Exercise Tile Helper Widget
  Widget _buildExerciseTile(String title, String duration, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFFF4500).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFFFF4500), size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
        subtitle: Text(
          duration,
          style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.menu, color: Colors.grey, size: 16),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const PlanScreen(),
    const Center(child: Text('Report Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
    const Center(child: Text('Me Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOSE WEIGHT FOR MEN',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'FULL BODY CHALLENGE',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4500),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '30 DAYS',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '0% COMPLETED',
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0,
                        backgroundColor: Color(0xFF333333),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DaysGridScreen()),
                        );
                      },
                      child: const Text(
                        'START CHALLENGE',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'BODY FOCUS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 15),
              _buildWorkoutCard('ABS WORKOUT', 'Beginner • 15 Mins', Icons.accessibility_new, const Color(0xFFE65100)),
              _buildWorkoutCard('CHEST WORKOUT', 'Intermediate • 18 Mins', Icons.fitness_center, const Color(0xFFD84315)),
              _buildWorkoutCard('ARM WORKOUT', 'Beginner • 12 Mins', Icons.star_border, const Color(0xFF311B92)),
              _buildWorkoutCard('LEG WORKOUT', 'Advanced • 25 Mins', Icons.directions_run, const Color(0xFF1B5E20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String subtitle, IconData iconData, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: accentColor, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 15, color: Colors.white),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
        onTap: () {},
      ),
    );
  }
}

class DaysGridScreen extends StatelessWidget {
  const DaysGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '30 DAYS CHALLENGE',
          style: TextStyle(fontWeight: FontWeight.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 30, 
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, 
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) { 
            int currentDay = index + 1;
            bool isRestDay = currentDay % 4 == 0; 

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseListScreen(dayTitle: 'DAY $currentDay'),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isRestDay ? const Color(0xFF333333) : const Color(0xFF1E1E1E),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isRestDay ? Colors.transparent : const Color(0xFFFF4500).withOpacity(0.4),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: isRestDay
                      ? const Icon(Icons.coffee, color: Colors.amber, size: 18) 
                      : Text(
                          '$currentDay',
                          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ExerciseListScreen extends StatelessWidget {
  final String dayTitle;
  const ExerciseListScreen({super.key, required this.dayTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF4500), Color(0xFF1E1E1E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: const EdgeInsets.only(left: 16, bottom: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dayTitle,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.black, color: Colors.white),
                    ),
                    const Text(
                      'Full Body Lose Weight • 20 Mins',
                      style: TextStyle(fontSize: 14, color: Colors.white70, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                _buildExerciseTile('JUMPING JACKS', '00:30', Icons.directions_run),
                _buildExerciseTile('INCLINE PUSH-UPS', 'x12', Icons.fitness_center),
                _buildExerciseTile('ABDOMINAL CRUNCHES', 'x16', Icons.accessibility_new),
                _buildExerciseTile('RUSSIAN TWIST', 'x20', Icons.sync),
                _buildExerciseTile('PLANK', '00:40', Icons.timer),
                _buildExerciseTile('COBRA STRETCH', '00:30', Icons.self_improvement),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF4500),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              // Step 6 Update: Navigation to WorkoutTimerScreen
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WorkoutTimerScreen()),
                );
              },
              child: const Text(
                'START',
                style: TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseTile(String title, String duration, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFFF4500).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFFFF4500), size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
        subtitle: Text(
          duration,
          style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.menu, color: Colors.grey, size: 16),
      ),
    );
  }
}

// ==================== NEW CODE: WORKOUT TIMER SCREEN ====================
class WorkoutTimerScreen extends StatelessWidget {
  const WorkoutTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.volume_up, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Exercise Big Display Icon (Original app copy)
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFFF4500), width: 3),
              ),
              child: const Icon(
                Icons.directions_run, 
                size: 90, 
                color: Color(0xFFFF4500),
              ),
            ),
            
            // Name of the exercise
            const Column(
              children: [
                Text(
                  'JUMPING JACKS',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.black, letterSpacing: 1.5),
                ),
                SizedBox(height: 8),
                Text(
                  'Ankhon ko samne rakhein aur koodien',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),

            // Big countdown tracker
            const Text(
              '00:30',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.black, color: Colors.white),
            ),

            // Play/Pause Control Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 36,
                  icon: const Icon(Icons.skip_previous, color: Colors.grey),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: const Color(0xFFFF4500),
                  child: IconButton(
                    iconSize: 36,
                    icon: const Icon(Icons.pause, color: Colors.white),
                    onPressed: () {
                      // Is par click se local stop status trigger hota hai
                    },
                  ),
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: const Color(0xFF333333),
                  child: IconButton(
                    iconSize: 24,
                    icon: const Icon(Icons.done, color: Colors.green),
                    onPressed: () {
                      // Step 7 mein yahan click se workout completed confirmation screen aayegi
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  // Step 7 Update: ReportScreen real screen ke sath replace ho gayi hai
  final List<Widget> _screens = [
    const PlanScreen(),
    const ReportScreen(),
    const Center(child: Text('Me Screen (Agle steps mein)', style: TextStyle(fontSize: 18, color: Colors.grey))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOSE WEIGHT FOR MEN',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'FULL BODY CHALLENGE',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4500),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '30 DAYS',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '0% COMPLETED',
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0,
                        backgroundColor: Color(0xFF333333),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DaysGridScreen()),
                        );
                      },
                      child: const Text(
                        'START CHALLENGE',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'BODY FOCUS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 15),
              _buildWorkoutCard('ABS WORKOUT', 'Beginner • 15 Mins', Icons.accessibility_new, const Color(0xFFE65100)),
              _buildWorkoutCard('CHEST WORKOUT', 'Intermediate • 18 Mins', Icons.fitness_center, const Color(0xFFD84315)),
              _buildWorkoutCard('ARM WORKOUT', 'Beginner • 12 Mins', Icons.star_border, const Color(0xFF311B92)),
              _buildWorkoutCard('LEG WORKOUT', 'Advanced • 25 Mins', Icons.directions_run, const Color(0xFF1B5E20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String subtitle, IconData iconData, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: accentColor, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 15, color: Colors.white),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
        onTap: () {},
      ),
    );
  }
}

class DaysGridScreen extends StatelessWidget {
  const DaysGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '30 DAYS CHALLENGE',
          style: TextStyle(fontWeight: FontWeight.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 30, 
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, 
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) { 
            int currentDay = index + 1;
            bool isRestDay = currentDay % 4 == 0; 

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseListScreen(dayTitle: 'DAY $currentDay'),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isRestDay ? const Color(0xFF333333) : const Color(0xFF1E1E1E),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isRestDay ? Colors.transparent : const Color(0xFFFF4500).withOpacity(0.4),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: isRestDay
                      ? const Icon(Icons.coffee, color: Colors.amber, size: 18) 
                      : Text(
                          '$currentDay',
                          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ExerciseListScreen extends StatelessWidget {
  final String dayTitle;
  const ExerciseListScreen({super.key, required this.dayTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF4500), Color(0xFF1E1E1E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: const EdgeInsets.only(left: 16, bottom: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dayTitle,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.black, color: Colors.white),
                    ),
                    const Text(
                      'Full Body Lose Weight • 20 Mins',
                      style: TextStyle(fontSize: 14, color: Colors.white70, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                _buildExerciseTile('JUMPING JACKS', '00:30', Icons.directions_run),
                _buildExerciseTile('INCLINE PUSH-UPS', 'x12', Icons.fitness_center),
                _buildExerciseTile('ABDOMINAL CRUNCHES', 'x16', Icons.accessibility_new),
                _buildExerciseTile('RUSSIAN TWIST', 'x20', Icons.sync),
                _buildExerciseTile('PLANK', '00:40', Icons.timer),
                _buildExerciseTile('COBRA STRETCH', '00:30', Icons.self_improvement),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF4500),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WorkoutTimerScreen()),
                );
              },
              child: const Text(
                'START',
                style: TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseTile(String title, String duration, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFFF4500).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFFFF4500), size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
        subtitle: Text(
          duration,
          style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.menu, color: Colors.grey, size: 16),
      ),
    );
  }
}

class WorkoutTimerScreen extends StatelessWidget {
  const WorkoutTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.volume_up, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFFF4500), width: 3),
              ),
              child: const Icon(
                Icons.directions_run, 
                size: 90, 
                color: Color(0xFFFF4500),
              ),
            ),
            const Column(
              children: [
                Text(
                  'JUMPING JACKS',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.black, letterSpacing: 1.5),
                ),
                SizedBox(height: 8),
                Text(
                  'Ankhon ko samne rakhein aur koodien',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            const Text(
              '00:30',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.black, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 36,
                  icon: const Icon(Icons.skip_previous, color: Colors.grey),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: const Color(0xFFFF4500),
                  child: IconButton(
                    iconSize: 36,
                    icon: const Icon(Icons.pause, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: const Color(0xFF333333),
                  child: IconButton(
                    iconSize: 24,
                    icon: const Icon(Icons.done, color: Colors.green),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== NEW CODE: REPORT SCREEN ====================
class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'REPORT',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. TOP CARDS GRID (Workouts, Calories, Time Counter)
              Row(
                children: [
                  Expanded(child: _buildStatMiniCard('0', 'Workouts', Icons.fitness_center, Colors.orange)),
                  const SizedBox(width: 12),
                  Expanded(child: _buildStatMiniCard('0', 'Kcal', Icons.local_fire_department, Colors.red)),
                  const SizedBox(width: 12),
                  Expanded(child: _buildStatMiniCard('0', 'Minutes', Icons.timer, Colors.blue)),
                ],
              ),
              const SizedBox(height: 25),

              // 2. WEIGHT TRACKER CARD
              const Text(
                'WEIGHT TRACKER',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Current Weight', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        Teimport 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  // Step 8 Update: Saare core screens ab properly integrated hain
  final List<Widget> _screens = [
    const PlanScreen(),
    const ReportScreen(),
    const MeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'PLAN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            label: 'REPORT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'ME',
          ),
        ],
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LOSE WEIGHT FOR MEN',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'FULL BODY CHALLENGE',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF4500),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '30 DAYS',
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      '0% COMPLETED',
                      style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LinearProgressIndicator(
                        value: 0.0,
                        backgroundColor: Color(0xFF333333),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DaysGridScreen()),
                        );
                      },
                      child: const Text(
                        'START CHALLENGE',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'BODY FOCUS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 15),
              _buildWorkoutCard('ABS WORKOUT', 'Beginner • 15 Mins', Icons.accessibility_new, const Color(0xFFE65100)),
              _buildWorkoutCard('CHEST WORKOUT', 'Intermediate • 18 Mins', Icons.fitness_center, const Color(0xFFD84315)),
              _buildWorkoutCard('ARM WORKOUT', 'Beginner • 12 Mins', Icons.star_border, const Color(0xFF311B92)),
              _buildWorkoutCard('LEG WORKOUT', 'Advanced • 25 Mins', Icons.directions_run, const Color(0xFF1B5E20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String subtitle, IconData iconData, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: accentColor.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: accentColor, size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 15, color: Colors.white),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
        onTap: () {},
      ),
    );
  }
}

class DaysGridScreen extends StatelessWidget {
  const DaysGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '30 DAYS CHALLENGE',
          style: TextStyle(fontWeight: FontWeight.black, fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 30, 
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, 
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) { 
            int currentDay = index + 1;
            bool isRestDay = currentDay % 4 == 0; 

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseListScreen(dayTitle: 'DAY $currentDay'),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isRestDay ? const Color(0xFF333333) : const Color(0xFF1E1E1E),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isRestDay ? Colors.transparent : const Color(0xFFFF4500).withOpacity(0.4),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: isRestDay
                      ? const Icon(Icons.coffee, color: Colors.amber, size: 18) 
                      : Text(
                          '$currentDay',
                          style: const TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ExerciseListScreen extends StatelessWidget {
  final String dayTitle;
  const ExerciseListScreen({super.key, required this.dayTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF4500), Color(0xFF1E1E1E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: const EdgeInsets.only(left: 16, bottom: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dayTitle,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.black, color: Colors.white),
                    ),
                    const Text(
                      'Full Body Lose Weight • 20 Mins',
                      style: TextStyle(fontSize: 14, color: Colors.white70, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                _buildExerciseTile('JUMPING JACKS', '00:30', Icons.directions_run),
                _buildExerciseTile('INCLINE PUSH-UPS', 'x12', Icons.fitness_center),
                _buildExerciseTile('ABDOMINAL CRUNCHES', 'x16', Icons.accessibility_new),
                _buildExerciseTile('RUSSIAN TWIST', 'x20', Icons.sync),
                _buildExerciseTile('PLANK', '00:40', Icons.timer),
                _buildExerciseTile('COBRA STRETCH', '00:30', Icons.self_improvement),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF4500),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WorkoutTimerScreen()),
                );
              },
              child: const Text(
                'START',
                style: TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseTile(String title, String duration, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFFF4500).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFFFF4500), size: 24),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
        subtitle: Text(
          duration,
          style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.menu, color: Colors.grey, size: 16),
      ),
    );
  }
}

class WorkoutTimerScreen extends StatelessWidget {
  const WorkoutTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.volume_up, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFFF4500), width: 3),
              ),
              child: const Icon(
                Icons.directions_run, 
                size: 90, 
                color: Color(0xFFFF4500),
              ),
            ),
            const Column(
              children: [
                Text(
                  'JUMPING JACKS',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.black, letterSpacing: 1.5),
                ),
                SizedBox(height: 8),
                Text(
                  'Ankhon ko samne rakhein aur koodien',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            const Text(
              '00:30',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.black, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 36,
                  icon: const Icon(Icons.skip_previous, color: Colors.grey),
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: const Color(0xFFFF4500),
                  child: IconButton(
                    iconSize: 36,
                    icon: const Icon(Icons.pause, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: const Color(0xFF333333),
                  child: IconButton(
                    iconSize: 24,
                    icon: const Icon(Icons.done, color: Colors.green),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'REPORT',
          style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: _buildStatMiniCard('0', 'Workouts', Icons.fitness_center, Colors.orange)),
                  const SizedBox(width: 12),
                  Expanded(child: _buildStatMiniCard('0', 'Kcal', Icons.local_fire_department, Colors.red)),
                  const SizedBox(width: 12),
                  Expanded(child: _buildStatMiniCard('0', 'Minutes', Icons.timer, Colors.blue)),
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                'WEIGHT TRACKER',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Current Weight', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        Text('75.0 kg', style: TextStyle(color: Color(0xFFFF4500), fontWeight: FontWeight.black, fontSize: 16)),
                      ],
                    ),
                    const Divider(height: 24, color: Colors.grey),
                    Row(
                      mainAxisAlignimport 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoseWeightApp());
}

class LoseWeightApp extends StatelessWidget {
  const LoseWeightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lose Weight App for Men',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFFF4500), // Neon Orange
        scaffoldBackgroundColor: const Color(0xFF121212), // Deep Black
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E),
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF1E1E1E),
          selectedItemColor: Color(0xFFFF4500),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MainBottomNavigationContainer(),
    );
  }
}

class MainBottomNavigationContainer extends StatefulWidget {
  const MainBottomNavigationContainer({super.key});

  @override
  State<MainBottomNavigationContainer> createState() => _MainBottomNavigationContainerState();
}

class _MainBottomNavigationContainerState extends State<MainBottomNavigationContainer> {
  int _selectedIndex = 0;

  // Track completed days (Global State for app interaction)
  List<int> completedDays = [];
  int totalWorkouts = 0;
  int totalCalories = 0;
  int totalMinutes = 0;

  void toggleDayComplete(int dayNumber, int minutes, int calories) {
    setState(() {
      if (!completedDays.contains(dayNumber)) {
        completedDays.add(dayNumber);
        totalWorkouts += 1;
        totalMinutes += minutes;
        totalCalories += calories;
      }
    });
  }

  void resetAllProgress() {
    setState(() {
      completedDays.clear();
      totalWorkouts = 0;
      totalMinutes = 0;
      totalCalories = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Dynamic screen loading passing global stats
    final List<Widget> screens = [
      PlanScreen(completedDays: completedDays, onWorkoutComplete: toggleDayComplete),
      ReportScreen(workouts: totalWorkouts, calories: totalCalories, minutes: totalMinutes),
      MeScreen(onResetProgress: resetAllProgress, completedCount: completedDays.length),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'PLAN'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined), label: 'REPORT'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'ME'),
        ],
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  final List<int> completedDays;
  final Function(int, int, int) onWorkoutComplete;

  const PlanScreen({super.key, required this.completedDays, required this.onWorkoutComplete});

  @override
  Widget build(BuildContext context) {
    // Calculate dynamic completion percentage
    double progressPercent = completedDays.length / 30;
    int progressDisplay = (progressPercent * 100).round();

    return Scaffold(
      appBar: AppBar(
        title: const Text('LOSE WEIGHT FOR MEN', style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18)),
        actions: [IconButton(icon: const Icon(Icons.bolt, color: Color(0xFFFF4500)), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 30 Days Challenge Card with REAL STATE PROGRESS
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2C2C2C), Color(0xFF1A1A1A)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFFF4500).withOpacity(0.3), width: 1),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('FULL BODY CHALLENGE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.black, color: Colors.white)),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(color: const Color(0xFFFF4500), borderRadius: BorderRadius.circular(20)),
                          child: const Text('30 DAYS', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text('$progressDisplay% COMPLETED', style: const TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: progressPercent,
                        backgroundColor: const Color(0xFF333333),
                        valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFF4500)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4500),
                        minimumSize: const Size(double.infinity, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DaysGridScreen(completedDays: completedDays, onWorkoutComplete: onWorkoutComplete),
                          ),
                        );
                      },
                      child: const Text('START CHALLENGE', style: TextStyle(color: Colors.white, fontWeight: FontWeight.black, fontSize: 14)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text('BODY FOCUS', style: TextStyle(fontSize: 14, fontWeight: FontWeight.black, color: Colors.grey, letterSpacing: 1.0)),
              const SizedBox(height: 15),
              _buildWorkoutCard('ABS WORKOUT', 'Beginner • 15 Mins', Icons.accessibility_new, const Color(0xFFE65100)),
              _buildWorkoutCard('CHEST WORKOUT', 'Intermediate • 18 Mins', Icons.fitness_center, const Color(0xFFD84315)),
              _buildWorkoutCard('ARM WORKOUT', 'Beginner • 12 Mins', Icons.star_border, const Color(0xFF311B92)),
              _buildWorkoutCard('LEG WORKOUT', 'Advanced • 25 Mins', Icons.directions_run, const Color(0xFF1B5E20)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String subtitle, IconData iconData, Color accentColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: accentColor.withOpacity(0.15), shape: BoxShape.circle),
          child: Icon(iconData, color: accentColor, size: 24),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.black, fontSize: 15, color: Colors.white)),
        subtitle: Padding(padding: const EdgeInsets.only(top: 4.0), child: Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12))),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
      ),
    );
  }
}

class DaysGridScreen extends StatelessWidget {
  final List<int> completedDays;
  final Function(int, int, int) onWorkoutComplete;

  const DaysGridScreen({super.key, required this.completedDays, required this.onWorkoutComplete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('30 DAYS CHALLENGE', style: TextStyle(fontWeight: FontWeight.black, fontSize: 16)),
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 30, 
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 15),
          itemBuilder: (context, index) { 
            int currentDay = index + 1;
            bool isRestDay = currentDay % 4 == 0; 
            bool isCompleted = completedDays.contains(currentDay);

            return InkWell(
              onTap: () {
                if (isRestDay) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Aaj rest day hai buddy, sukoon karo!')));
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseListScreen(dayNumber: currentDay, onWorkoutComplete: onWorkoutComplete),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isCompleted ? Colors.green.withOpacity(0.2) : (isRestDay ? const Color(0xFF333333) : const Color(0xFF1E1E1E)),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isCompleted ? Colors.green : (isRestDay ? Colors.transparent : const Color(0xFFFF4500).withOpacity(0.4)),
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: isCompleted 
                      ? const Icon(Icons.check, color: Colors.green, size: 20)
                      : (isRestDay 
                          ? const Icon(Icons.coffee, color: Colors.amber, size: 18) 
                          : Text('$currentDay', style: const TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white))),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ExerciseListScreen extends StatelessWidget {
  final int dayNumber;
  final Function(int, int, int) onWorkoutComplete;

  const ExerciseListScreen({super.key, required this.dayNumber, required this.onWorkoutComplete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xFFFF4500), Color(0xFF1E1E1E)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            padding: const EdgeInsets.only(left: 16, bottom: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white), onPressed: () => Navigator.pop(context)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DAY $dayNumber', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.black, color: Colors.white)),
                    const Text('Full Body Lose Weight • 20 Mins', style: TextStyle(fontSize: 14, color: Colors.white70, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: [
                _buildExerciseTile('JUMPING JACKS', '00:30', Icons.directions_run),
                _buildExerciseTile('INCLINE PUSH-UPS', 'x12', Icons.fitness_center),
                _buildExerciseTile('ABDOMINAL CRUNCHES', 'x16', Icons.accessibility_new),
                _buildExerciseTile('PLANK', '00:30', Icons.timer),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF4500), minimumSize: const Size(double.infinity, 50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkoutTimerScreen(dayNumber: dayNumber, onWorkoutComplete: onWorkoutComplete),
                  ),
                );
              },
              child: const Text('START', style: TextStyle(fontWeight: FontWeight.black, fontSize: 16, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseTile(String title, String duration, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(color: const Color(0xFF1E1E1E), borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: const Color(0xFFFF4500).withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
          child: Icon(icon, color: const Color(0xFFFF4500), size: 24),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
        subtitle: Text(duration, style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// ==================== NEW REAL FUNCTIONAL STATEFUL TIMER ====================
class WorkoutTimerScreen extends StatefulWidget {
  final int dayNumber;
  final Function(int, int, int) onWorkoutComplete;

  const WorkoutTimerScreen({super.key, required this.dayNumber, required this.onWorkoutComplete});

  @override
  State<WorkoutTimerScreen> createState() => _WorkoutTimerScreenState();
}

class _WorkoutTimerScreenState extends State<WorkoutTimerScreen> {
  int _secondsRemaining = 30;
  Timer? _timer;
  bool _isRunning = true;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() => _secondsRemaining--);
      } else {
        _timer?.cancel();
        _autoCompleteWorkout();
      }
    });
  }

  void _togglePause() {
    if (_isRunning) {
      _timer?.cancel();
    } else {
      _startTimer();
    }
    setState(() => _isRunning = !_isRunning);
  }

  void _autoCompleteWorkout() {
    // Pass: Day number, 20 Minutes active, 120 Kcal burned simulated
    widget.onWorkoutComplete(widget.dayNumber, 20, 120);
    
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF1E1E1E),
          title: const Text('CONGRATULATIONS!', style: TextStyle(color: Color(0xFFFF4500), fontWeight: FontWeight.black)),
          content: Text('Aapne DAY ${widget.dayNumber} ka workout poora kar liya hai! +120 Kcal burned.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // dialog box band
                Navigator.of(context).pop(); // timer screen se wapis list par
                Navigator.of(context).pop(); // grid update view par reload
              },
              child: const Text('AWESOME', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            )
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: const Icon(Icons.close, color: Colors.white), onPressed: () => Navigator.pop(context)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 180, width: 180,
              decoration: BoxDecoration(color: const Color(0xFF1E1E1E), shape: BoxShape.circle, border: Border.all(color: const Color(0xFFFF4500), width: 3)),
              child: const Icon(Icons.directions_run, size: 90, color: Color(0xFFFF4500)),
            ),
            Text('JUMPING JACKS', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.black, letterSpacing: 1.5)),
            Text(
              '00:${_secondsRemaining.toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 64, fontWeight: FontWeight.black, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 50),
                CircleAvatar(
                  radius: 35, backgroundColor: const Color(0xFFFF4500),
                  child: IconButton(
                    iconSize: 36, icon: Icon(_isRunning ? Icons.pause : Icons.play_arrow, color: Colors.white),
                    onPressed: _togglePause,
                  ),
                ),
                const SizedBox(width: 20),
                CircleAvatar(
                  radius: 24, backgroundColor: const Color(0xFF333333),
                  child: IconButton(
                    iconSize: 24, icon: const Icon(Icons.done, color: Colors.green),
                    onPressed: _autoCompleteWorkout,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReportScreen extends StatelessWidget {
  final int workouts;
  final int calories;
  final int minutes;

  const ReportScreen({super.key, required this.workouts, required this.calories, required this.minutes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('REPORT', style: TextStyle(fontWeight: FontWeight.black, letterSpacing: 1.2, fontSize: 18))),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisA