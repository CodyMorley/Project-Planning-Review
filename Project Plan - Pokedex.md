Project Planning Document for Pokedex Sprint Challenge

# Pokedex

## Features
### Search
- Uses Pokemon API Listed in project readme file
- Needs to fetch and decode a pokemon object by name
- Should be able to pull up a searched pokemon in a detail view controller
### List (Pokedex)
- Needs to list all searched + saved pokemon
- Tapping a list entry should present a detail view for that pokemon
### Detail View
- Should List ID #, Types and Abilities
- Should feature a sprite of the pokemon
- Navigation bar title should be name of pokemon
### Navigation Bar
- Back button reads "Pokedex"
- Title Changes From "Pokedex" to "Pokemon Search" or "\(pokemon.name)" depending on which child the nav controller is presenting
- Button Item in PokedexTableViewController leads to search segue

## View Controllers

### PokedexTableViewController
- embedded in Nav Controller (Initial VC)
- Contains: 
	- Cells:
		-Pokemon Cell, Single text label UI table view cell
			Segues to detail
	- Segues:
		- SearchSegue (Nav Bar button item)
			- Passes Controller instance
		- DetailSegue (pokemon cell)
			- Passes Pokemon Object
#### Controller Instances
- Pokemon Controller
#### Protocols, Dependencies, and Inheritances
- UITableViewDataSource/Delegate
- UIKit
- Injects Dependencies:
	- Pokemon Controller (Search)
	- Pokemon (Detail)

### PokemonSearchViewController
- Presented by Button on Nav bar in PokedexTVC	
#### Properties
- Pokemon Controller optional.
- Search Bar (Outlet)
- Labels:
	"ID" / (ID#)(Outlet)
	Abilities / (Abilities: ..., ..., ...)(Outlet)
	Types / (Types: Type1, Type 2)(Outlet)
- Image View (Outlet)
	-Contains sprite image
- Save (Action)
#### Protocols, Dependencies, and Inheritances
- UIKit
- Navigation Bar
 - Title: Pokemon Search (Set title in VDL, prefers large in storyboard)
 - Back Button: "Pokedex" (Set in storyboard)
 - Save button: Connects to save action, appends the current pokemon to the controller's pokemon array.
- UISearchBarDelegate
- Pokemon Controller (From pokedextvc)

### Pokemon Detail View Controller
- Presented by Tapping Pokedex Cell
#### Properties
- Pokemon Optional
- Navigation Bar
 - Title: Pokemon.name(Set in VDL, prefers large in storyboard)
 - Back Button: "Pokedex" (Set in storyboard)
- Labels:
	"ID" / (ID#)(Outlet)
	Abilities / (Abilities: ..., ..., ...)(Outlet)
	Types / (Types: Type1, Type 2)(Outlet)
- Image View (Outlet)
	-Contains sprite image
	
	
## Models
### Pokemon
#### Properties
- Coding Keys (String, CodingKey)

- Name: String
- ID: Int
- Abilities: [String]
- Types: [String]

- Init from decoder
#### Conformances & Inheritances
- Decodable

## Controllers
### Pokemon Controller
### Properties
- Read property, pokemon: [Pokemon]()
- Result property, result: Pokemon?
### Methods
- Search/Fetch function, sets value of result
