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

  $urlRouterProvider.otherwise('blog');
}])

.controller('BlogCtrl', ["$scope", "$http", function($scope, $http) {
    $http.get("http://localhost:5000/blogposts")
    .then(function(response) {
        $scope.posts = response.data;
    });
  }  
]);

