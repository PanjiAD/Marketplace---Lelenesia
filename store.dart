  void _generateProducts() {
    final List<String> shufled = _productName;
    shufled.shuffle();
    final Random _rd = new Random();
    _products = new List<Product>();
    for (var i = 0; i < shufled.length; i++) {
      final double rating =
          double.parse('${2 + _rd.nextInt(5 - 2)}.${_rd.nextInt(9)}');
      final int distance = _rd.nextInt(15);
      _products.add(Product(_productName[i], rating, distance, distance * 2,
          AssetImage("images/img_lele${i + 1}.png")));
    }
  }
