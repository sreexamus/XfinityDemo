//
//  TopicsViewModel.swift
//  SimsonsViewer
//
//  Created by Sreekanth Iragam Reddy on 7/2/18.
//  Copyright © 2018 Sreekanth Iragam Reddy. All rights reserved.
//

import Foundation

class TopicViewModel {
    var noOfSections: Int
    var noOfRows: Int
    var allTopics: Topics?
    init() {
        noOfSections = 0
        noOfRows = 0
    }

    func fetchAllTopics() {

        TopicsManager.shared.getAllTopics { [weak self](isSuccess, topics) in
            if isSuccess {
               self?.allTopics = topics
            } else {
                 print("error")
            }
        }
    }

}


