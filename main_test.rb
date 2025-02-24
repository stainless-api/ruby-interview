# frozen_string_literal: true

require('minitest/autorun')
require('minitest/focus')

def add(lhs, rhs)
  lhs + rhs
end

describe('add') do
  #                                                    #
  # for your convenience:                              #
  #                                                    #
  # when a test is prefaced with `focus` in line above #
  # all other tests are **SKIPPED**                    #
  #                                                    #
  focus
  it('1 + 1') do
    assert_equal(2, add(1, 1))
  end

  it('non-focused test should not run, until `focus` is removed') do
    assert_equal(2.0, add(1.0, 1.0))
  end
end
