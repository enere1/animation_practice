import 'package:animation_practice_udemy/explicit_animation/animated_builder_exmaple.dart';
import 'package:animation_practice_udemy/explicit_animation/default_text_style_example.dart';
import 'package:animation_practice_udemy/explicit_animation/fade_animation_example.dart';
import 'package:animation_practice_udemy/explicit_animation/indexed_transition_stack_example.dart';
import 'package:animation_practice_udemy/explicit_animation/position_direct_example.dart';
import 'package:animation_practice_udemy/explicit_animation/positioned_transition_example.dart';
import 'package:animation_practice_udemy/explicit_animation/rotation_transition_example.dart';
import 'package:animation_practice_udemy/explicit_animation/size_transition_example.dart';
import 'package:animation_practice_udemy/explicit_animation/tween_animated_example.dart';
import 'package:animation_practice_udemy/implicit_animation//animated_container_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_cross_fade_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_list_state_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_opacity_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_padding_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_physical_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_positioned_direct_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_positioned_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_switcher_example.dart';
import 'package:animation_practice_udemy/implicit_animation/animated_text_example.dart';
import 'package:animation_practice_udemy/more_animation/customer_painter_example.dart';
import 'package:animation_practice_udemy/more_animation/lottie_slider_example.dart';
import 'package:animation_practice_udemy/more_animation/riv_example.dart';
import 'package:animation_practice_udemy/page_animation/page_mix_fade_size_transition.dart';
import 'package:animation_practice_udemy/page_animation/page_scale_transition.dart';
import 'package:animation_practice_udemy/page_animation/page_two.dart';
import 'package:flutter/material.dart';

import 'implicit_animation/animated_align_example.dart';
import 'page_animation/page_fade_transition.dart';
import 'page_animation/page_mix_rotate_size_transition.dart';
import 'page_animation/page_rotation_transition.dart';
import 'page_animation/page_size_transition.dart';
import 'page_animation/page_slide_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Course',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Animation Course"),
        ),
        body: Center(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                                  context) => const AnimatedAlignExample()));
                    },
                    child: const Text("AnimatedAlignExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedContainerExample()));
                    },
                    child: const Text("AnimatedContainerExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                                  context) => const AnimatedTextExample()));
                    },
                    child: const Text("AnimatedTextExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedOpacityExample()));
                    },
                    child: const Text("AnimatedOpacityExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedPaddingExample()));
                    },
                    child: const Text("AnimatedPaddingExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedPhysicalExample()));
                    },
                    child: const Text("AnimatedPhysicalExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedPositionedExample()));
                    },
                    child: const Text("AnimatedPositionedExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedPositionedDirectExample()));
                    },
                    child: const Text("AnimatedPositionedDirectExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedCrossFadeExample()));
                    },
                    child: const Text("AnimatedCrossFadeExample")),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (
                                context) => const AnimatedSwitcherExample()));
                  },
                  child: const Text("AnimatedSwitcherExample"),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedListStateExample()));
                    },
                    child: const Text("AnimatedListStateExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const PositionedTransitionExample()));
                    },
                    child: const Text("PositionedTransitionExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                                  context) => const SizeTransitionExample()));
                    },
                    child: const Text("SizeTransitionExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const RotationTransitionExample()));
                    },
                    child: const Text("RotationTransitionExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const AnimatedBuilderExmaple()));
                    },
                    child: const Text("AnimatedBuilderExmaple")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                                  context) => const FadeAnimationExample()));
                    },
                    child: const Text("FadeAnimationExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                                  context) => const PositionDirectExample()));
                    },
                    child: const Text("PositionDirectExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                                  context) => const TweenAnimatedExample()));
                    },
                    child: const Text("TweenAnimatedExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const DefaultTextStyleExample()));
                    },
                    child: const Text("DefaultTextStyleExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const IndexedTransitionStackExample()));
                    },
                    child: const Text("IndexedTransitionStackExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(PageFadeTransition(
                          const PageTwo()
                      ));
                    },
                    child: const Text("PageFadeTransition")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(PageScaleTransition(
                          const PageTwo()
                      ));
                    },
                    child: const Text("PageScaleTransition")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(PageRotationTransition(
                          const PageTwo()
                      ));
                    },
                    child: const Text("PageRotationTransition")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(PageSlideTransition(
                          const PageTwo()
                      ));
                    },
                    child: const Text("PageSlideTransition")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(PageSizeTransition(
                          const PageTwo()
                      ));
                    },
                    child: const Text("PageSizeTransition")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(PageMixFadeSizeTransition(
                          const PageTwo()
                      ));
                    },
                    child: const Text("PageMixFadeSizeTransition")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(PageMixRotateSizeTransition(
                          const PageTwo()
                      ));
                    },
                    child: const Text("PageMixRotateSizeTransition")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_){
                        return CustomerPainterExample();
                      }));
                    },
                    child: const Text("CustomerPainterExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_){
                        return LottieSliderExample();
                      }));
                    },
                    child: const Text("LottieSliderExample")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_){
                        return RivExample();
                      }));
                    },
                    child: const Text("RivExample"))
              ],
            )));
  }
}
