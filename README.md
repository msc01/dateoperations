# DateOperations

⚠️ **NOTICE: This project has moved to Codeberg!**  
Active development, issue tracking, and releases have migrated to **[Codeberg](https://codeberg.org/msc01/dateoperations)**. Please use the new repository for any future contributions, issues, or pull requests.

Different date operations, primarily around business days, based on the [Holidays Gem](https://github.com/holidays/holidays).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dateoperations'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install dateoperations
```

## Examples

```ruby
require 'dateoperations'

DateOperations.country #=> :de

DateOperations.holiday?(Date.new(2016, 10, 3)) #=> true

DateOperations.country = :us #=> :us
DateOperations.holiday?(Date.new(2016, 10, 3)) #=> false

DateOperations.country = :de #=> :de
DateOperations.number_of_business_days_between(Date.new(2016, 10, 1), Date.new(2016, 10, -1)) #=> 20

DateOperations.country = :au #=> :au
DateOperations.number_of_business_days_between(Date.new(2016, 10, 1), Date.new(2016, 10, -1)) #=> 21

DateOperations.weekend?(Date.new(2016, 6, 18)) #=> true
```

## Documentation

- [Official Documentation](http://dateoperations.schwarze-web.de/DateOperations.html)
- [Source Code and Issues on Codeberg](https://codeberg.org/msc01/dateoperations)
