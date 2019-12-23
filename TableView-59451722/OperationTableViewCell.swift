//
//  OperationTableViewCell.swift
//  TableView-59451722
//
//  Created by Mufakkharul Islam Nayem on 12/23/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

class OperationTableViewCell: UITableViewCell {

    @IBOutlet weak var topupButton: UIButton!
    @IBOutlet weak var detailsButton: UIButton!

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        topupButton.roundButton()
        detailsButton.roundButton()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension UIButton {
    func roundButton(){
        let size = CGSize(width: bounds.width / 2, height: bounds.width / 2)
        let maskPath = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: .allCorners,
                                    cornerRadii: size)
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.cgPath
        layer.mask = maskLayer
    }
}
