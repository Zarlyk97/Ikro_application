import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Видео сабактар'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Видео ойноткуч
            Container(
              height: 250,
              color: Colors.black,
              child: const Center(
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 100,
                ),
              ),
            ),
            // Видео контролдор
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Тамгалар: алиф, ба, та, са, жим, ха',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Араб тили. 2-сабак.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.file_download),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Төшөктөгү сүрөттөмө жана видео сабактар бөлүмү
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Сүрөттөмө'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Видео сабактар',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            // Видео сабактар тизмеси
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                VideoListItem(
                    title: 'Тамгалар: алиф, ба, та,са, жим, ха',
                    subtitle: 'Араб тили. 1 - сабак'),
                VideoListItem(
                    title: 'Тамгалар: алиф, ба, та,са, жим, ха',
                    subtitle: 'Араб тили. 2 - сабак'),
                VideoListItem(
                    title: 'Тамгалар: алиф, ба, та,са, жим, ха',
                    subtitle: 'Араб тили. 3 - сабак'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class VideoListItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const VideoListItem({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(Icons.play_arrow, color: Colors.white),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.check_circle, color: Colors.green),
    );
  }
}
