class PlanetInfo{
  final int position;
  final String name;
  final String iconImage;
  final String modal;
  final String description;
  final List<String> images;

  PlanetInfo(
      this.position,{
        required this.name,
        required this.iconImage,
        required this.modal,
        required this.description,
        required this.images
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Mercury',
      iconImage: 'assets/mercury.png',
      modal: 'assets/jupiter.glb',
      description:
      "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter. Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system – that title belongs to nearby Venus, thanks to its dense atmosphere. Because of Mercury's elliptical – egg-shaped – orbit, and sluggish rotation, the Sun appears to rise briefly, set, and rise again from some parts of the planet's surface. The same thing happens in reverse at sunset.",
      images: [
        'https://solarsystem.nasa.gov/system/resources/detail_files/2266_PIA19216_1280.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/773_PIA16388_detail.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/523_PIA19282.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/443_MercurySouthern1200w.jpg'
      ]),
  PlanetInfo(2,
      name: 'Venus',
      iconImage: 'assets/venus.png',
      modal: 'assets/jupiter.glb',
      description:
      "Venus is the second planet from the Sun and is Earth’s closest planetary neighbor. It’s one of the four inner, terrestrial (or rocky) planets, and it’s often called Earth’s twin because it’s similar in size and density. These are not identical twins, however – there are radical differences between the two worlds. Venus has a thick, toxic atmosphere filled with carbon dioxide and it’s perpetually shrouded in thick, yellowish clouds of sulfuric acid that trap heat, causing a runaway greenhouse effect. It’s the hottest planet in our solar system, even though Mercury is closer to the Sun. Surface temperatures on Venus are about 900 degrees Fahrenheit (475 degrees Celsius) – hot enough to melt lead. The surface is a rusty color and it’s peppered with intensely crunched mountains and thousands of large volcanoes. Scientists think it’s possible some volcanoes are still active. Venus has crushing air pressure at its surface – more than 90 times that of Earth – similar to the pressure you'd encounter a mile below the ocean on Earth.",
      images: [
        'https://solarsystem.nasa.gov/system/resources/detail_files/2524_PIA23791.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/547_PIA00479.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/544_opo9516g.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/533_PIA00072.jpg',
      ]),
  PlanetInfo(3,
      name: 'Earth',
      iconImage: 'assets/earth.png',
      modal: 'assets/jupiter.glb',
      description:
      "Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things. While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal. The name Earth is at least 1,000 years old. All of the planets, except for Earth, were named after Greek and Roman gods and goddesses. However, the name Earth is a Germanic word, which simply means the ground.",
      images: [
        'https://solarsystem.nasa.gov/system/resources/detail_files/2408_iss059e019043_med.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/2332_earth_dscovr_apr19_med.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/2337_as11-44-6549_med.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/834_12-aster_la_detail.jpg'
      ]),
  PlanetInfo(4,
      name: 'Mars',
      iconImage: 'assets/mars.png',
      modal: 'assets/jupiter.glb',
      description:
      "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape. NASA currently has two rovers (Curiosity and Perseverance), one lander (InSight), and one helicopter (Ingenuity) exploring the surface of Mars. Perseverance rover – the largest, most advanced rover NASA has sent to another world – touched down on Mars on Feb. 18, 2021, after a 203-day journey traversing 293 million miles (472 million kilometers). The Ingenuity helicopter rode to Mars attached to the belly of Perseverance. Perseverance is one of three spacecraft that arrived at Mars in 2021. The Hope orbiter from the United Arab Emirates arrived on Feb. 9, 2021. China’s Tianwen-1 mission arrived on Feb. 10, 2021, and includes an orbiter, a lander, and a rover. Europe and India also have spacecraft studying Mars from orbit. In May 2021, China became the second nation to ever land successfully on Mars when its Zhurong Mars rover touched down. An international fleet of eight orbiters is studying the Red Planet from above including three NASA orbiters: 2001 Mars Odyssey, Mars Reconnaissance Orbiter, and MAVEN. These robotic explorers have found lots of evidence that Mars was much wetter and warmer, with a thicker atmosphere, billions of years ago.",
      images: [
        'https://solarsystem.nasa.gov/system/resources/detail_files/2511_ESP_062839_1740_1200.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/2436_PIA23203_med.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/2620_PIA24430_Perseverance_First_View-800.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/2669_Curiosity_Postcard_pia24937-800x600.jpg',
      ]),
  PlanetInfo(5,
      name: 'Jupiter',
      iconImage: 'assets/jupiter.png',
      modal: 'assets/jupiter.glb',
      description:
      "Jupiter has a long history of surprising scientists – all the way back to 1610 when Galileo Galilei found the first moons beyond Earth. That discovery changed the way we see the universe. Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter's familiar stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. Jupiter’s iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years. One spacecraft – NASA's Juno orbiter – is currently exploring this giant world.",
      images: [
        'https://solarsystem.nasa.gov/system/resources/detail_files/2665_Galileo_Ganymede-800x600.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/2486_stsci-h-p1936a_1800.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/811_PIA03456.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/812_PIA00080.jpg',
      ]),
  PlanetInfo(6,
      name: 'Saturn',
      iconImage: 'assets/saturn.png',
      modal: 'assets/jupiter.glb',
      description:
      "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Adorned with thousands of beautiful ringlets, Saturn is unique among the planets. It is not the only planet to have rings – made of chunks of ice and rock – but none are as spectacular or as complicated as Saturn's. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium.",
      images: [
        'https://solarsystem.nasa.gov/system/resources/detail_files/2490_stsci-h-p1943a-f_1200.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/663_PIA01364.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/689_5678_IMG004678.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/870_PIA08119.jpg',
      ]),
  PlanetInfo(7,
      name: 'Uranus',
      iconImage: 'assets/uranus.png',
      modal: 'assets/jupiter.glb',
      description:
      "Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star. It was two years later that the object was universally accepted as a new planet, in part because of observations by astronomer Johann Elert Bode. Herschel tried unsuccessfully to name his discovery Georgium Sidus after King George III. Instead, the scientific community accepted Bode's suggestion to name it Uranus, the Greek god of the sky, as suggested by Bode.",
      images: [
        'https://solarsystem.nasa.gov/system/resources/detail_files/599_PIA18182.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/453_Uranus-rings.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/450_PIA01360.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/452_PIA01279.jpg',
      ]),
  PlanetInfo(8,
      name: 'Neptune',
      iconImage: 'assets/neptune.png',
      modal: 'assets/jupiter.glb',
      description:
      "Dark, cold, and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system. More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye and the first predicted by mathematics before its discovery. In 2011 Neptune completed its first 165-year orbit since its discovery in 1846. NASA's Voyager 2 is the only spacecraft to have visited Neptune up close. It flew past in 1989 on its way out of the solar system.",
      images: [
        'https://solarsystem.nasa.gov/system/resources/detail_files/611_PIA01492.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/614_PIA01997.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/609_PIA01285.jpg',
        'https://solarsystem.nasa.gov/system/resources/detail_files/232_PIA02234.jpg',
      ]),
];