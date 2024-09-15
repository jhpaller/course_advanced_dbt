# Welcome to the Bingeflix Data Team

### WEEK 3 project answers
#### Task 1
- I removed the duplicated tests for Sources that matched the same tests applied to the staging models
- Primary reasons are
  - Even if there are multiple intermediary transforms I will use the staging models, so I won't end up in a position of missing an upstream test that exposes downstream models to unexpected data
  - On the off chance that meaningful transformations or mistakes occur in staging models I want that to be the place where tests are performed instead of the source

#### Task 2
- created `assert_valid_name.sql` rather than `assert_valid_event_name.sql` in order to have it be more generic.
- extended the test slightly to cover the simple case and the edge case in the same test
- test applied to `stg_bingeflix__events.event_name`

#### Task 3
- added `test_age_at_acquisition_is_correct` to `dim_users.yml`

#### Task 4
- skipped due to time constraints

### Coding Conventions
#### General
- Use UPPER case for all keywords
- Use trailing commas in SELECT statements
- Use Snowflake dialect
- Use consistent style in GROUP BY and ORDER BY (either names or numbers, not both)


### Testing Conventions
#### Models
- The primary key column must have not_null and unique schema tests.
- All boolean columns must have an accepted_values schema test. The accepted values are true and false.
- Columns that contain category values must have an accepted_values schema test.
- Columns that should never be null must have a not_null schema test.
- Columns that should be unique must have a unique schema test.
- Where possible, use schema tests from the dbt_utils or dbt_expectations packages to perform extra verification.
