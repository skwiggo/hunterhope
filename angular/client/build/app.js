angular.module('hunterHope', []) 
.factory('posts', function() {
  var posts = {posts: [{text: 'Hello'}, {text: 'Woohoo'}]};
  return posts
})

.controller('MainCtrl', ['$scope', 'posts',
  function($scope, posts) {
    $scope.posts = posts.posts
    $scope.addPost = function() {
      $scope.posts.push({text: $scope.text})
    }
  }  
]);

