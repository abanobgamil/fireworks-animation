import 'package:flutter/material.dart';
import 'particle.dart';

class ParticlePainter extends CustomPainter {
  final List<Particle> particles;

  ParticlePainter({required this.particles});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    for (final particle in particles) {
      paint.color = particle.color.withValues(alpha: particle.lifetime);
      canvas.drawCircle(particle.position, particle.size, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
