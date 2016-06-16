# DateOperations

## Summary
Date Operations

## Synopsis
	DateOperations.[...]
	
## Description
Different date operations, primarily around business days

## Installation
Download the gem, 
then install it:

	gem install dateoperations.gemspec

## Example
	require 'dateoperations'
	DateOperations.country # => :de
	DateOperations.holiday?(Date.new(2016, 12, 24)) # => true
	
## TODO
Following points need to be taken care of:

* ...
	