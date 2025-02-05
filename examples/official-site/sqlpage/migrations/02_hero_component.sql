-- Hero
INSERT INTO component(name, icon, description)
VALUES (
        'hero',
        'home',
        'Display a large title and description for your page, with an optional large illustrative image. Useful in your home page, for instance.'
    );
INSERT INTO parameter(
        component,
        name,
        description,
        type,
        top_level,
        optional
    )
SELECT 'hero',
    *
FROM (
        VALUES -- top level
            (
                'title',
                'The title of your page. Will be shown in very large characters at the top.',
                'TEXT',
                TRUE,
                TRUE
            ),
            (
                'description',
                'A description of the page. Displayed below the title, in smaller characters and slightly greyed out.',
                'TEXT',
                TRUE,
                TRUE
            ),
            (
                'image',
                'The URL of an image to display next to the page title.',
                'URL',
                TRUE,
                TRUE
            ),
            (
                'video',
                'The URL of a video to display next to the page title.',
                'URL',
                TRUE,
                TRUE
            ),
            (
                'link',
                'Creates a large "call to action" button below the description, linking to the specified URL.',
                'URL',
                TRUE,
                TRUE
            ),
            (
                'link_text',
                'The text to display in the call to action button. Defaults to "Go".',
                'TEXT',
                TRUE,
                TRUE
            ),
            (
                'title',
                'The name of a single feature section highlighted by this hero.',
                'TEXT',
                FALSE,
                TRUE
            ),
            (
                'description',
                'Description of the feature section.',
                'TEXT',
                FALSE,
                TRUE
            ),
            (
                'icon',
                'Icon of the feature section.',
                'TEXT',
                FALSE,
                TRUE
            )
    ) x;
INSERT INTO example(component, description, properties)
VALUES (
        'hero',
        'The simplest possible hero section',
        json(
            '[{
                "component":"hero",
                "title": "Welcome",
                "description": "This is a very simple site built with SQLPage."
        }]'
        )
    ),
    (
        'hero',
        'A hero with a background image.',
        json(
            '[{
            "component":"hero",
            "title": "SQLPage",
            "description_md": "Documentation for the *SQLPage* low-code web application framework.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Lac_de_Zoug.jpg/640px-Lac_de_Zoug.jpg",
            "link": "/documentation.sql",
            "link_text": "Read Documentation !"},' ||
         '{"title": "Fast", "description": "Pages load instantly, even on slow mobile networks.", "icon": "car", "color": "red", "link": "/"},' ||
         '{"title": "Beautiful", "description": "Uses pre-defined components that look professional.", "icon": "eye", "color": "green", "link": "/"},' ||
         '{"title": "Easy", "description_md": "You can teach yourself enough SQL to use [**SQLPage**](https://sql.ophir.dev) in a weekend.", "icon": "sofa", "color": "blue", "link": "/"}' || ']'
        )
    );