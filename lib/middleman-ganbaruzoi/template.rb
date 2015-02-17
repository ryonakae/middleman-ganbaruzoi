require 'middleman-core/templates'

module Middleman
  module Ganbaruzoi

    class Template < Middleman::Templates::Base
      class_option 'css_dir',
        default: 'assets/stylesheets',
        desc: 'The path to the css files'
      class_option 'js_dir',
        default: 'assets/javascripts',
        desc: 'The path to the javascript files'
      class_option 'images_dir',
        default: 'assets/images',
        desc: 'The path to the image files'
      class_option 'partial_dir',
        default: 'partial',
        desc: 'The path to the partial files'

      def self.source_root
        File.join(File.dirname(__FILE__), 'template')
      end

      def build_scaffold
        template 'shared/Gemfile', File.join(location, 'Gemfile')
        template 'shared/config.rb', File.join(location, 'config.rb')
        copy_file 'source/index.html.slim', File.join(location, 'source/index.html.slim')
        copy_file 'source/layouts/layout.slim', File.join(location, 'source/layouts/layout.slim')

        empty_directory File.join(location, 'source', options[:partial_dir])
        copy_file 'source/partial/_header.slim', File.join(location, '_header.slim')
        copy_file 'source/partial/_footer.slim', File.join(location, '_footer.slim')
        copy_file 'source/partial/_script.slim', File.join(location, '_script.slim')

        empty_directory File.join(location, 'source', options[:css_dir])
        copy_file 'source/assets/stylesheets/style.sass', File.join(location, 'source', options[:css_dir], 'style.sass')
        copy_file 'source/assets/stylesheets/_mixin.sass', File.join(location, 'source', options[:css_dir], '_mixin.sass')
        copy_file 'source/assets/stylesheets/options/_normalize.scss', File.join(location, 'source', options[:css_dir], 'options/_normalize.scss')
        copy_file 'source/assets/stylesheets/variables/_color.scss', File.join(location, 'source', options[:css_dir], 'variables/_color.scss')
        copy_file 'source/assets/stylesheets/variables/_common.scss', File.join(location, 'source', options[:css_dir], 'variables/_common.scss')

        empty_directory File.join(location, 'source', options[:js_dir])
        copy_file 'source/assets/javascripts/all.js.coffee', File.join(location, 'source', options[:js_dir], 'all.js.coffee')

        empty_directory File.join(location, 'source', options[:images_dir])
      end
    end
  end
end

Middleman::Templates.register :ganbaruzoi, Middleman::Ganbaruzoi::Template