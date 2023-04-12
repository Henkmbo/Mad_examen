import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  final bool isSelected;
  final Color selectedColor;
  final Color normalColor;

  const Favourite({
    super.key,
    required this.isSelected,
    required this.selectedColor,
    required this.normalColor,
  });

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  bool _isSelected = false;
  @override
  void initState() {
    _isSelected = widget.isSelected;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        icon: Icon(
          Icons.favorite,
          size: 24,
          color: _isSelected ? widget.selectedColor : widget.normalColor,
        ),
      ),
    );
  }
}
