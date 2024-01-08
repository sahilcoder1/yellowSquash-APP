Environment env = Environment.dev;

enum Environment { dev, qa, uat, staging, production }

String getBaseUrl() {
  switch (env) {
    case Environment.dev:
      return 'https://ysal-phase2.onrender.com/';
    case Environment.qa:
      return 'https://ysal-phase2.onrender.com/';
    case Environment.uat:
      return '';
    case Environment.staging:
      return '';
    case Environment.production:
      return 'https://yellow-squash.onrender.com/';
    // ignore: no_default_cases
    default:
      return '';
  }
}
// https://ysal-phase2.onrender.com/
// https://ysal-mob-app.onrender.com/