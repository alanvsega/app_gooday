import 'package:flutter/material.dart';

import 'color_style.dart';

class IntroPage extends StatelessWidget {
  const IntroPage(
      {super.key,
      required Image image,
      required TabPageSelector tabPageSelector,
      required String title,
      required String description,
      required Function onButtonPressed})
      : _image = image,
        _tabPageSelector = tabPageSelector,
        _title = title,
        _description = description,
        _onButtonPressed = onButtonPressed;

  final Image _image;
  final TabPageSelector _tabPageSelector;
  final String _title;
  final String _description;
  final Function _onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 -
                AppBar().preferredSize.height,
            width: MediaQuery.of(context).size.width,
            child: _image,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: ColorStyle.backgroundPage,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: _tabPageSelector,
                ),
                Text(
                  _title,
                  style: const TextStyle(
                    color: ColorStyle.primary,
                    fontSize: 32,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    _description,
                    style: const TextStyle(
                      color: ColorStyle.textNeutrals,
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed(),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: ColorStyle.primary,
                    foregroundColor: Colors.white,
                  ),
                  child: const Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
