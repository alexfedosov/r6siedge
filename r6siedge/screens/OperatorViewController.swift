//
// Created by Alexander Fedosov on 9.10.2020.
//

import Foundation
import UIKit
import SnapKit

class OperatorViewController: UIViewController {
  let op: Operator

  init(op: Operator) {
    self.op = op
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white

    let opName = UILabel()
    opName.text = op.name
    view.addSubview(opName)
    opName.snp.makeConstraints { make in
      make.top.equalTo(view.safeAreaLayoutGuide)
      make.leading.trailing.equalToSuperview().offset(20)
      make.height.equalTo(20)
    }

  }

}
