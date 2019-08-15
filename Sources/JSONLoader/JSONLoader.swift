import Foundation

public func loadFromBundle<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json") else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
        return parse(data, as: T.self)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
}


public func loadFromURL<T: Decodable>(_ url: URL, as type: T.Type = T.self) -> T {
    do {
        let contents = try String(contentsOf: url)
        return parse(contents.data(using: .utf8)!, as: T.self)
    } catch {
        fatalError("Couldn't load data from \(url):\n\(error)")
    }
}

public func parse<T: Decodable>(_ data: Data, as type: T.Type = T.self) -> T {
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse data:\n\(error)")
    }
}
