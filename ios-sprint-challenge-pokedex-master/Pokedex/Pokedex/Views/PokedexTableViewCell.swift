//
//  PokedexTableViewCell.swift
//  Pokedex
//
//  Created by Cody Morley on 8/25/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

import UIKit

class PokedexTableViewCell: UITableViewCell {
    //MARK: - Properties -
    @IBOutlet weak var pokemonNameLabel: UILabel?

    var pokemon: Pokemon? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Methods -
    func updateViews() {
        
        guard let unwrappedPokemon = pokemon else { return }
        pokemonNameLabel?.text = unwrappedPokemon.name
        
    }
}
