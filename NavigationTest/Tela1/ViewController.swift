//
//  ViewController.swift
//  NavigationTest
//
//  Created by Rodrigo Martins on 19/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // VIA STORYBOARD

    @IBAction func navigateTo(_ sender: Any) {
        self.performSegue(withIdentifier: "navegacaoTela2", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "navegacaoTela2" {
            (segue.destination as? Tela2ViewController)?.backgroundColor = .brown
        }
    }

    // VIA CODIGO

    @IBAction func navigateToCode(_ sender: Any) {
        // CRIAR NOVA VIEW CONTROLLER

//        let newViewController = Tela2ViewController()
//        newViewController.backgroundColor = .cyan
//        navigationController?.pushViewController(newViewController, animated: true)

        // ACESSAR VIEW CONTROLLER DO STORYBOARD
//        if let viewControllerFromStoryboard = storyboard?.instantiateViewController(withIdentifier: "MinhaTela2") as? Tela2ViewController {
//            viewControllerFromStoryboard.backgroundColor = .yellow
//            navigationController?.pushViewController(viewControllerFromStoryboard, animated: true)
//        }

        // ABRIR VIA MODAL
        let viewControllerModal = Tela2ViewController()
        viewControllerModal.backgroundColor = .blue
        self.present(viewControllerModal, animated: true)


    }
    
}

