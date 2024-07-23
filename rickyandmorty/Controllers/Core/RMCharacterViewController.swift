//
//  RMCharacterViewController.swift
//  rickyandmorty
//
//  Created by Sanath Raj Petkar on 22/07/24.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title="Characters"
        
        let request = RMRequest(
            endpoint: .character,
            pathComponents: ["1"],
            queryParamaters: [
                URLQueryItem(name:"name",value:"rick")
            ]
        )
        print(request.url)
    }
}
