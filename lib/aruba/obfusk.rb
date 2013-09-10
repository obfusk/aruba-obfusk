# --                                                            ; {{{1
#
# File        : aruba/obfusk.rb
# Maintainer  : Felix C. Stegerman <flx@obfusk.net>
# Date        : 2013-09-10
#
# Copyright   : Copyright (C) 2013  Felix C. Stegerman
# Licence     : GPLv2 or EPLv1
#
# --                                                            ; }}}1

require 'aruba/cucumber'

module Aruba; module Obfusk; module Extensions

  # last process
  def last_process
    processes.last[-1]
  end

  # process $VERBOSE; set @announce_*
  def process_VERBOSE                                           # {{{1
    @verbose = ENV['VERBOSE'] == 'yes'
    if @verbose
      @announce_stdout  = true
      @announce_stderr  = true
      @announce_cmd     = true
      @announce_dir     = true
      @announce_env     = true
    end
  end                                                           # }}}1

end; end; end

World(Aruba::Obfusk::Extensions)

When(/^I run `([^`]*)` with:$/) do |cmd,opts|
  run_simple unescape(([cmd] + opts.raw.flatten)*' '), false
end

When(/^I run `([^`]*)` with bash$/) do |cmd|
  run_simple "bash -c \"#{cmd}\"", false
end

When(/^I sleep (\d+) seconds?$/) do |secs|
  sleep secs.to_i
end

Then(/^it should succeed$/) do
  assert_success true
end

Then(/^it should fail$/) do
  assert_success false
end

Then(/^the last stdout should be:$/) do |expected|
  assert_exact_output expected, last_process.stdout
end

Then(/^the last stderr should be:$/) do |expected|
  assert_exact_output expected, last_process.stderr
end

Then(/^the last stdout should match:$/) do |expected|
  assert_matching_output expected, last_process.stdout
end

Then(/^the last stderr should match:$/) do |expected|
  assert_matching_output expected, last_process.stderr
end

# vim: set tw=70 sw=2 sts=2 et fdm=marker :
