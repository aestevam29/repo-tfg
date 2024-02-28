import 'package:flutter/material.dart';
import 'package:tfg_v1/UI/Utilities/app_colors.dart';
import 'package:tfg_v1/UI/Views/home_page.dart';
import 'package:tfg_v1/UI/Views/objectives_page.dart';
import 'package:tfg_v1/UI/Views/subjects_page.dart';
import 'package:tfg_v1/UI/Widgets/bottom_navigation_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String _selectedFolder = 'Inbox'; // Default selected folder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: AppColors.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildFolders(),
          Expanded(
            child: _buildEventsList(),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNav(
        onTabTapped: (index) {
          switch(index){
            case 0:
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ObjectivesPage()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage()));
              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SubjectPage()));
              break;
            default:
              break; 
          }
        },
      ),
    );
  }

  Widget _buildFolders() {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildFolderItem('Inbox', Icons.mail),
          _buildFolderItem('Archived', Icons.archive),
          _buildFolderItem('All', Icons.folder),
        ],
      ),
    );
  }

  Widget _buildFolderItem(String folderName, IconData icon) {
    bool isSelected = _selectedFolder == folderName;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedFolder = folderName;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.all(8),
        color: isSelected ? AppColors.primary : AppColors.background,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? Colors.white : AppColors.text),
            const SizedBox(width: 8),
            Text(
              folderName,
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.text,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventsList() {
    // Implement logic to display events based on the selected folder
    // You can use ListView or other widgets to display events
    // Sample implementation:
    List<Event> events = [];

    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(events[index].icon),
          title: Text(events[index].name),
          subtitle: Text('Category: $_selectedFolder'),
        );
      },
    );
  }
}


