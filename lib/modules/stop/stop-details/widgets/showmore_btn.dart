import 'package:flutter/material.dart';

import '../../../../global/themes/colors/colors.dart';

class ShowmoreBtn extends StatelessWidget {
const ShowmoreBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 50,
              width: 165,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.FakeBlack)),
              child: Center(
                child: Text(
                  'Mostra di più',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.FakeBlack,
                  ),
                ),
              ),
            );
  }
}