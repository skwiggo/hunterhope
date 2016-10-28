angular.module('hunterHope', ['ui.router'])
.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('blog', {
      url: '/blog',
      templateUrl: '/blog.html',
      controller: 'MainCtrl'
    });

  $urlRouterProvider.otherwise('blog');
}])

.factory('posts', [function(){
  var o = {
    posts: []
  };
  return o;
}])

.controller('MainCtrl', [
'$scope','posts'
function($scope, posts){
  $scope.posts = posts.posts
  }  
  ];
  
  $scope.addPost = function(){
    $scope.posts.push({title: $scope.title});
    $scope.title = '';
    if(!$scope.title || $scope.title === '') { return; }
  };
);
