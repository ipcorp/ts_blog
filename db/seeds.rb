# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lalo   = Author.create name: "Lalo Landa"
pepito = Author.create name: "Pepe Perez"

post_batman = Post.create(title: "El origen de Batman",
            body:  "Batman (conocido inicialmente como The Bat-Man) es un personaje creado por los estadounidenses Bob Kane y Bill Finger (aunque sólo se reconoce la autoría al primero) y propiedad de DC Comics. Su primera aparición fue en la historia titulada El caso del sindicato químico de la revista Detective Comics n.º 27, lanzada por la editorial National Publications en mayo de 1939.",
            author_id: lalo.id)

post_superman = Post.create(title: "El origen de Superman",
            body:  "Superman (cuyo nombre real es Kal-El y su nombre terrestre es Clark Kent) es un personaje ficticio, un superhéroe de los cómics que aparece en las publicaciones de DC Comics, aunque se le considera un icono cultural de Estados Unidos.1 2 3 4 Creado por el escritor estadounidense Jerry Siegel y el artista canadiense Joe Shuster en 1932, cuando ambos se encontraban viviendo en Cleveland, Ohio; lo vendieron a Detective Comics, Inc. en 1938 por 130 dólares5 y la primera aventura del personaje fue publicada en Action Comics 1 (junio de 1938) para luego aparecer en varias seriales de radio, programas de televisión, películas, tiras periódicas y videojuegos. Con el éxito de sus aventuras, Superman ayudó a crear el género del superhéroe y estableció su primacía dentro del cómic estadounidense.1 La apariencia del personaje es distintiva e icónica: un traje azul, rojo y amarillo, con una capa y un escudo de “S” estilizado en su pecho,6 7 8 escudo que se ha convertido en un símbolo del personaje en todo tipo de medios de comunicación.9",
            author_id: pepito.id)

post_ironman_movie = Post.create(title: "Salio la película de Ironman 3",
            body:  "Iron Man 3 es una película estadounidense sobre el superhéroe Iron Man, de Marvel Comics, producida por Marvel Studios y distribuida por Walt Disney Pictures. Es la secuela de Iron Man (2008) y Iron Man 2 (2010), y es la primera película con la que se dio inicio a la segunda fase del universo cinematográfico de Marvel, siendo el primer gran estreno de la franquicia después de The Avengers (2012) que fue la sexta y última película de la primera fase del ya mencionado universo cinematográfico.",
            author_id: lalo.id)

post_batman.comments.create name: "Alfredo", content: "Muy buen articulo pero le falta desarrollo"
post_superman.comments.create name: "Juan",    content: "Muy interesante"
post_ironman_movie.comments.create name: "Gerardo Kobluk", content: "No me gusto, pésima película"

