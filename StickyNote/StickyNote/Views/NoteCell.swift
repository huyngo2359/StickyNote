//
//  NoteCell.swift
//  StickyNote
//
//  Created by Quoc Huy Ngo on 5/26/17.
//  Copyright © 2017 Quoc Huy Ngo. All rights reserved.
//

import UIKit

class NoteCell: UICollectionViewCell {
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var boderView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    var data: Note? {
        didSet {
            if let color = data?.category?.color {
                setColor(color: color)
            }
            titleLabel.text = data?.title
            contentLabel.text = data?.content
            dateTimeLabel.text = data?.formatDate()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
 
    func setColor(color:CategoryColor) {
        switch color {
        case .black:
            cellView.backgroundColor = Color.blackBG
            boderView.backgroundColor = UIColor.black
            break
        case .blue:
            cellView.backgroundColor = Color.blueBG
            boderView.backgroundColor = Color.blue
            break
        case .green:
            cellView.backgroundColor = Color.greenBG
            boderView.backgroundColor = UIColor.green
            break
        case .brown:
            cellView.backgroundColor = Color.brownBG
            boderView.backgroundColor = UIColor.brown
            break
        case .red:
            cellView.backgroundColor = Color.redBG
            boderView.backgroundColor = UIColor.red
            break
        case .orange:
            cellView.backgroundColor = Color.orangeBG
            boderView.backgroundColor = UIColor.orange
            break
        case .white:
            cellView.backgroundColor = UIColor.white
            boderView.backgroundColor = Color.white
            break
        case .purple:
            cellView.backgroundColor = Color.purpleBG
            boderView.backgroundColor = UIColor.purple
            break
        case .yellow:
            cellView.backgroundColor = Color.yellowBG
            boderView.backgroundColor = Color.yellow
        }
    }
}
