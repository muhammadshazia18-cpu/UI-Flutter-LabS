import 'package:flutter/material.dart';

void main(){
  runApp(StudentApp());
}
class StudentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentDashboard(),
    );
  }
}

class StudentDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;

    String deviceType = "";
    int columns = 1;

    if (screenWidth < 600) {
      deviceType = "Mobile";
      columns = 1;
    } else if (screenWidth >= 600 && screenWidth < 900) {
      deviceType = "Tablet";
      columns = 2;
    } else {
      deviceType = "Desktop";
      columns = 3;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery Example"),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Screen Width : ${screenWidth.toStringAsFixed(0)} px",
              style: TextStyle(fontSize: 18),
            ),

            Text(
              "Screen Height : ${screenHeight.toStringAsFixed(0)} px",
              style: TextStyle(fontSize: 18),
            ),

            Text(
              "Orientation : ${orientation == Orientation.portrait ? "Portrait" : "Landscape"}",
              style: TextStyle(fontSize: 18),
            ),

            Text(
              "Device Type : $deviceType",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: columns,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

                children: [

                  Card(
                    color: Colors.lightBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                            size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          "Student Details",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Card(
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.book_outlined,
                            size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          "Attendance",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Card(
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.school,
                            size: 50, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          "Marks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



