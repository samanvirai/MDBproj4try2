//
//  PostCollectionViewCell.swift
//  Socials MDB
//
//  Created by Sam Rai on 9/28/17.
//  Copyright © 2017 Samanvi Rai. All rights reserved.
//

import UIKit

class SocialCollectionViewCell: UICollectionViewCell {
    var postImage: UIImageView!
    var posterText: UILabel!
    var postText: UILabel!
    var numInterest: Int!
    var numInterestedText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.white
        setupPostImage()
        setupPosterText()
        setupPostText()
        setupNumInterested()
    }
    
    func setupPostImage() {
        postImage = UIImageView(frame: CGRect(x: 10, y: 10, width: 0.9 * self.frame.height, height: 0.8 * self.frame.height))
        postImage.clipsToBounds = true
        postImage.contentMode = .scaleAspectFill
        addSubview(postImage)
    }
    
    func setupPosterText() {
        posterText = UILabel(frame: CGRect(x: postImage.frame.maxX + 10, y: self.frame.height * (43/self.frame.height) + 40, width: self.frame.width - postImage.frame.maxX, height: 15))
        posterText.textColor = UIColor.lightGray
        posterText.textAlignment = .center
        posterText.font =  UIFont.init(name: "AppleSDGothicNeo-Regular", size: 11)
        posterText.adjustsFontForContentSizeCategory = true
        addSubview(posterText)
    }
    func setupNumInterested() {
        numInterestedText = UILabel(frame: CGRect(x: postImage.frame.maxX + 10, y: self.frame.height * (43/self.frame.height) + 60, width: self.frame.width - postImage.frame.maxX, height: 18))
        numInterestedText.textColor = UIColor.darkGray
        numInterestedText.textAlignment = .center
        numInterestedText.font =  UIFont.init(name: "AppleSDGothicNeo-Bold", size: 17)
        numInterestedText.adjustsFontForContentSizeCategory = true
        addSubview(numInterestedText)
    }
    
    func setupPostText() {
        postText = UILabel(frame: CGRect(x: postImage.frame.maxX + 10, y: self.frame.height * (43/self.frame.height), width: self.frame.width - postImage.frame.maxX - 20, height: 34))
        postText.textColor = UIColor.black
        postText.textAlignment = .center
        postText.font =  UIFont.init(name: "AppleSDGothicNeo-SemiBold", size: 24)
        postText.adjustsFontForContentSizeCategory = true
        postText.adjustsFontSizeToFitWidth = true

        addSubview(postText)
    }

}
