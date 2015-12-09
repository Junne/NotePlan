//
//  NoteCollectionViewCell.swift
//  NotePlan
//
//  Created by Junne on 12/8/15.
//  Copyright © 2015 Junne. All rights reserved.
//

import UIKit

class NoteCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLine: UIView!
    @IBOutlet weak var noteTextView: UITextView!
    @IBOutlet internal weak var labelLeadCons: NSLayoutConstraint!
}
