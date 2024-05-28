import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoLessonPage extends StatefulWidget {
  const VideoLessonPage({Key? key}) : super(key: key);

  @override
  VideoLessonPageState createState() => VideoLessonPageState();
}

class VideoLessonPageState extends State<VideoLessonPage> {
  final FlickManager flickManager = FlickManager(
    videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
    ),
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 12 / 9,
                  child: FlickVideoPlayer(flickManager: flickManager)),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Тамгалар: алиф, ба, та, са, жим, ха'),
                        ContainerIconButtonWidget(icon: Icons.exit_to_app),
                        ContainerIconButtonWidget(icon: Icons.download),
                        ContainerIconButtonWidget(icon: Icons.share_outlined),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('Араб тили. 2 -сабак.',
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerIconButtonWidget extends StatelessWidget {
  const ContainerIconButtonWidget({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.green)),
        child: Icon(icon, size: 20, color: Colors.green),
      ),
    );
  }
}
