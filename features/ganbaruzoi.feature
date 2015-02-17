Feature: Ganbaruzoi

  Scenario: Init new project with ganbaruzoi
    Given I run `middleman init MY_PROJECT -T ganbaruzoi`
    Then the exit status should be 0
    When I cd to "MY_PROJECT"
    Then the following files should exist:
      | Gemfile                                           |
      | config.rb                                         |
      | source/index.html.slim                            |
      | source/layouts/layout.slim                        |
      | source/partial/_header.slim                       |
      | source/partial/_footer.slim                       |
      | source/partial/_script.slim                       |
      | source/assets/stylesheets/style.sass              |
      | source/assets/stylesheets/_mixin.sass             |
      | source/assets/stylesheets/options/_normalize.scss |
      | source/assets/stylesheets/variables/_color.scss   |
      | source/assets/stylesheets/variables/_common.sass  |
      | source/assets/javascripts/all.js.coffee           |
    And a directory named "source/assets/images" should exist

