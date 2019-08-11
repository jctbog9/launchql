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
LaunchQL tests using jasmine-enzyme. To run tests simply run `yarn test` in your terminal.
