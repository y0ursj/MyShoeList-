# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genres = Genre.create (
    [
      {
        name: "Air Jordan 1",
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

    Shoes = Shoe.create! (
      [
        {
        name: "Jordan 1",
        description:"HELLO",
        price:"$160",
        image_url: "https://www.stadiumgoods.com/cdn-cgi/image/fit%3Dcontain%2Cformat%3Dauto%2Cwidth%3D2000/media/Fcatalog/product/3/1/317111-062_1.png",
        genre_id: 1
        }
        
      ]
    )


