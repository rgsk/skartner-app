import 'package:flutter/material.dart';

const tripleDots = 1000;

class PaginationControlsView extends StatelessWidget {
  final int currentPage;
  final ValueChanged<int> setCurrentPage;
  final int total;
  final int numberOfItemsFetchedOnCurrentPage;
  final int perPage;

  const PaginationControlsView({
    super.key,
    required this.currentPage,
    required this.setCurrentPage,
    required this.total,
    required this.numberOfItemsFetchedOnCurrentPage,
    required this.perPage,
  });

  @override
  Widget build(BuildContext context) {
    final lowerLimit = (currentPage - 1) * perPage + 1;
    final upperLimit = lowerLimit + numberOfItemsFetchedOnCurrentPage - 1;
    final numberOfTotalPages = (total / perPage).ceil();

    List<int> pagesToShow;

    if (numberOfTotalPages > 7) {
      pagesToShow = currentPage <= 4
          ? [1, 2, 3, 4, 5, tripleDots, numberOfTotalPages]
          : currentPage > numberOfTotalPages - 4
              ? [
                  1,
                  tripleDots,
                  numberOfTotalPages - 4,
                  numberOfTotalPages - 3,
                  numberOfTotalPages - 2,
                  numberOfTotalPages - 1,
                  numberOfTotalPages,
                ]
              : [
                  1,
                  tripleDots,
                  currentPage - 1,
                  currentPage,
                  currentPage + 1,
                  tripleDots,
                  numberOfTotalPages,
                ];
    } else {
      pagesToShow = List.generate(numberOfTotalPages, (index) => index + 1);
    }

    return Row(
      children: [
        Text(
          'Showing $lowerLimit to $upperLimit of $total results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.first_page),
                onPressed: currentPage > 1 ? () => setCurrentPage(1) : null,
              ),
              IconButton(
                icon: Icon(Icons.navigate_before),
                onPressed: currentPage > 1
                    ? () => setCurrentPage(currentPage - 1)
                    : null,
              ),
              for (var pageNumber in pagesToShow)
                pageNumber == tripleDots
                    ? Text(
                        '...',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    : IconButton(
                        icon: Text(
                          pageNumber.toString(),
                          style: TextStyle(
                            color:
                                pageNumber == currentPage ? Colors.blue : null,
                          ),
                        ),
                        onPressed: () => setCurrentPage(pageNumber),
                      ),
              IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: currentPage < numberOfTotalPages
                    ? () => setCurrentPage(currentPage + 1)
                    : null,
              ),
              IconButton(
                icon: Icon(Icons.last_page),
                onPressed: currentPage < numberOfTotalPages
                    ? () => setCurrentPage(numberOfTotalPages)
                    : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
