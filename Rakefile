# frozen_string_literal: true

require('rubocop/rake_task')
require('minitest/test_task')

Minitest::TestTask.create do |t|
  t.libs = %w[.]
  t.test_globs = ENV.fetch('TEST', '**/*_test.rb')
end

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = %w[--fail-level E --autocorrect]
end

task(default: %i[test])
