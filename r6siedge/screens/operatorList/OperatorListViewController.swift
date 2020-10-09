//
//  ViewController.swift
//  r6siedge
//
//  Created by Alexander Fedosov on 9.10.2020.
//
//

import UIKit
import SnapKit

let operators = [
  Operator(name: "Caveira"),
  Operator(name: "Tsokotrundel"),
]

class OperatorListViewController: UIViewController {
  let tableView = UITableView()

  override func viewDidLoad() {
    super.viewDidLoad()

    tableView.register(OperatorListCell.self, forCellReuseIdentifier: OperatorListCell.reuseIdentifier)
    view.addSubview(tableView)
    tableView.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
    tableView.delegate = self
    tableView.dataSource = self
  }

}

extension OperatorListViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    operators.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: OperatorListCell.reuseIdentifier) as? OperatorListCell else {
      fatalError("Couldn't create cell to display operators")
    }
    cell.configure(op: operators[indexPath.row])
    return cell
  }
}

extension OperatorListViewController: UITableViewDelegate {
  public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let operatorViewController = OperatorViewController(op: operators[indexPath.row] )
    self.navigationController?.pushViewController(operatorViewController, animated: true)
  }
}
