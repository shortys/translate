class TranslateGenerator < Rails::Generators::Base
	source_root File.expand_path("../../templates", __FILE__)
  def create_initializer_file
  	copy_file "translate.rb", "config/initializers/translate.rb"
  end
end