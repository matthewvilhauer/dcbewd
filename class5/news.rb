# http://www.reddit.com/.json
# Include rest-client library
# Include JSON library
# Setup rest-client call
# Parse the results from the Reddit API
# Build an array of hashes
# Every hash is going to represent a single story
 
require 'rest-client'
require 'json'
 
def get_from_reddit
  raw_response = RestClient.get('http://www.reddit.com/.json')
  response = JSON.load(raw_response)
 
  response["data"]["children"].map  do |story|
    story_hash = {
      title: story["data"]["title"],
      author: story["data"]["author"],
      score: story["data"]["score"],
      category: story["data"]["subreddit"]

    }
  end
end

def get_from_mashable
  raw_response = RestClient.get('http://www.mashable.com/stories.json')
  response = JSON.load(raw_response)
 
  response["new"].map  do |story|
    story_hash = {
      title: story["title"],
      author: story["author"],
      score: story["shares"]["total"],
      category: story["channel"]
    }
  end
end
 
def display_stories(stories)
  stories.sort_by! { |story| story[:score] }
 
  stories.reverse!
 
  stories.each do |story|
    puts "Title: #{story[:title]}"
    puts "Author: #{story[:author]}"
    puts "Score: (#{story[:score]})"
    puts "Category: #{story[:category]}"
    puts ""
  end
end
 
puts "!!! Welcome to the NEWS API Aggregator !!!"
stories = get_from_reddit + get_from_mashable
display_stories(stories)