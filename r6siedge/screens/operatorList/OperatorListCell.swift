//
// Created by Alexander Fedosov on 9.10.2020.
//

import Foundation
import UIKit

class OperatorListCell: UITableViewCell {
  static let reuseIdentifier = "OperatorListCellIdentifier"
  var op: Operator?

  override func prepareForReuse() {
    super.prepareForReuse()
    op = nil
    textLabel?.text = ""
  }

  func configure(op: Operator){
    self.op = op
    textLabel?.text = op.name
  }
}
