# frozen_string_literal: true

require 'simplecov'
SimpleCov.start
SimpleCov.skip '/test/'

require 'minitest/autorun'

require_relative '../lib/dateoperations'
