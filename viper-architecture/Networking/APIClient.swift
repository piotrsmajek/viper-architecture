import Foundation

struct APIClient {

    private enum APIError: Error {
        case missingData
    }

    static func execute<Model: Codable>(path: String,
                                        onSuccess: @escaping (Model) -> (),
                                        onError: @escaping (Error) -> ()) {
        let task = URLSession.shared.dataTask(with: ApiConstants.baseUrl.appendingPathComponent(path)) { (data, _, error) in
            guard let data = data else { return onError(APIError.missingData) }
            do {
                let model = try JSONDecoder().decode(Model.self, from: data)
                onSuccess(model)
            } catch {
                onError(error)
            }
        }
        task.resume()
   }
}
