global.jQuery = require('jquery');
var bootstrap = require('bootstrap');
var angular = require('angular');
var UIRouter = require('angular-ui-router');
var map = require('ngmap');

angular.module('hunterHope', ['ui.router', 'ngMap'])
.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('blog', {
      url: '/blog',
      templateUrl: '/blog.html',
      controller: 'BlogCtrl'
    });

  $stateProvider
    .state('music', {
      url: '/music',
      templateUrl: '/music.html',
      controller: 'MusicCtrl'
    });

  $stateProvider
    .state('tour', {
      url: '/tour',
      templateUrl: '/tour.html',
      controller: 'TourCtrl'
    });

  $urlRouterProvider.otherwise('blog');
}])

.filter('spotifyUrl', function ($sce) {
    return function(spotifyId) {
      return $sce.trustAsResourceUrl('https://embed.spotify.com/?uri=spotify:track:' + spotifyId);
    };
  });

require("./blogcontroller");
require("./musiccontroller");
require("./tourcontroller");


