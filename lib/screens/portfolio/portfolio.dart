import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<String> itemData = [];

  @override
  void initState() {
    setState(() {
      itemData = [
        "https://lh3.googleusercontent.com/JrDdS6CFXuDmzZXe_jJid8xInN0fDE5PDMjwiCmQOl8RUiTFIf3yio1QTG7TV4aYPS8",
        "https://play-lh.googleusercontent.com/rx2pXmoGZGgDZ6po8wb37S7Jc7HoKmWd0LaRpoQFuHgDFFvGVxqqJfHklD82fSJ2n2Q",
        "https://play-lh.googleusercontent.com/0ljH3BCBEBUTLhYfNjH7P4Y9aHk1hBMMjT-RKx3XXypl6LpWNmkgghwIn3hI1AqAN7Y",
        "https://play-lh.googleusercontent.com/U-UnxaHQjzKqVa7l1HSn61wz-NwYXdLqqRnhy5oatlmLl-9lal5kCMhYL-Ln_G0Oq3E",
        "https://lh3.googleusercontent.com/JrDdS6CFXuDmzZXe_jJid8xInN0fDE5PDMjwiCmQOl8RUiTFIf3yio1QTG7TV4aYPS8",
        "https://play-lh.googleusercontent.com/rx2pXmoGZGgDZ6po8wb37S7Jc7HoKmWd0LaRpoQFuHgDFFvGVxqqJfHklD82fSJ2n2Q",
        "https://play-lh.googleusercontent.com/0ljH3BCBEBUTLhYfNjH7P4Y9aHk1hBMMjT-RKx3XXypl6LpWNmkgghwIn3hI1AqAN7Y",
        "https://play-lh.googleusercontent.com/U-UnxaHQjzKqVa7l1HSn61wz-NwYXdLqqRnhy5oatlmLl-9lal5kCMhYL-Ln_G0Oq3E",
        "https://lh3.googleusercontent.com/JrDdS6CFXuDmzZXe_jJid8xInN0fDE5PDMjwiCmQOl8RUiTFIf3yio1QTG7TV4aYPS8",
        "https://play-lh.googleusercontent.com/rx2pXmoGZGgDZ6po8wb37S7Jc7HoKmWd0LaRpoQFuHgDFFvGVxqqJfHklD82fSJ2n2Q",
        "https://play-lh.googleusercontent.com/0ljH3BCBEBUTLhYfNjH7P4Y9aHk1hBMMjT-RKx3XXypl6LpWNmkgghwIn3hI1AqAN7Y",
        "https://play-lh.googleusercontent.com/U-UnxaHQjzKqVa7l1HSn61wz-NwYXdLqqRnhy5oatlmLl-9lal5kCMhYL-Ln_G0Oq3E",
      ];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Portfolio',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: 86,
                fontWeight: FontWeight.w700,
                color: Colors.green.shade700,
              ),
        ),
        GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: itemData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.5,
            crossAxisSpacing: 0,
            mainAxisSpacing: 30,
          ),
          itemBuilder: (context, index) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.withOpacity(0.1),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network(itemData[index]),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
