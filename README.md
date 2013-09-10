[]: {{{1

    File        : README.md
    Maintainer  : Felix C. Stegerman <flx@obfusk.net>
    Date        : 2013-09-10

    Copyright   : Copyright (C) 2013  Felix C. Stegerman
    Version     : v0.0.1.SNAPSHOT

[]: }}}1

## Description
[]: {{{1

  aruba-obfusk - aruba extensions

  ...

[]: }}}1

## Examples

[]: {{{1

```
Feature:
  Scenario Outline:
    When  I run `some command` with:
      | --foo | <foo> |
      | --bar | <bar> |
    Then  it should succeed
    And   the last stdout should match:
      """
      \A==> Doing something \.\.\.
      ==> Done\.
      \Z
      """
    When  I run `some <command>`
    Then  it should fail
    Examples:
      | foo   | bar   | command |
      | one   | two   | three   |
      | four  | five  | six     |
```

[]: }}}1

[]: {{{1

```
Feature:
  Scenario:
    When  I run `echo $FOO` with bash
    Then  it should succeed
    And   the last stdout should match:
      """
      \Afoo bar baz
      \Z
      """
```

[]: }}}1

[]: {{{1

```
Feature:
  Scenario:
    When  I run `some command`
    Then  it should succeed
    And   the last stdout should be:
      """
      ...

      """
```

[]: }}}1

[]: {{{1

```
Feature:
  Scenario:
    When  I run `some failing command`
    Then  the exit status should be 1
    And   the last stderr should be:
      """
      Error: oops

      """
```

[]: }}}1

```
Feature:
  Scenario:
    When  ...
    And   I sleep 5 seconds
    Then  ...
```

## Specs & Docs
[]: {{{1

    $ rake spec # TODO
    $ rake docs

[]: }}}1

## TODO
[]: {{{1

  * more specs/docs?
  * ...

[]: }}}1

## License
[]: {{{1

  GPLv2 [1] or EPLv1 [2].

[]: }}}1

## References
[]: {{{1

  [1] GNU General Public License, version 2
  --- http://www.opensource.org/licenses/GPL-2.0

  [2] Eclipse Public License, version 1
  --- http://www.opensource.org/licenses/EPL-1.0

[]: }}}1

[]: ! ( vim: set tw=70 sw=2 sts=2 et fdm=marker : )
