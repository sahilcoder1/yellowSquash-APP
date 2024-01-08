import 'package:flutter/material.dart';

class TestimonialWidget extends StatefulWidget {
  const TestimonialWidget({required this.testimonials, super.key});
  final List<Testimonial> testimonials;

  @override
  // ignore: library_private_types_in_public_api
  _TestimonialWidgetState createState() => _TestimonialWidgetState();
}

class _TestimonialWidgetState extends State<TestimonialWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200, // adjust height as per your design
          child: PageView.builder(
            itemCount: widget.testimonials.length,
            itemBuilder: (BuildContext context, int index) {
              return TestimonialItem(testimonial: widget.testimonials[index]);
            },
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 10), // add some spacing
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    final indicators = <Widget>[];

    for (var i = 0; i < widget.testimonials.length; i++) {
      indicators.add(
        i == _currentIndex
            ? _buildPageIndicatorItem(true)
            : _buildPageIndicatorItem(false),
      );
    }

    return indicators;
  }

  Widget _buildPageIndicatorItem(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: isActive ? 10 : 6, // adjust size as per your design
      width: isActive ? 10 : 6, // adjust size as per your design
      decoration: BoxDecoration(
        color: isActive ? Colors.yellowAccent : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

class Testimonial {
  Testimonial({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
  final String name;
  final String description;
  final String imageUrl;
}

class TestimonialItem extends StatelessWidget {
  const TestimonialItem({required this.testimonial, super.key});
  final Testimonial testimonial;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50, // adjust size as per your design
              backgroundImage: NetworkImage(testimonial.imageUrl),
            ),
            const SizedBox(height: 10), // add some spacing
            Text(
              testimonial.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5), // add some spacing
            Text(
              testimonial.description,
              textAlign: TextAlign.center,
            ),
            // CustomButton(
            //   onPressed: () {},
            //   buttonText: 'Play',
            //   width: 200,
            // ),
          ],
        ),
      ),
    );
  }
}
