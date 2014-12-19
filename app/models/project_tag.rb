class ProjectTag < ActiveRecord::Base

  IMG = [
        "Sass" => "sass.png", 
        "jQuery" => "jquery.png", 
        "CoffyScript" => "coffy.png", 
        "WordPress" => "wordpress.png", 
        "PHP" => "php.png", 
        "AngularJs" => "angularjs.png",
        "Symfony 2" => "symfony.png",
        "Magento" => "magento.jpg", 
        "Ruby on Rails" => "rails.jpg",
        "Joomla" => "joomla.png",
        "Sinatra" => "sinatra.png",
        "PayU" => "payu.jpg",
        "MySql" => "mysql.png",
        "PostgreSQL" => "postgresql.png",
        "PayPal Api" => "paypal.jpeg",
        "Linkedin Api" => "linkedin.jpg", 
        "Google Maps Api" => "google-maps.png",
        "Amazon" => "amazon.jpg",
        "Android" => "android.png",
        "Bootstrap" => "bootstrap.jpg",
        "Capistrano" => "capistrano.png",
        "CoffyCcript" => "coffy.png",
        "Cucumber" => "cucumber.png",
        "D3.js" => "d3js-logo.jpg",
        "DigitalOcean" => "do.jpg",
        "Fb API" => "fb-api.png",
        "Font Awesome" => "font-awesome-logo.png",
        "foundation" => "foundation.jpg",
        "Google Plus Api" => "google_plus_api.jpg",
        "Heroku" => "heroku.jpg",
        "jQuery Mobile" => "jquery-mobile.png",
        "Object C" => "objectc.jpg",
        "RSpec" => "rspec.jpg",
        "Ruby" => "ruby.png",
        "Sassu" => "sassu.jpg",
        "Sinatra" => "sinatra.png",
        "Spree" => "spree.jpg",
        "Stripe" => "stripe.png"
    ]

  extend FriendlyId
  friendly_id :name, use: :slugged
  has_and_belongs_to_many :projects
end
