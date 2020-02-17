//
//  PlayersViewController.swift
//  Bizingo
//
//  Created by Mateus Rodrigues on 10/02/20.
//  Copyright © 2020 Mateus Rodrigues. All rights reserved.
//

import UIKit

typealias PlayerProvider = (UITableView, IndexPath, Player) -> UITableViewCell

class PlayersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var players = [Player]()
    
    let provider: PlayerProvider = { (tableView, indexPath, player) in
        let cell = tableView.dequeueReusableCell(withIdentifier: "player-cell", for: indexPath) as! PlayerTableViewCell
        cell.configure(with: player)
        return cell
    }
    
    lazy var dataSource = UITableViewDiffableDataSource<Int, Player>(tableView: self.tableView, cellProvider: provider)
    
    var nickname: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "PlayerTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "player-cell")
        tableView.dataSource = self.dataSource
        tableView.separatorStyle = .none
        tableView.rowHeight = 50
        tableView.tableFooterView = UIView(frame: .zero)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if nickname == nil {
            requestNickname()
        }
    }
    
    @IBAction func join(_ sender: Any) {
        
        let chat = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "chat-controller") as! ChatViewController
        
        chat.nickname = nickname
        chat.players = players
        
        addChild(chat)
        
        chat.view.frame = view.bounds
        self.view.addSubview(chat.view)
        
        UIView.transition(from: self.view, to: chat.view, duration: 0.25, options: .transitionCrossDissolve) { _ in
            chat.didMove(toParent: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "chat" {
                let chatViewController = segue.destination as! ChatViewController
                chatViewController.nickname = nickname
            }
        }
    }
    
    func requestNickname() {
        
        let alert = UIAlertController(title: "Bizingo", message: "Enter your nickname", preferredStyle: .alert)
     
        alert.addTextField {
            $0.addTarget(self, action: #selector(self.textChanged), for: .editingChanged)
        }
     
        let action = UIAlertAction(title: "OK", style: .default) { (action) -> Void in
            let textfield = alert.textFields![0]
            self.nickname = textfield.text
            SCKManager.shared.connectToServer(with: self.nickname) { (players) in
                UserDefaults.standard.set(self.nickname, forKey: "nickname")
                DispatchQueue.main.async {
                    if let players = players {
                        self.players = players
                        self.update(with: players)
                    }
                }
            }
        }
        
        action.isEnabled = false

        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func textChanged(_ sender: UITextField) {
        var responder: UIResponder! = sender
        while !(responder is UIAlertController) { responder = responder.next }
        let alert = responder as! UIAlertController
        alert.actions[0].isEnabled = !sender.text!.isEmpty
    }

}

extension PlayersViewController {
    
    private func update(with players: [Player], animated: Bool = false) {
        var snapshot = NSDiffableDataSourceSnapshot<Int, Player>()
        snapshot.appendSections([0])
        snapshot.appendItems(players, toSection: 0)
        dataSource.apply(snapshot, animatingDifferences: animated)
    }
    
}
