INSERT INTO component (name, description, icon, introduced_in_version)
VALUES (
        'map',
        'Displays a map with markers on it. Useful in combination with PostgreSQL''s PostGIS or SQLite''s spatialite.',
        'map',
        '0.8.0'
    );
-- Insert the parameters for the http_header component into the parameter table
INSERT INTO parameter (
        component,
        name,
        description,
        type,
        top_level,
        optional
    )
VALUES (
        'map',
        'latitude',
        'Latitude of the center of the map.',
        'REAL',
        TRUE,
        TRUE
    ),
    (
        'map',
        'longitude',
        'Longitude of the center of the map.',
        'REAL',
        TRUE,
        TRUE
    ),
    (
        'map',
        'latitude',
        'Latitude of the marker',
        'REAL',
        FALSE,
        FALSE
    ),
        (
        'map',
        'longitude',
        'Longitude of the marker',
        'REAL',
        FALSE,
        FALSE
    ),
    (
        'map',
        'title',
        'Title of the marker',
        'TEXT',
        FALSE,
        TRUE
    ),
    (
        'map',
        'description_md',
        'Description of the marker, in markdown',
        'TEXT',
        FALSE,
        TRUE
    );
-- Insert an example usage of the http_header component into the example table
INSERT INTO example (component, description, properties)
VALUES (
        'map',
        'Map of Paris',
        JSON('[
            { "component": "map", "title": "Paris" },
            { "latitude": 48.8566, "longitude": 2.3522, "title": "Paris", "description_md": "The capital of France." }
        ]')

    );