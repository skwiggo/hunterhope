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

// myApp.controller('BlogCtrl', ["$scope", "$http", function($scope, $http) {
//     $http.get("http://localhost:5000/blogposts")
//     .then(function(response) {
//         $scope.posts = response.data;
//     });
//   }  
// ]);

// myApp.controller('MusicCtrl', ["$scope", "$http", function($scope, $http) {
//     $http.get("http://localhost:5000/songs")
//     .then(function(response) {
//         $scope.songs = response.data;
//     });
//   }  
// ]);


// myApp.controller('TourCtrl', ["$scope", "$http", function($scope, $http) {
//     $http.get("http://localhost:5000/tourdates")
//     .then(function(response) {
//         $scope.tourDates = response.data;
//     });
//   }  
// ]);

