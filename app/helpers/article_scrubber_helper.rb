 module ArticleScrubberHelper
  class ArticleScrubber < Rails::Html::PermitScrubber
    def initialize
      super
      self.tags = %w( h1 h2 h3 p div span a)
      self.attributes = %w( class )
    end

    def skip_node?(node)
      node.text?
    end
  end
end

