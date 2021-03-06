# DateOperations

[![](https://codescene.io/projects/5634/status.svg) Get more details at **codescene.io**.](https://codescene.io/projects/5634/jobs/latest-successful/results)

## Overview

Different date operations, primarily around business days; based on the [Holidays Gem](https://github.com/holidays/holidays).

## Synopsis
	DateOperations.[...]
	
## Installation
Download the gem, then install it:

	gem install dateoperations.gemspec

## Examples
	require 'dateoperations'
	...
	DateOperations.country #=> :de
	
	DateOperations.holiday?(Date.new(2016, 10, 3)) #=> true
	
	DateOperations.country = :us #=> :us
	DateOperations.holiday?(Date.new(2016, 10, 3)) # => false
	
	DateOperations.country = :de #=> :de
	DateOperations.number_of_business_days_between(Date.new(2016, 10, 1), Date.new(2016, 10, -1)) #=> 20
	
	DateOperations.country = :au #=> :au
	DateOperations.number_of_business_days_between(Date.new(2016, 10, 1), Date.new(2016, 10, -1)) #=> 21
	
	DateOperations.weekend?(DateOperations.weekend?(Date.new(2016, 6, 18)) #=> true

## Documentation
[Documentation](http://dateoperations.schwarze-web.de/DateOperations.html)