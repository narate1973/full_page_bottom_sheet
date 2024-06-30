
import 'package:flutter/material.dart';

Future<T?> showFullPageBottomSheet<T>(
  BuildContext context, {
  required Widget Function(BuildContext, ScrollController) builder,
}) async {
  return showModalBottomSheet<T?>(
    useSafeArea: true,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    useRootNavigator: false,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
    ),
    builder: (context) {
      return DraggableScrollableSheet(
        snap: true,
        snapSizes: const [1],
        initialChildSize: 0.7,
        minChildSize: 0.699,
        expand: false,
        builder: builder,
      );
    },
  );
}
