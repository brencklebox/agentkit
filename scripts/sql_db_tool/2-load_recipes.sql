-- Create table
CREATE TABLE RECIPES (
    name TEXT,
    category TEXT,
    food_group TEXT,
    cuisine TEXT,
    dish_tags TEXT,
    complexity TEXT,
    parent_like INTEGER,
    kid_like INTEGER,
    notes TEXT,
    recipe_location TEXT,
    date_last_made DATE,
    start_prep_ahead BOOL,
    ingredients TEXT
);

-- Copy CSV
COPY RECIPES (name, category, food_group, cuisine, dish_tags, complexity, parent_like, kid_like, notes, recipe_location, date_last_made, start_prep_ahead, ingredients)
FROM '/docker-entrypoint-initdb.d/meal_data.csv'
WITH CSV HEADER;