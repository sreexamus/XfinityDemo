//
//  EnvironmentInfo.swift
//  SimsonsViewer
//
//  Created by Sreekanth Iragam Reddy on 7/2/18.
//  Copyright © 2018 Sreekanth Iragam Reddy. All rights reserved.
//

import Foundation

struct EnvironmentInfo {

    enum URLScheme: String {
        case Wire
        case Simsons
        func value() -> String {
            switch self {
            case .Simsons:
                return  URLConstants.simsonsURL
            case .Wire:
                return  URLConstants.wireURL
            }
        }
    }

    private var bundleDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }

    var serverURL: String {

        get {
            print("compleete")
            print(bundleDict)

            guard let string =  bundleDict["cloud_url"],let stringUrl =  string as? String, let urlValue = URLScheme(rawValue: stringUrl) else {
                return ""
            }
            print("the final url is \n \(urlValue.value())")
            return urlValue.value()
        }
    }

    struct URLConstants {
        static let simsonsURL = "http://api.duckduckgo.com/?q=simpsons+characters&format=json"
        static let wireURL = "http://api.duckduckgo.com/?q=the+wire+characters&format=json"
    }
}


