//
//  ViewController.swift
//  Game
//
//  Created by Manuel Sanchez on 11/08/18.
//  Copyright © 2018 Manuel Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
  
     let jugadas = ["","👊🏻","🖐🏻","✌🏻"]
    @IBOutlet weak var icon: UILabel!
    @IBOutlet weak var marcador: UILabel!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var hand: UIButton!
    
    
    
    @IBAction func reset(_ sender: UIButton) {
        icon.text = "🤖"
        marcador.text = "piedra, papel, o tijera"
        button.isEnabled = true
        scissors.isEnabled = true
        hand.isEnabled = true
        button.isHidden = false
        scissors.isHidden = false
        hand.isHidden = false
        view.backgroundColor = UIColor.cyan
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
          view.backgroundColor = UIColor.cyan
        
    }

    @IBAction func jugadaButton(_ sender: UIButton) {
        
        let movJugador = sender.tag
        let movMaquina = Int(arc4random_uniform(3)+1)
        if movJugador == movMaquina{
           
            marcador.text = "Empate"
            icon.text = jugadas[movMaquina]
            view.backgroundColor = UIColor.gray
            if movMaquina == 1 {
                hand.isHidden = true
                scissors.isHidden = true
            } else if movMaquina == 2 {
                button.isHidden = true
                scissors.isHidden = true
            }else if movMaquina == 3 {
                button.isHidden = true
                hand.isHidden = true
            }
                
            
        }else{
            switch movJugador{
            case 1:
                if movMaquina == 2{
                    
                    icon.text = jugadas[movMaquina]
                    view.backgroundColor = UIColor.red
                    marcador.text = "Perdiste"
                    hand.isHidden = true
                    scissors.isHidden = true
                    
                }else{
                   
                    icon.text = jugadas[movMaquina]
                    view.backgroundColor = UIColor.green
                    marcador.text = "Ganaste"
                    hand.isHidden = true
                    scissors.isHidden = true
                    
                }
                break
            case 2:
                if movMaquina == 3{
                    
                    icon.text = jugadas[movMaquina]
                    view.backgroundColor = UIColor.red
                    button.isHidden = true
                    scissors.isHidden = true
                    marcador.text = "Perdiste"
                    
                }else{
                   
                    icon.text = jugadas[movMaquina]
                    view.backgroundColor = UIColor.green
                    button.isHidden = true
                    scissors.isHidden = true
                    marcador.text = "Ganaste"
                    
                }
                break
            case 3:
                if movMaquina == 1{
                     icon.text = jugadas[movMaquina]
                    view.backgroundColor = UIColor.red
                    button.isHidden = true
                    hand.isHidden = true
                    marcador.text = "Perdiste"
                    
                }else{
                    icon.text = jugadas[movMaquina]
                    view.backgroundColor = UIColor.green
                    button.isHidden = true
                    hand.isHidden = true
                    marcador.text = "Ganaste"
                    
                }
                break
            default:
                icon.text = jugadas[movMaquina]
                marcador.text  = "default"
                break
                
                }
            button.isEnabled = false
            scissors.isEnabled = false
            hand.isEnabled = false
            }
        
        }
    
    }

