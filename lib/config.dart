enum Flavor {
  prod,
  dev,
}

class Config {
  Flavor currentFlavor = Flavor.prod;

  String get appName {
    switch (currentFlavor) {
      case Flavor.prod:
        return 'Astro Check';
      case Flavor.dev:
        return 'Astro Check Dev';
    }
  }

  String get package {
    switch (currentFlavor) {
      case Flavor.prod:
        return 'com.astro.check';
      case Flavor.dev:
        return 'com.astro.check.dev';
    }
  }

  String get bannerID {
    switch (currentFlavor) {
      case Flavor.prod:
        return '';
      case Flavor.dev:
        return '';
    }
  }

  String get interstitialID {
    switch (currentFlavor) {
      case Flavor.prod:
        return '';
      case Flavor.dev:
        return '';
    }
  }
}
