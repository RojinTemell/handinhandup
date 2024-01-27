import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                //colorfilter resmin  biraz koyu tonlu olmasını sağlar
                colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.darken),
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/11/08/05/20/sunset-1807524_1280.jpg'))),
        
      ),
    );
  }
}
