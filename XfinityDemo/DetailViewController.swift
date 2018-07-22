//
//  DetailViewController.swift
//  SimsonsViewer
//
//  Created by Sreekanth Iragam Reddy on 7/2/18.
//  Copyright © 2018 Sreekanth Iragam Reddy. All rights reserved.
//

import UIKit
import SDWebImage

final class DetailViewController: UIViewController {

    @IBOutlet private weak var image: UIImageView!
    @IBOutlet private weak var descriptionLabel: UILabel!
    var viewModel: TopicViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Topic Details"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController: TopicSelectionDelegate {
    func didSelectTopic(viewModel: TopicViewModel?, row: Int) {
        descriptionLabel.text = viewModel?.allTopics?.relatedTopics?[row].text

        //imageView.sd_setImage(with: URL(string: "http://www.domain.com/path/to/image.jpg"), placeholderImage: UIImage(named: "placeholder.png"))
        image.sd_setImage(with: URL(string: (viewModel?.allTopics?.relatedTopics?[row].icon?.uRL)!), placeholderImage: UIImage(named: "placeholder.png"), options: [], completed: nil)
        loadViewIfNeeded()
    }

}
