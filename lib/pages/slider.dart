// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class SliderP extends StatefulWidget {
//   const SliderP({super.key});

//   @override
//   State<SliderP> createState() => _SliderPState();
// }

// class _SliderPState extends State<SliderP> {

//   int activeIndex = 0;

//   final urlImages = [
//     'https://th.bing.com/th?id=OIP.qDvAlhidTBzXiGyDfq_O0gHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
//     'https://th.bing.com/th?id=OIP.qDvAlhidTBzXiGyDfq_O0gHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
//     'https://th.bing.com/th?id=OIP.qDvAlhidTBzXiGyDfq_O0gHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
//     'https://th.bing.com/th?id=OIP.qDvAlhidTBzXiGyDfq_O0gHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
//     'https://th.bing.com/th?id=OIP.qDvAlhidTBzXiGyDfq_O0gHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
//     'https://th.bing.com/th?id=OIP.qDvAlhidTBzXiGyDfq_O0gHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CarouselSlider.builder(
//               itemCount: urlImages.length,
//               itemBuilder: (context, index, realIndex){
//                 final urlImage = urlImages[index];
//                 return buildImage(urlImage, index);
//               },
//               options: CarouselOptions(height: 400,
//               onPageChanged: (index, reason) =>
//               setState(() => activeIndex = index)
//               ),
//             ),

//               const SizedBox(height: 12,),
//               buildIndicator()

//           ],
//         ),
//       ),
//     );
//   }
//   Widget buildIndicator() => AnimatedSmoothIndicator(
//       effect: ExpandingDotsEffect(dotWidth: 15,
//       activeDotColor: Colors.blue),
//       activeIndex: activeIndex,
//       count: urlImages.length,);

// Widget buildImage(String urlImage, int index) =>
// Container(
//   margin: EdgeInsets.symmetric(horizontal: 5),
//   child: Image.network(urlImage, fit: BoxFit.cover,),
// );

// }

import 'package:bluetooth_terminal/widget/logo_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderP extends StatefulWidget {
  const SliderP({super.key});

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slider'),
      ),
      body: content(),
    );
  }

  Widget content() {
    return CarouselSlider(
        items: [
          logoWidget('assets/images/wlogo.jpeg'),
          2,
          3,
          4,
          5,
        ].map((i) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "text $i",
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 300,
        ));
  }
}
