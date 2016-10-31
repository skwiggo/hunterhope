var angular = require('angular');
var uirouter = require('angular-ui-router');

angular.module('hunterHope', ['ui.router'])
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

require("./blogcontroller");
require("./musiccontroller");
require("./tourcontroller");


