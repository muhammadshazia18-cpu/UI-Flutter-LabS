
import 'package:flutter/material.dart';

void main() {
  runApp(const StudentDashboardApp());
}

class StudentDashboardApp extends StatelessWidget {
  const StudentDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Student Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return const MobileDashboard();
    } else if (width < 1024) {
      return const TabletDashboard();
    } else {
      return const DesktopDashboard();
    }
  }
}

//================ MOBILE =================

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FF),
      appBar: AppBar(
        title: const Text("Student Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [
          DashboardCard("Profile", Icons.person),
          DashboardCard("Attendance", Icons.check_circle),
          DashboardCard("Marks", Icons.school),
          DashboardCard("Assignments", Icons.assignment),
          DashboardCard("Fees", Icons.payment),
          DashboardCard("Time Table", Icons.calendar_today),
        ],
      ),
    );
  }
}

//================ TABLET =================

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FF),
     appBar: AppBar(
  centerTitle: true,
  backgroundColor: Colors.indigo,
  title: const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        "25WH5A0509",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Text(
        "Student Dashboard",
        style: TextStyle(fontSize: 14),
      ),
    ],
  ),
),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: const [
          DashboardCard("Profile", Icons.person),
          DashboardCard("Attendance", Icons.check_circle),
          DashboardCard("Marks", Icons.school),
          DashboardCard("Assignments", Icons.assignment),
          DashboardCard("Fees", Icons.payment),
          DashboardCard("Time Table", Icons.calendar_today),
        ],
      ),
    );
  }
}

//================ DESKTOP =================

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FF),
      appBar: AppBar(
        title: const Text("Student Dashboard - Desktop"),
        backgroundColor: Colors.indigo,
      ),
      body: Row(
        children: [
          Container(
            width: 220,
            color: const Color(0xFFD6E4FF),
            child: ListView(
              children: const [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.school,
                        size: 40,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle),
                  title: Text("Attendance"),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text("Marks"),
                ),
                ListTile(
                  leading: Icon(Icons.assignment),
                  title: Text("Assignments"),
                ),
                ListTile(
                  leading: Icon(Icons.payment),
                  title: Text("Fees"),
                ),
                ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text("Time Table"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: const [
                  DashboardCard("Profile", Icons.person),
                  DashboardCard("Attendance", Icons.check_circle),
                  DashboardCard("Marks", Icons.school),
                  DashboardCard("Assignments", Icons.assignment),
                  DashboardCard("Fees", Icons.payment),
                  DashboardCard("Time Table", Icons.calendar_today),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//================ DASHBOARD CARD =================

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const DashboardCard(this.title, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () {},
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.indigo.shade100,
                child: Icon(
                  icon,
                  size: 40,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}