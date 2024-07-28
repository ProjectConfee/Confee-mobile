import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Event Schedule",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "7.00 AM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),


                      Card.filled(child: _SampleCard(time: '7.30 AM',eventName: 'Registration',icon:Icons.check_circle)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "8.00 AM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      Card.filled(child: _SampleCard(time: '8.00 AM',eventName: 'Inauguration and Introduction of ICTer 2023',icon:Icons.check_circle)),
                      Card.filled(child: _SampleCard(time: '8.30 AM',eventName: 'Welcome address by the Conference Chair',icon:Icons.check_circle)),
                      Card.filled(child: _SampleCard(time: '8.35 AM',eventName: 'Address by the UCSC Director',icon:Icons.event_repeat)),
                      Card.filled(child: _SampleCard(time: '8.40 AM',eventName: 'Address by the Vice Chancellor',icon:Icons.pending)),
                      Card.filled(child: _SampleCard(time: '8.50 AM',eventName: 'Address by the Chief Guest',icon:Icons.pending)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "9.00 AM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      Card.filled(child: _SampleCardWithProfile(time: '8.30 AM',eventName: 'Keynote ',name:"Dr.Ruwan Weerasinghe",icon:Icons.pending,uniName: "University of Colombo",img: 'asset/images/speaker_1.jpg',topic: "When Machine Go Rogue",)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "10.00 AM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      Card.filled(child: _SampleCard(time: '10.00 AM',eventName: 'Tea Breakfast',icon:Icons.pending)),
                      Card.filled(child: _SampleCardWithSponsor(time: '10.30 AM',eventName: 'Tech Talk - Cambio',name:"Zero Downtime Upgrades",icon:Icons.pending)),
                      Card.filled(child: _SampleCard(time: '10.50 AM',eventName: 'Paper Presentations (Session 01)',icon:Icons.pending)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "11.00 AM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      Card.filled(child: _SampleCardWithSponsor(time: '11.50 AM',eventName: 'Tech Talk: Altria Consulting',name:"Zero Downtime Upgrades",icon:Icons.pending)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "12.00 PM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Card.filled(child: _SampleCardWithProfile(time: '12.00 PM',eventName: 'Keynote ',name:"Prof. Timothy Baldwin",icon:Icons.pending,uniName: "Mohamed bin Zayed",img: 'asset/images/speaker_3.jpg',topic: "LibreOffice Technology",)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "1.00 PM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      Card.filled(child: _SampleCard(time: '1.10 PM',eventName: 'Lunch Break',icon:Icons.pending)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "2.00 PM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      Card.filled(child: _SampleCardWithSponsor(time: '2.10 PM',eventName: 'Tech Talk: Softlogic (Pvt) Ltd',name:"Zero Downtime Upgrades",icon:Icons.pending)),
                      Card.filled(child: _SampleCard(time: '2.30 PM',eventName: 'Paper Presentations (Session 02)',icon:Icons.pending)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "3.00 PM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      Card.filled(child: _SampleCardWithProfile(time: '3.35 PM',eventName: 'Keynote ',name:"Italo Vignoli",icon:Icons.pending,uniName: "Associazione Librelalia",img: 'asset/images/speaker_2.jpg',topic: "LibreOffice Technology",)),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Divider(),

                      ),

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            "4.00 PM",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Card.filled(child: _SampleCard(time: '4.35 PM',eventName: 'Tea Break & Reception',icon:Icons.pending)),


                    ],
                  ),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.time, required this.eventName,required  this.icon});
  final String time;
  final String eventName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Color iconColor;
    if (icon == Icons.pending) {
      iconColor = Colors.blue;
    } else if (icon == Icons.event_repeat) {
      iconColor = Colors.yellow[800] as Color;
    } else {
      iconColor = Colors.green;
    }

    return SizedBox(
      width: 450,
      height: 110,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 8),
                      Text(
                        time,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Text(
                    eventName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, color: iconColor,),
          ),
        ],
      ),
    );
  }
}


class _SampleCardWithProfile extends StatelessWidget {
  const _SampleCardWithProfile(
      {required this.time, required this.eventName,required this.name, required this.icon,required this.uniName,required this.img,required this.topic});
  final String time;
  final String eventName;
  final IconData icon;
  final String name;
  final String uniName;
  final String img;
  final String topic;

  @override
  Widget build(BuildContext context) {
    Color iconColor;
    if (icon == Icons.pending) {
      iconColor = Colors.blue;
    } else if (icon == Icons.event_repeat) {
      iconColor = Colors.yellow[800] as Color;
    } else {
      iconColor = Colors.green;
    }

    return SizedBox(
      width: 450,

      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 8),
                      Text(
                        time,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(img), // Provide your image path
                        radius: 24, // Adjust the size as needed
                      ),
                      const SizedBox(width: 8),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventName,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            uniName,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),

                          Text(
                            topic,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 28),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle Accept action
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.blue[800],
                                ),
                                child: const Text('Chat'),
                              ),
                              const SizedBox(width: 8),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle Decline action
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.blue[800],
                                ),
                                child: const Text('Feedback'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _SampleCardWithSponsor extends StatelessWidget {
  const _SampleCardWithSponsor(
      {required this.time, required this.eventName,required this.name, required this.icon});
  final String time;
  final String eventName;
  final IconData icon;
  final String name;


  @override
  Widget build(BuildContext context) {
    Color iconColor;
    if (icon == Icons.pending) {
      iconColor = Colors.blue;
    } else if (icon == Icons.event_repeat) {
      iconColor = Colors.yellow[800] as Color;
    } else {
      iconColor = Colors.green;
    }

    return SizedBox(
      width: 450,
      height: 100,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(width: 8),
                      Text(
                        time,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventName,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[800],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}

