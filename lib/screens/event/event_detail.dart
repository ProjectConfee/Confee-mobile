import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
          SingleChildScrollView(
            child: Stack(
              children: [
                // Image placed in the background
                Container(
                  height: 200, // Adjust the height as needed
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/pre2.jpeg'), // Replace with your image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Event Detail",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 105, 16, 0),
                      child: SizedBox(
                        width: 600,  // Set the desired width
                        height: 60, // Set the desired height
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0), // Set the desired radius
                          ),
                          child: const Center(
                            child: Text("Pre Conference Workshop",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "Join us for an in-depth exploration of LibreOffice and its technology. This workshop is designed for individuals and organizations looking to migrate to LibreOffice or simply learn more about this powerful open-source office suite.",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Day 1",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.blue[800],
                                size: 24,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Date:  7th of November 2024",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Colors.blue[800],
                                size: 24,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Time:  8.30 AM to 5.00 PM",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Day 2",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.blue[800],
                                size: 24,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Date:  8th of November 2024",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Colors.blue[800],
                                size: 24,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Time:  8.30 AM to 5.00 PM",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[800],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 24,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  "Venue: University of Colombo School of Computing",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis, // Adds ellipsis if text overflows
                                  maxLines: 2, // Limit to one line
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),
                          const Row(
                            children: [
                              Icon(
                                Icons.credit_card,
                                size: 24,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Investment :Rs.8500.00 per day",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('asset/images/event_post.jpg',),
                          ),
                        ],
                      )
                    ),
                    // Additional content goes here
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
