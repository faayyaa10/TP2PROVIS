import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital App',
      debugShowCheckedModeBanner: false, // Menonaktifkan banner debug
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Warna latar belakang biru
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text(
          'NOTIFIKASI',
          style: TextStyle(color: Colors.white), // Warna teks putih
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Februari 2024',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          NotificationItem(
            title: 'Berhasil Check In',
            dateTime: '22 Februari 2024, 07:00 WIB',
            message: 'Yth Ratu Syahirah Khairunnisa, Anda berhasil check in. Silakan pergi ke Nurse station.',
          ),
          NotificationItem(
            title: 'Reminder Appointment',
            dateTime: '21 Februari 2024, 20:00 WIB',
            message: 'Yth Ratu Syahirah Khairunnisa, Diingatkan untuk jadwal appointment anda dengan Dr.Katarina Evelyn (Umum) untuk tanggal 22 Februari 2024 pada pukul 08.00',
          ),
          NotificationItem(
            title: 'Appointment Berhasil',
            dateTime: '20 Februari 2024, 15:35 WIB',
            message: 'Yth Ratu Syahirah Khairunnisa, Appointment anda dengan Dr.Katarina Evelyn (Umum) untuk tanggal 22 Februari 2024 pada pukul 08.00 sudah tercatat',
          ),
          // Add more notification items here
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue, // Warna biru untuk item yang dipilih
        unselectedItemColor: Colors.black, // Warna hitam untuk item yang tidak dipilih
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Janji Temu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Rekam Medis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String dateTime;
  final String message;

  const NotificationItem({
    Key? key,
    required this.title,
    required this.dateTime,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 8,
                ),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              dateTime,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(
              message,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
