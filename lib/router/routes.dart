enum AppRoutes {
  home('Home', '/'),
  httpFuture('HTTP & Future', '/http-future'),
  container('Container', '/container'),
  icon('Icon', '/icon'),
  button('Buttons', '/buttons'),
  text('Text', '/text'),
  image('Image', '/image'),
  rowColumn('Row & Column', '/row-column'),
  listView('List View', '/list-view'),
  customScrollView('Custom Scroll View', '/custom-scroll-view'),
  layout('Layout', '/layout'),
  theme('Theme', '/theme');

  const AppRoutes(this.name, this.path);

  final String name;
  final String path;
}