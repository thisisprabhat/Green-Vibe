import 'package:flutter/cupertino.dart';
import 'package:green_vibe/models/plant_details.dart';

class DataProvider extends ChangeNotifier {
  List<PlantDetails> indoorPlants = [
    PlantDetails(
      plantId: '1',
      name:
          "Elephant bush, Portulacaria afra, Jade plant (Green) - Succulent Plant",
      cost: 12,
      description:
          "The jade plant is an extremely popular succulent houseplant with fleshy, Sometimes called the money plant or dollar plant, these plants were once thought to bring good luck to their owners so were often given as housewarming gifts.",
      imageUrls: [
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit1.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit2.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit3.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit4.png?raw=true"
      ],
      height: 13,
      temMin: 18,
      temmax: 24,
      potDescription: "ceramic pot",
      specialFeatures: [
        'Can be a good bonsai for beginer',
        'thick and woody stem',
        'glossy green',
        'oblong leaves up to two inches long'
      ],
      isFavourite: false,
      isOnCart: false,
      about:
          "Botanical name of Elephant bush is Portulacaria afra. Elephant bush is a small-leaved succulent plant found in South Africa. These succulents commonly have a reddish stem and leaves that are green Elephant Bush small-leaved succulent plant found in South Africa. Elephant Bush commonly has a reddish stem and green leaves.The vibrant green leaves are symbolic of growth and renewal. Jade plants have long been thought to bring good fortune to their owne",
    ),
    PlantDetails(
      plantId: '2',
      name: "Sansevieria trifasciata, Snake Plant (var. laurentii) - Plant",
      description:
          "Sansevieria trifasciata, Snake Plant (var. laurentii) Plant is a popular houseplant with leaves having dark green centers that are surrounded by light yellow to gold edges.",
      imageUrls: [
        "https://raw.githubusercontent.com/thisisprabhat/projectImages/main/snake/Snake%2BPlant%2Bin%2BPot.webp",
        "https://raw.githubusercontent.com/thisisprabhat/projectImages/main/snake/Snake%2BPlant%2Bin%2BPot%20(1).webp",
      ],
      cost: 8,
      height: 23,
      temMin: 18,
      temmax: 24,
      potDescription: "ceramic pot",
      specialFeatures: [
        'NASA recommended air purifier plant.',
        'Best plant for AC rooms, office desk, etc.',
        'Zero maintenance plant.',
        'Best indoor plant for low light condition',
        'Popular houseplant with wavy cross stripes.'
      ],
      isFavourite: false,
      isOnCart: false,
      about:
          "family Asparagaceae Sansevieria trifasciata belongs to the family Asparagaceae. Leaves are erect, fleshy, sharply-pointed, sword-shaped, deep green with light gray-green horizontal stripes. Leaves arise in a rosette from a thick rhizome. Small fragrant greenish-white flowers bloom on mature plants. Flowers and fruit rarely appear on indoor plants. A plant has horizontal bands of light greyish-green and bordered with a creamy yellow margin of variable width which is parallel with the veins of the leaf.",
    ),
    PlantDetails(
      plantId: '1',
      name:
          "Elephant bush, Portulacaria afra, Jade plant (Green) - Succulent Plant",
      cost: 12,
      description:
          "The jade plant is an extremely popular succulent houseplant with fleshy, Sometimes called the money plant or dollar plant, these plants were once thought to bring good luck to their owners so were often given as housewarming gifts.",
      imageUrls: [
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit1.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit2.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit3.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit4.png?raw=true"
      ],
      height: 13,
      temMin: 18,
      temmax: 24,
      potDescription: "ceramic pot",
      specialFeatures: [
        'Can be a good bonsai for beginer',
        'thick and woody stem',
        'glossy green',
        'oblong leaves up to two inches long'
      ],
      isFavourite: false,
      isOnCart: false,
      about:
          "Botanical name of Elephant bush is Portulacaria afra. Elephant bush is a small-leaved succulent plant found in South Africa. These succulents commonly have a reddish stem and leaves that are green Elephant Bush small-leaved succulent plant found in South Africa. Elephant Bush commonly has a reddish stem and green leaves.The vibrant green leaves are symbolic of growth and renewal. Jade plants have long been thought to bring good fortune to their owne",
    ),
    PlantDetails(
      plantId: '2',
      name: "Sansevieria trifasciata, Snake Plant (var. laurentii) - Plant",
      description:
          "Sansevieria trifasciata, Snake Plant (var. laurentii) Plant is a popular houseplant with leaves having dark green centers that are surrounded by light yellow to gold edges.",
      imageUrls: [
        "https://raw.githubusercontent.com/thisisprabhat/projectImages/main/snake/Snake%2BPlant%2Bin%2BPot.webp",
        "https://raw.githubusercontent.com/thisisprabhat/projectImages/main/snake/Snake%2BPlant%2Bin%2BPot%20(1).webp",
      ],
      cost: 8,
      height: 23,
      temMin: 18,
      temmax: 24,
      potDescription: "ceramic pot",
      specialFeatures: [
        'NASA recommended air purifier plant.',
        'Best plant for AC rooms, office desk, etc.',
        'Zero maintenance plant.',
        'Best indoor plant for low light condition',
        'Popular houseplant with wavy cross stripes.'
      ],
      isFavourite: false,
      isOnCart: false,
      about:
          "family Asparagaceae Sansevieria trifasciata belongs to the family Asparagaceae. Leaves are erect, fleshy, sharply-pointed, sword-shaped, deep green with light gray-green horizontal stripes. Leaves arise in a rosette from a thick rhizome. Small fragrant greenish-white flowers bloom on mature plants. Flowers and fruit rarely appear on indoor plants. A plant has horizontal bands of light greyish-green and bordered with a creamy yellow margin of variable width which is parallel with the veins of the leaf.",
    ),
  ];
  List<PlantDetails> green = [
    PlantDetails(
      plantId: '3',
      name: "Neanthe Bella Palm Plant",
      cost: 12,
      description:
          "Areca palm is clump-growing with ringed, yellow leaf-ribs. The foliage is evergreen.",
      imageUrls: [
        "https://raw.githubusercontent.com/thisisprabhat/projectImages/main/Neanthe%20Bella%20Palm%20Plant/Neanthe%2BBella%2BPalm%2BPlant%2Bin%2BPot.webp",
        "https://raw.githubusercontent.com/thisisprabhat/projectImages/main/Neanthe%20Bella%20Palm%20Plant/Neanthe%2BBella%2BPalm%2BPlant%2Bin%2BPot%20(1).webp"
      ],
      height: 92,
      temMin: 18,
      temmax: 24,
      potDescription: "ceramic pot",
      specialFeatures: [
        'the most popular indoor houseplants sold today. Indoors an Areca palm is a medium sized exotic looking plant that can reach a height of 6-8 feet; outdoors it may be as tall as 25 feet.',
        'This is one of the most useful Palms of the tropics the world around',
      ],
      isFavourite: false,
      isOnCart: false,
      about:
          "The areca palm (Chrysalidocarpus lutescens or Dypsis lutescens), also called the yellow butterfly palm and golden cane palm is one of the easiest palm trees to grow indoo The foliage is evergreen, of Fine texture and yellow-green in colour. Pinnate, 6 to 8 pale green leaves per stem, 80 to 100 leaflets, to 8 feet long (2.4 m). Yellow if grown with enough light, 2 feet long. Yellow male and female flowers on the same inflorescence. This palm tree, with its long, graceful feather-shaped fronds, will add a tropical feel to your home and is especially well suited for screened patios and atriums.",
    ),
    PlantDetails(
      plantId: '2',
      name: "Sansevieria trifasciata, Snake Plant (var. laurentii) - Plant",
      description:
          "Sansevieria trifasciata, Snake Plant (var. laurentii) Plant is a popular houseplant with leaves having dark green centers that are surrounded by light yellow to gold edges.",
      imageUrls: [
        "https://raw.githubusercontent.com/thisisprabhat/projectImages/main/snake/Snake%2BPlant%2Bin%2BPot.webp",
        "https://raw.githubusercontent.com/thisisprabhat/projectImages/main/snake/Snake%2BPlant%2Bin%2BPot%20(1).webp",
      ],
      cost: 8,
      height: 23,
      temMin: 18,
      temmax: 24,
      potDescription: "ceramic pot",
      specialFeatures: [
        'NASA recommended air purifier plant.',
        'Best plant for AC rooms, office desk, etc.',
        'Zero maintenance plant.',
        'Best indoor plant for low light condition',
        'Popular houseplant with wavy cross stripes.'
      ],
      isFavourite: false,
      isOnCart: false,
      about:
          "family Asparagaceae Sansevieria trifasciata belongs to the family Asparagaceae. Leaves are erect, fleshy, sharply-pointed, sword-shaped, deep green with light gray-green horizontal stripes. Leaves arise in a rosette from a thick rhizome. Small fragrant greenish-white flowers bloom on mature plants. Flowers and fruit rarely appear on indoor plants. A plant has horizontal bands of light greyish-green and bordered with a creamy yellow margin of variable width which is parallel with the veins of the leaf.",
    ),
    PlantDetails(
      plantId: '1',
      name:
          "Elephant bush, Portulacaria afra, Jade plant (Green) - Succulent Plant",
      cost: 12,
      description:
          "The jade plant is an extremely popular succulent houseplant with fleshy, Sometimes called the money plant or dollar plant, these plants were once thought to bring good luck to their owners so were often given as housewarming gifts.",
      imageUrls: [
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit1.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit2.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit3.png?raw=true",
        "https://github.com/thisisprabhat/projectImages/blob/main/elephant%20bush/edit4.png?raw=true"
      ],
      height: 13,
      temMin: 18,
      temmax: 24,
      potDescription: "ceramic pot",
      specialFeatures: [
        'Can be a good bonsai for beginer',
        'thick and woody stem',
        'glossy green',
        'oblong leaves up to two inches long'
      ],
      isFavourite: false,
      isOnCart: false,
      about:
          "Botanical name of Elephant bush is Portulacaria afra. Elephant bush is a small-leaved succulent plant found in South Africa. These succulents commonly have a reddish stem and leaves that are green Elephant Bush small-leaved succulent plant found in South Africa. Elephant Bush commonly has a reddish stem and green leaves.The vibrant green leaves are symbolic of growth and renewal. Jade plants have long been thought to bring good fortune to their owne",
    ),
    PlantDetails(
        plantId: '4',
        name: "Rubber Tree, Rubber Plant, Ficus elastica - Plant",
        description:
            "The rubber plant (Ficus elastica) is a popular ornamental plant from the Ficus genus. For the indoor grower looking for a tree type plant species with attractive foliage, this is an excellent choice.",
        imageUrls: [
          "https://github.com/thisisprabhat/projectImages/blob/main/rubber%20plant/edit1.jpg?raw=true",
          "https://github.com/thisisprabhat/projectImages/blob/main/rubber%20plant/edit2.jpg?raw=true",
        ],
        cost: 14,
        height: 41,
        temMin: 18,
        temmax: 24,
        potDescription: "ceramic pot",
        specialFeatures: ['Foliage', 'Used as an ornamental plant'],
        isFavourite: false,
        isOnCart: false,
        about:
            "These tropical plants generally have thick stems and fleshy, variegated leaves. Gardeners value this small, compact plant for its thick, waxy foliage, ornamental flowers and ease of care. It has broad shiny oval leaves. Leaf size is largest on young plants.\nThe leaves develop inside a reddish sheath at the tip of branches, which looks very attractive. The tree can yield a milky white latex, which has been used to make rubber."),
  ];
}
