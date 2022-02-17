import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department-FAMT',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.blueAccent,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "HOD",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (value) => {
                if (value == 0)
                  vision(context)
                else if (value == 1)
                  HOD(context)
              },
            ),
          ),
          title: Text(
              "Welcome To IT Department of Finolex Academy of Management and Technology, Ratnagiri"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Container(
              child: Column(
                children: [
                  Image.network(
                    'https://lh5.googleusercontent.com/p/AF1QipPIP0dWdkTyu9TPZRPZFfv-5bTMH5jB91PCwG-M=w1080-k-no',
                    height: 350,
                    width: 800,
                  ),
                  Wrap(
                    spacing: 10,
                    children: [
                      RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'Programming Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => ProgrammingLab(context),
                        textColor: Colors.white,
                        color: Colors.blue,
                      ),
                      RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'DBMS Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => DBMS(context),
                        textColor: Colors.white,
                        color: Colors.brown,
                      ),
                      RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'Networks Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => NetworksLab(context),
                        textColor: Colors.white,
                        color: Colors.deepPurple,
                      ),
                      RaisedButton(
                        padding: const EdgeInsets.all(25),
                        child: Text(
                          'IoT Lab',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () => IoTLab(context),
                        textColor: Colors.white,
                        color: Colors.lime,
                      ),
                    ],
                  ),
                  Text(""),
                  RaisedButton(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () => contactUs(context),
                    textColor: Colors.white,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text(
              'Email ID: hodit@famt.ac.in \n \n Address: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void ProgrammingLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Programming Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/267507/pexels-photo-267507.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Mandar Joshi.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void DBMS(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To DBMS Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/3747486/pexels-photo-3747486.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Incharge: Prof. Swati Powar.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void NetworksLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Networks Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/10638065/pexels-photo-10638065.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Incharge: Prof. Atiya Kazi",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void IoTLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Internet of Things Lab'),
          content: Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/163125/board-printed-circuit-board-computer-electronics-163125.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                height: 350,
              ),
              // Text("Hello"),
              Text("Incharge: Prof. Dr. Vinayak Bharadi",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void vision(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision of Finolex Academy of Management and Technology'),
          content: Column(
            children: [
              Text(
                  "To provide excellent Information Technology  education and aspire to nurture students as leaders who are in tune with global IT Trends")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void HOD(BuildContext context) {
    print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'HoD’s Desk',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'https://famt.ac.in/wp-content/uploads/2017/01/DSC_1149-240x300.jpg',
              ),
              Text(
                  "Recent advancements in the areas of computers, software, networks, internet, communication technology, Big Data and cloud computing etc. has made huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. Emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics and Soft Computing. Currently the department’s infrastructure contains three classrooms, six laboratories, a staffroom, and a seminar hall. Ole classroom is ICT enabled with Wi-Fi projection facility. All floors of IT department have Wi-Fi connectivity.The computing facility in the department includes 155 computers with latest configuration, and other ICT equipment such as LCD projectors, printers and scanners. Recently in February 2017, the department’s HoD Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got a NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material, and hardware support for conduction of these courses as well as bridge courses. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry ready. Besides this It Department has done a tie-up with Microsoft for conducting Training and Certification for students as well as staff in the domain of IoT and Cyber Security, first session of this training was conducted in Sept 2017.Students undergo on-field projects so that they can be prepared to face professional challenges. Recently from January 2017 to Nov 2017, students of final year have successfully published Thirty Two (16) research papers at various national/international conferences/journals out of which Fifteen (15) papers are in UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations.The Department’s students body ‘Information Technology Student Association’ (ITSA) is actively involved in creating awareness about technological advancements amongst students. ITSA also coordinates and organizes various events like group discussions, online quizzes, workshops, seminars, and industrial visits that help students to keep themselves in tune of latest technological advancements. Besides this, ITSA also coordinates charity events such as blood donation, help to drought affected farmers etc.The Department provides complete support to students for training and placement. IBM, Wipro Spectramind, Tata AIG, HCL, Patni Computer Systems, ICICI Infotech, TCS, Finolex Industries Ltd., Magneto-IT solutions, CNC Ltd., Config Solutions, Xento, and Bitwise solutions are some of the IT companies who are regular recruiters of IT students.Teachers in IT department are very active in upgrading knowledge, In Odd Semester of AY 2017-2018 Eight Faculty members from IT Department have successfully completed Certified Training programs from NPTEL and Prof. Santosh Jadhav and Prof. Atiya Kazi has  achieved national level ranking as Top 1% and Top 5% respectively. Department will strive to provide best in class education and facilities for the stakeholders and contribute for nation building.\n Thank You,\n Dr. Vinayak Ashok Bharadi HoD –IT, Professor FAMT, Ratnagiri")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}
