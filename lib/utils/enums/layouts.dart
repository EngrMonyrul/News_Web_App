enum Layouts {
  mobile,
  laptop,
  desktop;

  bool get isMobile => this == mobile;

  bool get isLaptop => this == laptop;

  bool get isDesktop => this == desktop;
}
