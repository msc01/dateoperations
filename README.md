# DateOperations

## Summary
Date Operations

## Synopsis
	DateOperations.[...]
	
## Description
Different date operations, primarily around business days.

## Installation
Download the gem, 
then install it:

	gem install dateoperations.gemspec

## Examples
	require 'dateoperations'
	...
	DateOperations.country #=> :de
	DateOperations.holiday?(Date.new(2016, 10, 3)) #=> true
	DateOperations.country = :us #=> :us
	DateOperations.holiday?(Date.new(2016, 10, 3)) # => false
	DateOperations.number_of_business_days_between(Date.new(2016, 10, 1), Date.new(2016, 10, -1)) #=> 20
	DateOperations.country = :us #=> :us
	DateOperations.number_of_business_days_between(Date.new(2016, 10, 1), Date.new(2016, 10, -1)) #=> 21
