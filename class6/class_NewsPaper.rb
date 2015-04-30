class NewsPaper
    attr_accessor :stories

    def self.title=(value)
      @@title=value
    end

    def self.title
      @@title
    end

    def self.generate_random_story
      "This random event happened on day #{rand(28)} of this month."
    end

    def add_story(story)
      # the below code is the same as: @stories << story
      self.stories << story
    end
  end