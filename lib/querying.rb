def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "select books.title, books.year from books where series_id = 1 order by books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "select characters.name, characters.motto from characters order by length(motto) desc limit 1"
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "select species, count(species) from characters group by species order by count(species) desc limit 1 "
end
# create table series (
#   id INTEGER PRIMARY KEY,
#   title text,
#   author text,
#   author_id text,
#   subgenre_id text
# );
#
# create table subgenres(
#   id INTEGER PRIMARY KEY,
#   name text
# );
#
# create table authors(
#   id INTEGER PRIMARY KEY,
#   name text
# );
#
# create table books(
#   id INTEGER PRIMARY KEY,
#   title text,
#   year integer,
#   series_id integer
# );
#
# create table characters(
#   id INTEGER PRIMARY KEY,
#   name text,
#   motto text,
#   species text,
#   author_id integer,
#   series_id integer
# );
#
# create table character_books (
#   id INTEGER PRIMARY KEY,
#   book_id integer,
#   character_id integer
# );
def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "select authors.name, subgenres.name from authors inner join series ON series.author_id = authors.id INNER JOIN subgenres on subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
   "select series.title from series inner join characters where series.id == characters.series_id group by species order by count(species) limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "select characters.name, count(character_books.character_id) from characters inner join character_books where characters.id == character_books.character_id group by characters.name order by count(character_books.character_id) desc"

end
