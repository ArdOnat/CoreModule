/// For each api environment that the app will interact a new NetworkEnvironment struct, class or enum that conforms to this protocol should be created.
/// If enums are used, each network environment can define and store multiple api urls  for an single ApiEnvironment. (prod, test etc.)
/** Example:
 enum WeatherForecastNetworkEnvironment: NetworkEnvironment {
  case prod
  case test

  var baseURL: String {
     switch self {
         case .prod: return "some_prod_api_url"
         case .test: return "some_test_api_url"
     }

  }
 }
  */

public protocol NetworkEnvironment {
    var baseURL: String { get }
}
