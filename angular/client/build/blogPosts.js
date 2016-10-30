angular.module('blogPosts', ['ui.router']) 

.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('home', {
      url: '/home',
      template: '/home.html',
      controller: 'BlogCtrl'
    });

  $urlRouterProvider.otherwise('home');
}])

.factory('posts', function() {
  var posts = {posts: [{text: 'Hello'}, {text: 'Woohoo'}]};
  return posts
})

.controller('BlogCtrl', ['$scope', 'posts',
  function($scope, posts) {
    $scope.posts = posts.posts
  }  
]);

