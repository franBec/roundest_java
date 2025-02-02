-- Create the table
CREATE TABLE IF NOT EXISTS public.pokemons (
    id SERIAL PRIMARY KEY,           -- Auto-incrementing primary key
    name VARCHAR(255) NOT NULL,      -- Name of the Pokémon
    votes INT DEFAULT 0,             -- Number of votes, default is 0
    sprite_url TEXT NOT NULL         -- URL for the sprite
);

-- Insert data into the table
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Bulbasaur', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Ivysaur', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Venusaur', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Charmander', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Charmeleon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Charizard', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Squirtle', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Wartortle', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Blastoise', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Caterpie', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Metapod', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Butterfree', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Weedle', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Kakuna', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Beedrill', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Pidgey', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Pidgeotto', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Pidgeot', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Rattata', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Raticate', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/20.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Spearow', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/21.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Fearow', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/22.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Ekans', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/23.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Arbok', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/24.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Pikachu', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Raichu', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/26.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Sandshrew', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/27.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Sandslash', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/28.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('NidoranF', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/29.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Nidorina', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/30.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Nidoqueen', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/31.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('NidoranM', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/32.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Nidorino', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/33.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Nidoking', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/34.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Clefairy', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/35.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Clefable', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/36.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Vulpix', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/37.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Ninetales', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/38.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Jigglypuff', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/39.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Wigglytuff', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/40.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Zubat', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/41.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Golbat', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/42.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Oddish', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/43.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Gloom', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/44.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Vileplume', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/45.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Paras', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/46.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Parasect', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/47.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Venonat', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/48.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Venomoth', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/49.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Diglett', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/50.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Dugtrio', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/51.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Meowth', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/52.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Persian', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/53.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Psyduck', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/54.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Golduck', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/55.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Mankey', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/56.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Primeape', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/57.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Growlithe', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/58.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Arcanine', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/59.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Poliwag', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/60.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Poliwhirl', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/61.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Poliwrath', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/62.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Abra', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/63.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Kadabra', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/64.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Alakazam', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/65.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Machop', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/66.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Machoke', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/67.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Machamp', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/68.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Bellsprout', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/69.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Weepinbell', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/70.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Victreebel', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/71.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Tentacool', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/72.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Tentacruel', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/73.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Geodude', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/74.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Graveler', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/75.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Golem', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/76.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Ponyta', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/77.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Rapidash', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/78.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Slowpoke', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/79.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Slowbro', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/80.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Magnemite', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/81.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Magneton', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/82.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Farfetchd', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/83.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Doduo', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/84.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Dodrio', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/85.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Seel', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/86.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Dewgong', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/87.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Grimer', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/88.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Muk', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/89.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Shellder', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/90.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Cloyster', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/91.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Gastly', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/92.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Haunter', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/93.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Gengar', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Onix', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/95.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Drowzee', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/96.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Hypno', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/97.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Krabby', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/98.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Kingler', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/99.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Voltorb', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/100.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Electrode', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/101.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Exeggcute', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/102.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Exeggutor', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/103.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Cubone', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/104.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Marowak', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/105.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Hitmonlee', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/106.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Hitmonchan', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/107.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Lickitung', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/108.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Koffing', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/109.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Weezing', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/110.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Rhyhorn', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/111.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Rhydon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/112.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Chansey', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/113.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Tangela', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/114.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Kangaskhan', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/115.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Horsea', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/116.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Seadra', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/117.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Goldeen', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/118.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Seaking', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/119.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Staryu', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/120.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Starmie', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/121.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('MrMime', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/122.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Scyther', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/123.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Jynx', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/124.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Electabuzz', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/125.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Magmar', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/126.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Pinsir', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/127.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Tauros', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/128.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Magikarp', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/129.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Gyarados', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/130.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Lapras', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/131.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Ditto', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Eevee', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Vaporeon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/134.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Jolteon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/135.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Flareon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/136.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Porygon', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/137.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Omanyte', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/138.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Omastar', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/139.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Kabuto', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/140.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Kabutops', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/141.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Aerodactyl', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/142.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Snorlax', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/143.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Articuno', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/144.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Zapdos', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/145.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Moltres', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/146.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Dratini', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/147.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Dragonair', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/148.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Dragonite', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Mewtwo', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/150.png');
INSERT INTO public.pokemons (name, votes, sprite_url) VALUES ('Mew', 0, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png');
