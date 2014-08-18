require 'middleman-core/templates'

module Middleman
  module Ganbaruzoi

    class Template < Middleman::Templates::Base
      class_option 'css_dir',
        default: 'css',
        desc: 'The path to the css files'
      class_option 'js_dir',
        default: 'js',
        desc: 'The path to the javascript files'
      class_option 'js_core_dir',
        default: 'js/core',
        desc: 'The path to the javascript core files'
      class_option 'js_lib_dir',
        default: 'js/core',
        desc: 'The path to the javascript library files'
      class_option 'images_dir',
        default: 'img',
        desc: 'The path to the image files'

      def self.source_root
        File.join(File.dirname(__FILE__), 'template')
      end

      def build_scaffold
        template 'shared/Gemfile', File.join(location, 'Gemfile')
        template 'shared/config.rb', File.join(location, 'config.rb')
        copy_file 'source/index.html.slim', File.join(location, 'source/index.html.slim')
        copy_file 'source/layouts/layout.slim', File.join(location, 'source/layouts/layout.slim')
        copy_file 'source/layouts/_header.slim', File.join(location, 'source/layouts/_header.slim')
        copy_file 'source/layouts/_footer.slim', File.join(location, 'source/layouts/_footer.slim')
        copy_file 'source/layouts/_script.slim', File.join(location, 'source/layouts/_script.slim')

        empty_directory File.join(location, 'source', options[:css_dir])
        copy_file 'source/css/style.sass', File.join(location, 'source', options[:css_dir], 'style.sass')
        copy_file 'source/css/_grid.sass', File.join(location, 'source', options[:css_dir], '_grid.sass')
        copy_file 'source/css/_media-queries.sass', File.join(location, 'source', options[:css_dir], '_media-queries.sass')
        copy_file 'source/css/_mixin.sass', File.join(location, 'source', options[:css_dir], '_mixin.sass')
        copy_file 'source/css/_module.sass', File.join(location, 'source', options[:css_dir], '_module.sass')
        copy_file 'source/css/_normalize.scss', File.join(location, 'source', options[:css_dir], '_normalize.scss')
        copy_file 'source/css/_variable.sass', File.join(location, 'source', options[:css_dir], '_variable.sass')

        empty_directory File.join(location, 'source', options[:js_dir])
        copy_file 'source/js/all.js.coffee', File.join(location, 'source', options[:js_dir], 'all.js.coffee')
        empty_directory File.join(location, 'source', options[:js_core_dir])
        copy_file 'source/js/core/jquery-1.11.1.min.js', File.join(location, 'source', options[:js_core_dir], 'jquery-1.11.1.min.js')
        copy_file 'source/js/core/jquery-2.1.1.min.js', File.join(location, 'source', options[:js_core_dir], 'jquery-2.1.1.min.js')
        copy_file 'source/js/core/jquery.easing-1.3.min.js', File.join(location, 'source', options[:js_core_dir], 'jquery.easing-1.3.min.js')
        copy_file 'source/js/core/jquery.transit-0.99.min.js', File.join(location, 'source', options[:js_core_dir], 'jquery.transit-0.99.min.js')
        empty_directory File.join(location, 'source', options[:js_lib_dir])
        copy_file 'source/js/lib/cssua.min.js', File.join(location, 'source', options[:js_lib_dir], 'cssua.min.js')
        copy_file 'source/js/lib/modernizr.min.js', File.join(location, 'source', options[:js_lib_dir], 'modernizr.min.js')
        copy_file 'source/js/lib/retina.min.js', File.join(location, 'source', options[:js_lib_dir], 'retina.min.js')

        empty_directory File.join(location, 'source', options[:images_dir])
      end
    end
  end
end

Middleman::Templates.register :ganbaruzoi, Middleman::Ganbaruzoi::Template