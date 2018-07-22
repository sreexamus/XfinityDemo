//
//  TopicsManager.swift
//  SimsonsViewer
//
//  Created by Sreekanth Iragam Reddy on 7/2/18.
//  Copyright © 2018 Sreekanth Iragam Reddy. All rights reserved.
//

import Foundation
import Alamofire

typealias ResultCompletionBlock = (_ isSuccess: Bool, _ topics: Topics?) -> Void

final class TopicsManager {
    static let shared = TopicsManager()
    private init() {
        
    }

    func getAllTopics(completion: @escaping ResultCompletionBlock) ->  Void{

        let urlString = EnvironmentInfo().serverURL
        guard let url = URL(string: urlString) else {
            completion(false, nil)
            return
        }

        Alamofire.request(url).responseData { (responseData) in
            switch responseData.result {
            case .success:
                    guard let jsonData = responseData.result.value else {
                        return
                    }
                    let jsonDecoder = JSONDecoder()
                    do {
                        let responseModel = try jsonDecoder.decode(Topics.self, from: jsonData)
                        print("models are")
                        print(responseModel)
                       completion(true, responseModel)

                    }catch {
                        print(error)
                }
            case .failure:
                print(responseData.error)
                completion(false, nil)
            }
        }
    }
}
