
# This generates Japanized useful step definithions for Cucumber with Rails.
class MisoGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory 'features/step_definitions'
      %w[webrat_ja_steps.rb web_extra_ja_steps.rb].each do |step|
        m.file step, File.join('features/step_definitions', step)
      end
      m.directory 'features/support'
      m.file 'selectors.rb', File.join('features/support', 'selectors.rb')
    end
  end

protected

  def banner
    "Usage: #{$0} miso"
  end

  def add_options!(opt)
    # do nothing at now
  end
end
