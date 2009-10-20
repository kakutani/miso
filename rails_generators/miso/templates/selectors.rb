module SelectionHelpers
  # Maps a name to a selector. Used by the
  #
  #   Then /^I should see "([^\"]*)" within "([^\"]*)"$/ do |text, selector|
  #
  # step definition and variants in webrat_steps.rb
  #
  def selector_for(selector_name)
    case selector_name

    when /top heading on the page/
      'body h1'

    # Add more mappings here.
    # Here is a more fancy example:
    #
    # TODO: gimme fancy example :<

    else
      selector_name
    end
  end
end

World(SelectionHelpers)
