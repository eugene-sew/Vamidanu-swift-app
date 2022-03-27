//
//  RecipeModel swift
//  Vamidanu
//
//  Created by Eugene Sewor  on 26/03/2022
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id:String{self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
   
}


extension Recipe {
    static let all: [Recipe]=[
  
        
        Recipe(
        name:"Jollof Rice",
        image:"jollof",
        description:"Jollof rice is a delicious West African dish composed of fluffy red orange rice that is often cooked with vegetables and meat",
        ingredients:" For the chicken\n2 lb chicken (bone in), cut\n4 garlic cloves\n1 onion\n1 inch piece of ginger\n1 Scotch bonnet pepper\n \nFor the sauce\n4 tablespoons vegetable oil\n2 onions , thinly sliced\n8 oz tomato paste\n14 oz tomato puree (canned)\n2 Scotch bonnet peppers\n1 onion\n2 bay leaves\n1 tablespoon curry powder (optional)\n\nFor the rice\n4 cups parboiled rice\n½ lb green beans , cut into 1 inch / 2,5 cm pieces\n2 carrots , peeled and cut into large matchsticks",
        directions:"Blend the garlic, onion, ginger, stock cube and chili peppers, with 3 cups of water\nPut the chicken pieces in a large pot, and pour the mixture on top  Stir, add water to cover the chicken if necessary  Cover and cook on medium/low for 30 minutes\nHeat oil in a non-stick pan and fry the sliced onions for 8-10 minutes until soft and golden brown\nAdd the tomato paste and continue cooking while stirring for 5 minutes\nIn the meantime, remove the chicken from the pot, and drain the stock into the blender\nAdd the tomato puree, 1 onion, and 2 Scotch bonnet peppers and blend to obtain a smooth consistency\nAdd this mixture to the pan with the onions and tomato sauce, and mix  Add the vegetables and simmer for about 15 minutes\nAdd the bay leaves and curry powder  Add the rice to the sauce and stir  Add salt to taste  Cover and simmer on a low heat till rice is fully cooked, about 20 minutes\nIn the meantime, fry the boiled chicken in a saucepan with 3 tablespoons of vegetable oil, to give them some color\nServe the rice with the chicken, as well as fried plantains or a green leaf salad on the side ",
        category:"Main"

        ),
        
        Recipe(
        name:"Waakye",
        image:"waakye",
        description: "Waakye is a traditional Ghanaian dish of cooked rice, beans and red millet leaves which give waakye this particular reddish color ",
        ingredients:"1 cup long grain rice\n2 (14 oz) cans red beans (or black-eyed peas)\nA dozen leaves of dried millet (waakye)\nSalt",
        directions:"Put the dried leaves of millet in 1 quart (1l) of boiling water for 15 minutes until the water is well colored  Remove the waakye leaves and stir\nRinse the rice in water a couple times\nIn a pot, pour 2 cans of beans (without the water) and the rice\nPour the colored water on the rice and beans  Add water if necessary\nCover and cook for 15 minutes or until the rice is cooked and has absorbed all the water  Season with salt ",
        category:"Main"

        ),
        
        Recipe(
        name:"Azi Detsi",
        image:"azidetsi",
        description:"Azi detsi is one of Ghana’s most famous national dishes  It is a soup made from peanuts, also known as peanut butter soup, peanut or groundnut soup ",
        ingredients:" 3 lb chicken (with bone)\n6 kpakpo shito peppers (pettie belles)\n2 onions , whole\n3 cloves garlic (optional)\n1 (1-inch) piece fresh ginger\n3 large ripe tomatoes\n4 cups chicken stock\n2 bay leaves\nScotch bonnet pepper or chili power (according to taste)\n½ cup unsweetened peanut butter\n2 cups water (plus extra as needed)\n10 whole okra pods",
        directions:" Place the chicken pieces into a pot  Cut off the top and bottom edges of the onions and add them whole into the pot\nAdd the tomatoes whole into the pot, removing the core tips  Add the garlic and ginger into the pot  They may be grated or added whole, then processed afterwards\nAdd the bay leaves, kpakpo shito and chicken stock then bring to the boil and simmer until tender\nPrepare the peanut sauce while the soup is simmering by placing the peanut butter into a pot and mixing it with ½ a cup of water  This will allow the peanut butter to meld well with the water prior to adding the rest\nPlace the peanut sauce on a high heat and add the remaining water  Simmer for about 20 minutes until peanut oil rises to the surface\nWhen the onions and tomatoes are soft, remove them from the broth and place them into a blender  If you want the soup to be very spicy, you may add some of the kpakpo shito now  Process them in the blender, then pour back into the soup and stir  Simmer for 5 minutes\nPour the peanut sauce into the soup and allow to simmer for 15 minutes\nCut off the head and tail of the okra and boil them briefly before adding them to the soup  This is used as a garnish\nCheck for seasoning and add salt and chili powder if desired  The dish is now ready to be served alongside omo tuo",
        category:"Soup"

        ),

        Recipe(
        name:"Kuli-Kuli",
        image:"kuli",
        description:"Kuli-kuli is a West African fried snack made with peanuts that is popular in Nigeria, Benin, northern Cameroon and Ghana ",
        ingredients:"8 oz  peanuts salted and dry roasted \n1 tablespoon grated fresh ginger \n¼ teaspoon ground chilli pepper \nPeanut oil (for frying)",
        directions:"Grind the peanuts and ginger until smooth \nAdd the ground chili pepper and mix well \nSqueeze the peanut paste to remove as much oil as possible  This step is very important to obtain a very crisp kuli kuli \nDivide the dough into about twenty pieces and give the kuli kuli their shape: either in a stick, in a small crown, or in balls \nAdd 2 tablespoons of water to the dough if it does not work easily \nHeat a large volume of peanut oil in a deep pan \nFry the kuli kuli over medium heat until golden brown \nDrain on paper towels \nEnjoy hot or cold",
        category:"Snack"

        ),

        Recipe(
        name:"Kaklo",
        image:"kaklo",
        description:"Kaklo is a delicious traditional Ghanaian fried snack made from very ripe plantain fritters ",
        ingredients:"4 plantains (very ripe)\n1 cup all-purpose flour \n1 small onion , finely grated \n1 tablespoon chopped fresh ginger \n1 teaspoon salt \n1 teaspoon Cayenne pepper \nVegetable oil (for frying)",
        directions:"Peel the plantains and place them in a bowl  \nMash them with a fork until obtaining a lumpy mixture  \nAdd the onion, ginger, salt, cayenne pepper and mix well with a spatula  \nAdd the flour and mix well  \nIn a deep skillet, heat a large volume of oil over medium heat  \nUsing a spoon, take some of the dough and dip in hot oil  \nFry on both sides until golden brown  \nPlace kakro as you go on a sheet of paper towel to remove excess oil  \nServe hot or warm  \n",
        category:"Snack"

        ),

        Recipe(
        name:"Egusi Soup",
        image:"egusi",
        description:"Egusi soup is a traditional soup from West Africa that is prepared with egusi, which are the seeds of squash, melon or gourd ",
        ingredients:"2 lb stewing beef trotters (or goat or lamb trotters) \n½ lb tripe \n2 cubes beef stock seasoning (or chicken) \n1 Scotch bonnet peppers (or more to taste) \n6 tablespoons palm oil \n1½ cup ground egusi (or whole pumpkin seeds, ground) \n2 large onions , finely chopped \n2 cloves garlic \n1 (1 inch / 3 cm) piece ginger \n4 medium vine tomatoes \nScotch bonnet pepper (or chili powder), according to taste \n1 whole stock fish (or some smoked mackerels or kippers) \n½ cup smoked prawns, left whole or ground (if using crayfish, grind them to a powder )\n1 lb spinach \nWater (as needed)",
        directions:"Cut the meat and tripe into bite-sized chunks and place into a pot  Add some of the onions and ginger to the meat, just enough to help with the aroma  Add a bouillon cube, top with water and braise until tender  Cook for up to an hour to ensure the tripe is tender\nPrepare the stock fish by soaking it in boiling water until the flesh is soft enough to debone\nPlace a large pot on the stove and heat up the palm oil  Fry the rest of the onions in the oil until caramelized\nBlend the scotch bonnet, ginger and garlic with the tomatoes in a food processor  Liquidize the ingredients until smooth then pour them into the pot\nCook them for 10 to 15 minutes until the sauce has reduced and thickened\nAdd enough water into the egusi to form a thick paste  Start with half a cup (120 ml) of water, and up to a cup (250 ml) of water for the egusi to be smoother in the soup\nDrop the egusi into the soup either in balls or simply pour it in to steam  Cover the pot, reduce the heat and simmer for about 15 minutes\nAdd the cooked meat, stock fish and crayfish powder (optional)\nChop the spinach and introduce it into the stew gradually until it is softened and stirred in well\nGive the pot a stir then allow to simmer for a further 10 minutes\nCheck the soup for seasoning  Serve with a side of pounded yam or semolina shaped into balls  The egusi soup can also be served with rice ",
        category:"Soup"

        ),

        Recipe(
        name:"Angwa Mo",
        image:"angwa",
        description:"Angwa Mo (or angwamu) is a delicious traditional Ghanaian dish consisting of fried rice that is often cooked with salted beef (tolo beef) ",
        ingredients:"3 tablespoons peanut oil\n1 cup fragrant white rice\n3 oz  salted beef (tolo beef), diced (recipe below)\n2 onions , chopped(divided in 2)\n2 teaspoons salt\n1 cube Maggi chicken broth\n1 red hot pepper , diced\n2 cups water\nSalt\nPepper\nFor the salted beef (tolo beef)\n3 oz  beef (sirloin or rib eye)\n2 tablespoons sea salt\n2 bay leaves",
        directions: "In a plastic or glass container with a lid, add the beef and sprinkle with sea salt\nRub the beef with the salt, then add the bay leaves\nCover the container and place in a warm place for 24 hours\nDrain the blood then cover the container again and place in a warm place for another 24 hours\nWash rice, drain and dry\nIn a pot, heat the oil and fry the chopped onions in hot oil until golden brown\nTake half of the onion and set aside\nAdd the salted beef and mix well\nAdd rice and fry over medium heat for about 2 minutes, stirring constantly\nAdd the bouillon cube and stir  Add the hot pepper and mix\nAdd the water and stir well  Cook for 5 minutes\nAdd the remaining onion and cook again for 5 minutes\nRemove from heat\nCover and let stand 5 minutes before serving",
        category:"Main"
        ),

        Recipe(
        name:"Suya",
        image:"suya",
        description:"Suya are grilled beef, mutton or chicken skewers that are popular on the streets of Ghana, Nigeria, Niger, Cameroon, and Sudan",
        ingredients:"3 lb beef (to grill)\n3 oz  roasted peanuts with skin , finely ground into powder\n1 tablespoon ground Cayenne pepper\n2 teaspoons smoked paprika\n1 tablespoon garlic powder\n½ teaspoon ginger powder\n½ teaspoon nutmeg , freshly grated\n1 tablespoon onion powder\n1 tablespoon white pepper\n1 cube beef bouillon (or chicken bouillon Maggi), reduced to powder\n4 tablespoons vegetable oil\nSalt",
        directions:"Heat the barbecue (or oven in grill position) to 450 F / 230 C\nIn a bowl, combine the garlic and onion powders, smoked paprika, ginger, nutmeg, white pepper, Cayenne pepper, peanuts and bouillon cube  Set aside\nThoroughly dry the meat with paper towel\nSlice meat in pieces of about 1 to 2 inches (2,5-5 cm) and to a thickness of approximately 1 inch / 2,5 cm (or in 1 inch cubes)\nThread 4 pieces of meat per skewer\nRub the meat with the spice mixture\nPlace the skewers on the previously oiled barbecue grill (or in the oven on an oiled baking tray)\nBrush oil onto the meat and gril for about 12 to 15 minutes  Brush with oil after turning the skewers halfway through cooking\nServe immediately ",
        category:"Appetizer"
        ),

        Recipe(
        name:"Akara",
        image:"akara",
        description:"Akara is a delicious fried snack composed of black-eyed peas originally from Nigeria, but also popular in West Africa and Brazil ",
        ingredients:"2 cups dry black-eyed peas \n 1 Scotch Bonnet pepper (or habanero pepper), deseeded and chopped (optional) \n 2 shallots chopped \n 1 beef stock cube , ground (optional) \n ½ teaspoon salt \n Vegetable oil (for frying)",
        directions:"Soak black-eyed peas overnight in a large pot of water  \nDrain and add water again to cover \nLoosen black-eyed beans skins by rubbing the beans between your hands  Alternatively, you can speed up the process by putting the beans in the food processor with just a little water and pulsing briefly 3 to 4 times \nTransfer the beans to a food processor  Add about ¼ cup (50ml) of water for every 2 cups of beans  Puree until smooth and creamy  You may need to add a little more water to reach the right texture  Add hot pepper and shallots and blend again \nPut the bean paste in a bowl and mix well  Season to taste and mix again \nIn a large pan, heat vegetable oil to 370F/190C  Form balls of paste with a spoon and carefully dip them into the pan  Fry until browned evenly on all sides \nPlace on a dish lined with paper towel  Serve hot alone or with a dipping sauce ",
        category:"Appetizer, Snack"

        ),
        

        

 



    ]
}
