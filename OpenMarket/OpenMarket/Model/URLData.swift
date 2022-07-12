//
//  URLData.swift
//  OpenMarket
//
//  Created by 케이, 수꿍 on 2022/07/12.
//

import Foundation

//let request: URLRequest = URLRequest(url: url)
//request.httpMethod = "GET"
//
//URLData().fetchData(url: request, dataType: <#T##T#>, completion: <#T##(Result<T, Error>) -> Void#>)


class URLData {
    var session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
    
    func fetchData<T: Codable>(url: URLRequest, dataType: T.Type, completion: @escaping (Result<T,Error>) -> Void) {
        // URLRequest 분기 처리
        
        let dataTask: URLSessionDataTask = session.dataTask(with: url) { data, response, error in
            if let error = error {
                print("0번 구역")
                completion(.failure(error))
                return
            }
            
            
            
            if let response = response as? HTTPURLResponse,
               (200..<300).contains(response.statusCode)
                {
                
                print(response.statusCode)
                
                if let verifiedData = data {
                    print(verifiedData)
                    dump(verifiedData)
                    
                    do {
                        let decodedData = try JSONDecoder().decode(T.self, from: verifiedData)
                        print("1번 구역")
                        completion(.success(decodedData))
                        
                    } catch {
                        print("2번 구역")
                        completion(.failure(NetworkError.unableToParse))
                        
                    }
                }
                
            } else {
                print("3번 구역")
                completion(.failure(NetworkError.serverSideProblem))
                
            }
        }
        dataTask.resume()
    }
}
