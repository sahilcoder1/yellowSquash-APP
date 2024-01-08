import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoCarouselScreen extends StatefulWidget {
  const VideoCarouselScreen({super.key});

  @override
  _VideoCarouselScreenState createState() => _VideoCarouselScreenState();
}

class _VideoCarouselScreenState extends State<VideoCarouselScreen> {
  final List<String> videoUrls = [
    'https://www.youtube.com/watch?v=ntZSdi76oFM&t=10s',
    'https://www.youtube.com/watch?v=rtQIK9re2mc',
    'https://www.youtube.com/watch?v=PQlUcIIoGNQ',
    'https://www.youtube.com/watch?v=pJJKe0jcQzA',
    'https://www.youtube.com/watch?v=8VOMehE2rpY',
    // Add more video URLs as needed
  ];

  int _currentIndex = 0;
  final List<YoutubePlayerController> _controllers = [];

  void pauseVideo() {
    for (final controller in _controllers) {
      controller.pause();
    }
  }

  @override
  void initState() {
    super.initState();
    for (final url in videoUrls) {
      _controllers.add(
        YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(url)!,
          flags: const YoutubePlayerFlags(autoPlay: false),
        ),
      );
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: videoUrls.length,
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            return GestureDetector(
              onTap: pauseVideo,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 12,
                margin: const EdgeInsets.all(16),
                child: YoutubePlayer(
                
                  controller: _controllers[index],
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.red,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.red,
                    handleColor: Colors.redAccent,
                  ),
                  onReady: () {
                    _controllers[index].pause();
                  },
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 180,
            initialPage: _currentIndex,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
              pauseVideo();
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: videoUrls.map((url) {
            final index = videoUrls.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 4,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.yellow : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
