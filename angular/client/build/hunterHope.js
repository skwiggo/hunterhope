angular.module('hunterHope', ['ui.router'], ['uiGmapgoogle-maps']) 
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






