import pdb
from models.album import Album
from models.artist import Artist
import repositories.album_repository as album_repository
import repositories.artist_repository as artist_repository  


album_repository.delete_all()
artist_repository.delete_all()

artist1 = Artist("Biggie Smalls")
artist_repository.save(artist1)
artist2 = Artist("Tupac")
artist_repository.save(artist2)

album1 = Album("Ready To Die", "Hip-Hop", "Biggie Smalls")
album_repository.save(album1)
album2 = Album("All Eyez On Me", "Hip-Hop", "Tupac")
album_repository.save(album2)

returned = artist_repository.select(1)
returned = album_repository.select(1)

result = artist_repository.select_all()
result = album_repository.select_all()

pdb.set_trace()