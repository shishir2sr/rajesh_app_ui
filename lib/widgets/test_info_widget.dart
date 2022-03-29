import 'package:flutter/material.dart';

class TestInfoWidget extends StatelessWidget {
  const TestInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
          15), //TODO: remove margin if it has any parent widget
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
      // ? use your own container height from mediaquery
      height: 350,
      width: 300,
      // ! container decoration. Convert your own style
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          style: BorderStyle.solid,
          color: Colors.blueGrey,
          // ! Box Border Color. Use your apps theme color
          width: 2,
          // * Container border thickness. Use your own style
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_upward),
          ),
          const DataTableWidget(), //! this widget is a custom table widget defined below
          Center(
            child: SizedBox(
              width: 150,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Details',
                ),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 5, 85, 122)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DataTableWidget extends StatelessWidget {
// * text style for table title
  final tableTitletStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
// * text style for table title
  final tableTextStyle = const TextStyle(fontSize: 18);

  const DataTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      // * table widget used for representing table data for test result widget.
      // border: TableBorder.all(),
      columnWidths: const {0: FlexColumnWidth(15), 1: FlexColumnWidth(5)},

      children: [
        //*this method created to ignore code redundency
        tableRowMethod(
          strText: 'Alvi',
          valueText: 'ID',
          tableTextStyle: tableTitletStyle,
        ),
        // * this TableRow used to create space between the header of the table and the data.
        const TableRow(children: [
          TableCell(
            child: SizedBox(
              height: 10,
            ),
          ),
          TableCell(
              child: SizedBox(
            height: 10,
          ))
        ]),
        tableRowMethod(
            strText: 'Grade:',
            valueText: ' 10',
            tableTextStyle: tableTextStyle),
        tableRowMethod(
            strText: 'Total Questions:',
            valueText: ' 10',
            tableTextStyle: tableTextStyle),
        tableRowMethod(
            strText: 'Answered:',
            valueText: ' 03',
            tableTextStyle: tableTextStyle),
        tableRowMethod(
            strText: 'Attempts:',
            valueText: ' 03',
            tableTextStyle: tableTextStyle),
        tableRowMethod(
            strText: 'Correct:',
            valueText: ' 04',
            tableTextStyle: tableTextStyle),
        tableRowMethod(
            strText: 'Wrong:',
            valueText: ' 03',
            tableTextStyle: tableTextStyle),
        tableRowMethod(
            strText: 'Attained Marks:',
            valueText: ' 10/10',
            tableTextStyle: tableTextStyle),
        const TableRow(children: [
          TableCell(
            child: SizedBox(
              height: 20,
            ),
          ),
          TableCell(
              child: SizedBox(
            height: 20,
          ))
        ]),
      ],
    );
  }

  TableRow tableRowMethod(
      {required String? strText,
      required String? valueText,
      TextStyle? tableTextStyle}) {
    return TableRow(
      children: [
        TableCell(
          // * sizedbox used to add some height to the rows.
          child: SizedBox(
            height: 25,
            child: Text(strText.toString(), style: tableTextStyle),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: 25,
            child: Text(
              valueText.toString(),
              style: tableTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
