# _Cult Directors API_

---

Returns info about movie directors with a cult following, 10/30/2020

By **AJ Markow**

## Description

An API which allows users to add directors to a rails database, and read, update, and delete records about those directors. Directors will eventually have facts associated with them, but for the current time, just movies are associated with directors. Facts will be associated with both movies and directors.

## Setup/Installation Requirements

- Git clone full repository

- Run rake db: create and Rake db:migrate to set up database backing models.

- Run rails s to launch server at URL/Port localhost:3000.

## API Actions

The following endpoints are available:

/directors

To this endpoint you can make the following request types with this list of parameters:

GET -> Returns an index of all directors

POST -> Adds a new director to the database.

    Parameters Needed
    name - as a string .  Should be the director's full name.
    birthday - in YYYY-MM-DD format. This can be updated later on if it is initially entered incorrectly.
    summary - as a string.  Goes over

/director

PUT -> Updates a specific director's entry in the application.

Get -> Returns JSON about a specific director, including Name, Birthday, List of Movies, and Summary about them.

DELETE -> Removes/destroys a director's entry from the application model and database.

- Movies endpoint is a work in progress. Not functional as of 11/8/2020.

~~/movies

To this endpoint you can make the following request types with this list of parameters:

GET -> Returns an index of all movies

POST -> Adds a new movie to the database.

    Parameters Needed
    title - as a string .  Should be the movie's full name.
    Year-released - in YYYY-MM-DD format. This can be updated later on if it is initially entered incorrectly.
    summary - as a string.  Explains basic plot of movie, thinks that make it unique or a cult classic.

/movie

PUT -> Updates a specific movie's entry in the application.

Get -> Returns JSON about a selected movie, including Title, Year Released, A Summary, and a Director ID.

DELETE -> Removes/destroys a movie's entry from the application model and database.~~

## API Docs

Accessible at https://localhost:3000/api-docs

## Known Bugs

Some integration specs are not currently passing as of most recent commit on 10/30/2020, but otherwise, no known bugs with the API at this time

## API URL

## Support and contact details

Email aj@ajm.codes or contact me at https://ajm.codes

## Technologies Used

PostgreSQL, Rails, Ruby, Rswag, Swagger.

### License

MIT License

Copyright (c) 2020 AJ Markow

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files the Software, to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
