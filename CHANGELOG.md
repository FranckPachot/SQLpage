# CHANGELOG.md

## unreleased

 - Added a new [`sqlite_extensions` configuration parameter](./configuration.md) to load SQLite extensions. This allows many interesting use cases, such as 
      - [using spatialite to build a geographic data application](./examples/make%20a%20geographic%20data%20application%20using%20sqlite%20extensions/),
      - querying CSV data from SQLPage with [vsv](https://github.com/nalgeon/sqlean/blob/main/docs/vsv.md),
      - or building a search engine for your data with [FTS5](https://www.sqlite.org/fts5.html).
 - Breaking: change the order of priority for loading configuration parameters: the environment variables have priority over the configuration file. This makes it easier to tweak the configuration of a SQLPage website when deploying it.
 - Fix the default index page in MySQL. Fixes [#23](https://github.com/lovasoa/SQLpage/issues/23).
 - Add a new [map](https://sql.ophir.dev/documentation.sql?component=map#component) component to display a map with markers on it. Useful to display geographic data from PostGIS or Spatialite.

## 0.7.2 (2023-07-10)

### [SQL components](https://sql.ophir.dev/documentation.sql)

 - New [authentication](https://sql.ophir.dev/documentation.sql?component=authentication#component) component to handle user authentication, and password checking
 - New [redirect](https://sql.ophir.dev/documentation.sql?component=redirect#component) component to stop rendering the current page and redirect the user to another page.
 - The [debug](https://sql.ophir.dev/documentation.sql?component=debug#component) component is now documented
 - Added properties to the [shell](https://sql.ophir.dev/documentation.sql?component=shell#component) component:
    - `css` to add custom CSS to the page
    - `javascript` to add custom Javascript to the page. An example of [how to use it to integrate a react component](https://github.com/lovasoa/SQLpage/tree/main/examples/using%20react%20and%20other%20custom%20scripts%20and%20styles) is available.
    - `footer` to set a message in the footer of the page

### [SQLPage functions](https://sql.ophir.dev/functions.sql)

 - New [`sqlpage.basic_auth_username`](https://sql.ophir.dev/functions.sql?function=basic_auth_username#function) function to get the name of the user logged in with HTTP basic authentication
 - New [`sqlpage.basic_auth_password`](https://sql.ophir.dev/functions.sql?function=basic_auth_password#function) function to get the password of the user logged in with HTTP basic authentication.
 - New [`sqlpage.hash_password`](https://sql.ophir.dev/functions.sql?function=hash_password#function) function to hash a password with the same algorithm as the [authentication](https://sql.ophir.dev/documentation.sql?component=authentication#component) component uses.
 - New [`sqlpage.header`](https://sql.ophir.dev/functions.sql?function=header#function) function to read an HTTP header from the request.
 - New [`sqlpage.random_string`](https://sql.ophir.dev/functions.sql?function=random_string#function) function to generate a random string. Useful to generate session ids.


### Bug fixes

 - Fix a bug where the page style would not load in pages that were not in the root directory: https://github.com/lovasoa/SQLpage/issues/19
 - Fix resources being served with the wrong content type
 - Fix compilation of SQLPage as an AWS lambda function
 - Fixed logging and display of errors, to make them more useful
