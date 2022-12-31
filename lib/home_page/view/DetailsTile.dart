import 'package:flutter/material.dart';

class DeatilsTile extends StatelessWidget {
  DeatilsTile({Key? key, required this.productData}) : super(key: key);

  var productData;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.red,
      child: ListTile(
        title: Image.network(
          "https://www.pngmart.com/files/3/Gabriella-Wilde-Transparent-PNG.png",
          height: 500,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        subtitle: Column(
          children: [
            Text(productData['product'].toString()),
            Text(productData['size'].toString()),
            Text(productData['type'].toString()),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.update_outlined),
                        TextButton(
                            onPressed: () {}, child: const Text('Update')),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.delete_outlined),
                        TextButton(onPressed: () {}, child: Text('Delete')),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
