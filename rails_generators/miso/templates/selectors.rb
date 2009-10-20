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
      raise "Can't find mapping from \"#{selector_name}\" to a selector.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(SelectionHelpers)
