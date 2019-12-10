# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shoe.destroy_all
Genre.destroy_all
User.destroy_all

david = User.create!(username: "BigJohn97", password: "123456")

genres = Genre.create! (
    [
      {
        name: "Air Jordan I",
        description: "The Air Jordan 1 was first produced for Michael Jordan in 1984. It was designed by Peter C. Moore.The red and black colorway of the Nike Air Ship, the prototype for the Jordan I, was later outlawed by then-NBA Commissioner David Stern for having very little white on them (this rule, known as the '51 percent' rule, was repealed in the late 2000s.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/5/7/575441-101_1_1.png"
      },
      {
        name: "Air Jordan II",
        description: "The success of the Air Jordan I encouraged Nike to release a new Air Jordan in 1986 for the new basketball season. Designed by Peter Moore and Bruce Kilgore, the original Air Jordan II was unique in that it was made in Italy. The Air Jordan II introduced better cushioning with a polyurethane midsole and a full length encapsulated Nike air bubble for maximum comfort. The Air Jordan II was the first Jordan not to have the Nike swoosh on the upper. ",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/a/i/air_jordan_2_retro_385475-102_1_1.png"
      },
      {
        name: "Air Jordan III",
        description: "The Air Jordan III was designed by Tinker Hatfield who works for Nike as a designer for stores and offices. By that time Michael Jordan was ready to leave Nike, but the Jordan III changed his mind. It was the first Air Jordan to feature a visible air unit on the heel, the new Jumpman logo, an elephant print trim and tumbled leather to give it a luxury look.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/8/5/854262_001_1.png"
      },
      {
        name: " Air Jordan IV",
        description:"In 1989, Nike released the Air Jordan IV to the public. Designed by Tinker Hatfield, it was the first Air Jordan released on the global market. It had four colorways: White/Black, Black/Cement Grey, White/Fire Red-Black, and Off White/Military Blue.Nike featured director and actor Spike Lee in ads for the AJ IV. Lee had featured the shoe in his movie Do The Right Thing.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/0/308497_110_1_1.png"
      },
      {
        name: "Air Jordan V ",
        description:"The Air Jordan V was released in February 1990, designed by Tinker Hatfield again. Some elements were carried over from the Air Jordan IV, but overall they were a completely new look. Some of its new features include a reflective tongue (with a unique protruding design and look), translucent rubber soles and lace locks.[6] The soles gave them a new look, but yellowed over time when exposed to moisture and were the source of many complaints early on due to the slippery nature of the soles when collecting dust.Hatfield is believed to have drawn inspiration for the Air Jordan V from World War II fighter planes, which was most notably visible in the shark teeth shapes on the midsole.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/1/3/136027_100_1.png"
      },
      {
        name: "Air Jordan VI",
        description:"The Air Jordan VI had a new design by Tinker Hatfield and released in 1991. The Original 5 colorways were: Black/Infrared, White/Infrared, White/Carmine-Black, White/Sport Blue, and Off White/Maroon. The Air Jordan VI introduced a reinforcement around the toe, It had two holes in the tongue, and a molded heel tab on the back of the sneaker (demanded by Jordan so it wouldn't hit his Achilles tendon). Like the Air Jordan V, this sneaker also had translucent rubber soles. The Air Jordan VI was the last Air Jordan to feature the Nike Air logo on it.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/8/384664-060_1.png"
      },
      {
        name: "Air Jordan VII",
        description:"The Air Jordan VII was released in 1992 with a new design by Tinker Hatfield. This shoe introduced the huarache technology which allowed the shoes to better conform to the user's foot. A few things were no longer featured on the new model, such as the visible air sole, the Nike Air logo, and the translucent soles. This was the first Air-Jordan in the line that did not have any distinctive 'Nike Air' on the outer portions of the shoe. The 'Nike Air' branding was still on the in-soles, which Air Jordans VIII-XI also had. The VIIs were also known for a successful ad campaign in which Bugs Bunny appeared alongside Michael Jordan to market the shoes.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/0/304775-104_1.png"
      },
      {
        name: "Air Jordan VIII",
        description:"The Air Jordan VIII was released to coincide with the 1992–1993 NBA season. The eighth model of the Air Jordan was noticeably heavier than its predecessors. The Air Jordan VIII model became known as the 'Punisher' because of the advanced basketball ankle support and enhanced traction. This shoe contains a full length air sole, polyurethane midsole, polycarbonate shank plate, and two crossover straps (for added support and more custom fit).",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/0/305381_103_1_1.png"
      },
      {
        name: "Air Jordan IX",
        description:"Originally released in November 1993, the Air Jordan IX model was the first model released after Michael Jordan's retirement. Jordan never played an NBA season wearing these shoes. This model was inspired by baseball cleats that Jordan wore when playing minor-league baseball.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/0/302370-101_1.png"
    },
      {
        name: "Air Jordan X",
        description:"This was released in 1995 in eight different colors, Black/grey, varsity-black, off-white/black/varsity red*, Powder Blue (worn by University of North Carolina at Chapel Hill's Men's and Women's basketball teams), Orlando Magic*, New York Knicks*, Seattle SuperSonics*, and Sacramento Kings*. It was the first Air Jordan to feature a lightweight Phylon midsole. The shoe also featured all of Michael Jordan's accomplishments up to his first retirement on the outsole.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/1/310805-101_1.png"
      },
      {
        name: "Air Jordan XI",
        description:"This model was designed by Tinker Hatfield. When the shoe launched, Michael Jordan (retired from basketball by then) was with the Birmingham Barons in baseball's minor baseball leagues. Hatfield designed the sneaker waiting for Jordan to come back and hoping he would play in them.The ballistic mesh upper of the sneaker was meant to make the Air Jordan XI lighter and more durable than past sneakers.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/7/378037_100_1.png"
      },
      {
        name: "Air Jordan XII",
        description:"The Air Jordan XII was inspired by Nisshoki (the Japanese flag), and a 19th-century women dress boot. However, featuring gold-plated steel lace loops, embossed lizard skin pattern and a full length zoom air unit with a carbon fiber shank plate, this model set a new direction in style and technology in shoe design. Though not as light weight as previous models, the construction and firmness of the shoe is widely considered to be the most durable and sturdy shoes from the Air Jordan line. ",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/a/i/air_jordan_12_retro_130690-125_1.png"
      },
      {
        name: "Air Jordan XIII",
        description:"In 1997, Air Jordan XIII's were released to the public. This model was known for its cushioning along the feet, designed by Hatfield. The Black Panther was the inspiration for the Air Jordan XIII, the sole resembles the pads on a panther's paw. But also the panther is the hologram on the back of the shoe which imitates a panther's eyes in the dark when light is shined at them",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/4/1/414571-004_1.png"
      },
      {
        name: "Air Jordan XIV",
        description:"The Air Jordan XIV co-styled by Hatfield and Mark Smith was made race ready and equipped with the Jordan Jumpman insignia on a Ferrari shaped badge. In addition, these shoes include breathable air ducts on the outer sole. The color scheme of predominant black accentuated with red was nicknamed 'The Last Shot' because Michael Jordan wore them as he hit the game winning shot over Bryon Russell, of the Utah Jazz, in his final game with the Chicago Bulls in the 1998 NBA Finals.",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/4/8/487471-101_1.png"
      },
      {
        name: "Air Jordan XV",
        description:"This was the first shoe after Jordan's retirement. The design of the XV's originated from the aircraft prototype X-15, which was developed by NASA during the 1950s. The sides of the XV were made from woven kevlar fibre. The Jordan XV's were the first Air Jordans to be negatively received in a while (the last being the Air Jordan 2's), because the quality on the Jordan shoes was bad",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/1/317111-062_1.png"
      }

    ])

    shoes = Shoe.create! (
      [
        {
        name: "Jordan 1 Union",
        description:"The Union x Air Jordan 1 Storm Blue is one of two special editions of Michael Jordan's first signature shoe from the Los Angeles menswear boutique.",
        price:190.00,
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/B/V/BV1300-146_1_1.png",
        genres: genres[0],
        user: david
        },
        {
        name: "Jordan 2 Don Cs",
        description:"The Air Jordan 2’s second ultra-premium redesign by Don C, this Beach colorway features a quilted buttery-soft leather upper in sandy tan.",
        price:200.00,
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/8/3/839604_250_1.png",
        genres: genres[1],
        user: david
        },
        {
          name: "Jordan 3 Black Cement",
          description:"Jordan 3 Black/Cement has left many Jordan collectors fiending for a fresh pair, so demand was higher than ever when these dropped on MJ’s birthday",
          price:200.00,
          image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/8/5/854262_001_1.png",
          genres: genres[2],
          user: david
          },
          {
            name: "Jordan 4 Cool Greys",
            description:"The upper features a Cool Grey synthetic nubuck base that covers the toe, mid-panel, and heel. Tonal elements come into play as the mesh found on both the tongue and mid-panel offers subtle contrasting against the surrounding nubuck material. ",
            price:200.00,
            image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/B/Q/BQ7669-007_1.png",
            genres: genres[3],
            user: david
            },
            {
              name: "Jordan 5 Grapes",
              description:"Grape Colorway",
              price:200.00,
              image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/1/3/136027-108_1.png",
              genres: genres[4],
              user: david
              },
              {
                name: "Jordan 6 Travis Scott",
                description:"The Travis Scott x Air Jordan 6 marks the third time the world famous rapper and Jordan Brand have partnered on an Air Jordan. ",
                price:200.00,
                image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/C/N/CN1084-200_1.png",
                genres: genres[5],
                user: david
                },
                {
                name: "Jordan 7 Olympic",
                description:"The Travis Scott x Air Jordan 6 marks the third time the world famous rapper and Jordan Brand have partnered on an Air Jordan. ",
                price:190.00,
                image_url: "The original and iconic colorway worn by Michael Jordan during the 1992 Olympics, this Air Jordan 7 features a white and silver upper with patriotic accents. No Air Jordan 7 collection can be complete without a pair of this historic colorway.",
                genres: genres[6],
                user: david
                },
                {
                name: "Jordan 8 Playoffs",
                description:"Whether you want to call it the “Road”, “Bred”, of “Playoffs” colorway, this is the iconic original colorway of Michael Jordan’s strapped-up 8th signature shoe. MJ wore this black and red colorway during his and the Bulls championship run in 1993 to complete their first three-peat.",
                price:200.00,
                image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/0/305381-061_1.png",
                genres: genres[7],
                user: david
                },
                {
                name: "Jordan 9 Olive",
                description:"A famed original colorway of the Air Jordan 9, this distinct color scheme features a black and olive upper to make for one of the more unusual, but still appealing, OG Air Jordan colorways.",
                price:200.00,
                image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/0/302370-020_1.png",
                genres: genres[8],
                user: david
                },
                {
                  name: "Jordan 10 Orlando",
                  description:"A famed original colorway of the Air Jordan 9, this distinct color scheme features a black and olive upper to make for one of the more unusual, but still appealing, OG Air Jordan colorways.",
                  price:190.00,
                  image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/1/310805-108_1.png",
                  genres: genres[9],
                  user: david
                  },
                  {
                    name: "Jordan 11 Bred",
                    description:"Worn on court by Michael Jordan throughout the 1996 NBA Playoffs en route to the championship and NBA Finals MVP honors, the shoe is just as historic as it is aesthetically pleasing.",
                    price:200.00,
                    image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/3/7/378039-010_1.png",
                    genres: genres[10],
                    user: david
                    },
                    {
                      name: "Jordan 12 Flu-Game",
                      description:"In 2016 the beloved Air Jordan 12 “Flu Game” made a triumphant return in the iconic black and red color scheme that Michael Jordan made legendary in 1997.",
                      price:200.00,
                      image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/catalog/product/1/5/153265-002_1_1.png",
                      genres: genres[11],
                      user: david
                      },
                      {
                        name: "Jordan 13 Flint",
                        description:"This iteration of the Air Jordan 13 Retro is a little more muted than the usual colorways. Featuring an all white base, Nike added french blue panels on the sides and flint grey leather on the outsole. The soles are white to match the uppers and tongue.",
                        price:220.00,
                        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D1440/media/catalog/product/4/1/414574_401_1.png",
                        genres: genres[12],
                        user: david
                        },
                        {
                          name: "Jordan 14 Last Shot",
                          description:"From the original 1999 release of the Air Jordan 14, this black and red colorway is by far the most iconic thanks to Michael Jordan wearing them for his famous “Last Shot” that sealed the deal for the Chicago Bulls' second three-peat in the 1998 NBA Finals.",
                          price:200.00,
                          image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D1440/media/catalog/product/3/1/311832-010_1.png",
                          genres: genres[13],
                          user: david
                          },
                          {
                            name: "Jordan 15 Doernbecher",
                            description:"The Doernbecher x Air Jordan 15 is a member of the 2018 Doernbecher Freestyle Collection by Nike. The annual collection of sneakers designed by patients at the Doernbecher Children’s Hospital in Portland, Oregon was highlighted in 2018 by this Air Jordan 15 that was designed by Donovan Dinneen.",
                            price:200.00,
                            image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D1440/media/catalog/product/B/V/BV7107-017_1.png",
                            genres: genre[14],
                            user: david
                            },
                          ])


