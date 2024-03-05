import 'package:flutter/material.dart';

class GetTipWidget extends StatelessWidget {
  const GetTipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F7),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFE4E7EC),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/img_news_app/img_doctor.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
            child: Column(
              children: [
                const Text(
                  'Connect with doctors &\nget suggestions',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    'Connect now and get\nexpert insights',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 58, top: 8),
                  child: ButtonTheme(
                    height: 36,
                    minWidth: 104,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7F56D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      child: const Text(
                        'View detail',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
