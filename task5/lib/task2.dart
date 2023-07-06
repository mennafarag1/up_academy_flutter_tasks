class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  double get width => _width;

  set width(double value) {
    if (value < 0) {
      throw ArgumentError('Width cannot be negative');
    }
    _width = value;
  }

  double get height => _height;

  set height(double value) {
    if (value < 0) {
      throw ArgumentError('Height cannot be negative');
    }
    _height = value;
  }

  double get area => _width * _height;
}