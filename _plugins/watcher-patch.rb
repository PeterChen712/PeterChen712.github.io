require 'jekyll-watch'

module Jekyll
    module Watcher
        extend self

        alias_method :original_listen, :listen_ignore_paths

        def listen_ignore_paths(options)
            original_listen_ignore_paths(options) + [%r!^_site/!]
        end
    end
end