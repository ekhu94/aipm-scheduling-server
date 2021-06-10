# Advanced-IPM Scheduling

[API Endpoint](https://aipm-server.herokuapp.com/api/v1)

## Technologies

- React | React Scheduler | Bootstrap | Material UI [GitHub link here](https://github.com/ekhu94/aipm-scheduling-client)
- Ruby on Rails | PostgreSQL

## Setup and Installation

### Clone the repository from [Github](https://github.com/ekhu94/aipm-scheduling-server).

```bash
git clone git@github.com:ekhu94/noteriety.git
```

### Check your ruby version with `ruby -v`.

You should be switched to version `2.7.1` You can install the correct ruby version using [rbenv](https://github.com/rbenv/rbenv).

```bash
rbenv install 2.7.1
```

### Install dependencies and run migrations

Run [Bundle](https://github.com/rubygems/bundler) and [Yarn](https://github.com/yarnpkg/yarn). This may take a while.

```bash
bundle && yarn
```

Once dependencies are installed, use `rails db:migrate` to generate active record migrations.

### Run rake file

Inside the `db` directory, you will find three `csv` files containing data for each model.

Run the following rake task to import each of these into the PostgreSQL database.

```bash
bundle exec rake import
```

## Serve

Run `rails s` in the terminal to start the server. Alternatively, you can also access the API through the [deployed endpoint](https://aipm-server.herokuapp.com/api/v1/).

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Created By

Erik Huang - https://github.com/ekhu94
