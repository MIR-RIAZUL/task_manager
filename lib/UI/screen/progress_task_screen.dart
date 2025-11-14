import 'package:flutter/material.dart';

import '../widgets/taskCountByStatusCard.dart';

class progressTaskScreen extends StatefulWidget {
  const progressTaskScreen({super.key});

  @override
  State<progressTaskScreen> createState() => _progressTaskScreenState();
}

class _progressTaskScreenState extends State<progressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            SizedBox(
              height: 90,
              child: ListView.separated(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TaskCountByStatusCard(title: 'new', count: 2);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 4);
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,

                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),

                    title: Text('Titile will be here '),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('description of the task'),
                        Text(
                          'date- 12.12.12',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Chip(
                              label: Text('New'),
                              backgroundColor: Colors.green,
                              labelStyle: TextStyle(color: Colors.white),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 8);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
