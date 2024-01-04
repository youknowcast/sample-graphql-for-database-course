# Sample GraphQL Server
This is a sample implementation that provides access to the university database used as an example in the "Database System Concepts (7th Edition)" book via GraphQL.

## Requirement

- Ruby3.3.0
- Sqlite3

## Usage
Please obtain the `sql.db` file from the following site and place it as `storage/sql.db`.
The server can be started with `rails s`.

[https://codex.cs.yale.edu/avi/db-book/university-lab-dir/sqljs.html](https://codex.cs.yale.edu/avi/db-book/university-lab-dir/sqljs.html)

## Caution
This implementation was created by @youknowcast for the purpose of being used as a sample in university lectures.
For inquiries regarding this server implementation or its specifications, please contact @youknowcast.

## For Students Reviewing University Lectures

The revision tagged as `2023-database-course` represents the state of the repository as it was during the time the lectures were conducted in 2023. This tag is intended to help students who are reviewing the course material after the lectures.

Please note that any changes made to the repository after the lectures were conducted are not part of the course material covered in the lectures. These updates may include enhancements, bug fixes, or additional features that are beyond the scope of the course as it was taught(see: Changelog).


# Changelog

## [Unreleased]
- Update to Ruby 3.3.0.
- Fix N+1 query problem by using dataloader.
- Add `StudentById` GraphQL query.

## [2023-database-course] 2023-11-21
- Initial setup of the university database project for the 2023 database course.

