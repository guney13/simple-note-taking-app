

import 'package:flutter/material.dart';


class NoteSettings extends StatelessWidget {
  final void Function()? onEditTap;
  final void Function()? onDeleteTap;

  const NoteSettings({
    super.key,
    required this.onEditTap,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        // edit option
        GestureDetector(
          onTap: () {
            // // Capture the popover's route before opening the dialog
            // final popoverRoute = ModalRoute.of(context);
            // // Remove the popover route after a brief delay
            // Future.delayed(Duration(milliseconds: 100), () {
            //   if (popoverRoute != null) {
            //     Navigator.of(context).removeRoute(popoverRoute);
            //   }
            // });
            Navigator.of(context).pop();
            onEditTap!();
          },
          child: Container(
            color: Theme.of(context).colorScheme.primary,
            height: 50,
            child: Center(
              child: Text(
                "Edit",
                style: TextStyle(
                  fontWeight: .bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),


        // delete option
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            onDeleteTap!();
          },
          child: Container(
            height: 50,
            color: Theme.of(context).colorScheme.primary,
            child: Center(
              child: Text(
                "Delete",
                style: TextStyle(
                  fontWeight: .bold,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}


/*

Row(
            mainAxisSize: .min,
            mainAxisAlignment: .end,
            children: [
              // edit button
              IconButton(
                onPressed: onEditPressed,
                icon: Icon(
                  Icons.edit,
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
                    
              // delete button
              IconButton(
                onPressed: onDeletePressed,
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
            ],
          ),

 */