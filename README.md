# LaunchQL

LaunchQL is a starting repo for practice using graphQL. It was generated using Launch Academy's `make_it_so` gem.

## <u>Dependencies</u>:
`ruby version 2.4.5`
`node`
`gem install bundler`
`gem install rails`

## <u>Setup</u>:
First clone the repo. 
After succesfully cloning run the following commands in sequence:
```
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed

yarn install
bundle
```

## <u>How to start</u>:
Run the following commands, each in seperate terminal windows, after successful setup:
```
yarn start
rails s
```

## <u>Testing</u>:
LaunchQL tests using rspec and jasmine-enzyme. 
To run backend tests enter `rspec` in your terminal.
To run frontend tests enter `yarn test` in your terminal.

## <u>Example Queries</u>:

All Users Query
```
query {
  users {
    id
    first_name
    last_name
    email
  }
}
```

Specific User Query
```
query {
  user(id: 1) {
    id
    first_name
    last_name
    email
  }
}
```

Pets Query
```
query {
  pets {
    name
    age
    species
  }
}
```

Specific Pet Query
```
query {
  pet(id: 2) {
    name
    age
    species
  }
}
```