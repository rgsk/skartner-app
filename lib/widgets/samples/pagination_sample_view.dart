import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/widgets/common/debug_with_border_view.dart';
import 'package:skartner_app/widgets/common/pagination_controls_view.dart';

class PaginationSampleView extends HookWidget {
  const PaginationSampleView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPage = useState(1);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            DebugWithBorderView(
              child: PaginationControlsView(
                currentPage: currentPage.value,
                setCurrentPage: (newPage) {
                  // print('Navigated to page $newPage');
                  currentPage.value = newPage;
                },
                total: 100,
                numberOfItemsFetchedOnCurrentPage: 10,
                perPage: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
