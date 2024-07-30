import 'package:flutter/material.dart';

class Resource extends StatelessWidget {
  const Resource({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Resources",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), // Add space between text and card
                Card.filled(
                  child: _SampleCard(
                    name: 'Introduction to LibreOffice',
                    description: 'This PDF provides a comprehensive introduction to LibreOffice, covering fundamental concepts, common algorithms, and practical applications. ',
                    icon: Icons.picture_as_pdf,
                    icon2:Icons.file_download
                  ),
                ),

                Card.filled(
                  child: _SampleCardWithImg(
                    name: 'LibreOffice Product',
                    description: 'It is available for a variety of computing platforms, with official support for Microsoft Windows, macOS and Linux[13] and community builds for many other platforms. ',
                    icon: Icons.image,
                    imageUrl: "asset/images/libreoffice.jpg",
                  ),
                ),

                Card.filled(
                  child: _SampleCard(
                      name: 'LibreOffice New Features',
                      description: 'A look at some of the new features in LibreOffice 24.2, created by our community of volunteers and certified developers.',
                      icon: Icons.smart_display,
                      icon2:Icons.play_arrow
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
  const _SampleCard({required this.description, required this.name, required this.icon,required this.icon2});
  final String description;
  final String name;
  final IconData icon;
  final IconData icon2;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,

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
                      Icon(icon, color: Colors.blue[800],size: 48,),
                      const SizedBox(width: 8),
                      Text(
                        name,
                        style: TextStyle(fontSize: 16,
                          color: Colors.blue[800],
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ),
                const SizedBox(height: 8,)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(icon2, size: 32,),
          ),
        ],
      ),
    );
  }
}

class _SampleCardWithImg extends StatelessWidget {
  const _SampleCardWithImg({
    required this.description,
    required this.name,
    required this.icon,
    required this.imageUrl,
  });

  final String description;
  final String name;
  final IconData icon;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        icon,
                        color: Colors.blue[800],
                        size: 48,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue[800],
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.file_download,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
