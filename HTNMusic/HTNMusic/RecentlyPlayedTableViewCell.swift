//
//  RecentlyPlayedTableViewCell.swift
//  HTNMusic
//
//  Created by Cameron Eldridge on 2017-09-16.
//  Copyright © 2017 Yeva Yu. All rights reserved.
//

import UIKit

protocol RecentlyPlayedTableViewCellDelegate {
    func recentlyPlayedCell(_: RecentlyPlayedTableViewCell, didTapPlayButtonWithURL: String)
}

class RecentlyPlayedTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    var spotifyID: String?
    var delegate: RecentlyPlayedTableViewCellDelegate?
    
    @IBAction func didTapPlayButton(_ sender: Any) {
        if self.spotifyID != nil {
            delegate?.recentlyPlayedCell(self, didTapPlayButtonWithURL: self.spotifyID!)
        } else {
            print("ERROR: No spotify ID. cri")
        }
    }
}
