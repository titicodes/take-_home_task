import 'package:flutter/material.dart';

class DummySearchWidget2 extends StatelessWidget {
  final VoidCallback onTap;
  const DummySearchWidget2({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          padding: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: const Icon(Icons.search)),
              Text(
                'Find a product...',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5), fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
