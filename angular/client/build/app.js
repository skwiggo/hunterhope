angular.module('hunterHope', [])
 
.factory('blogPosts', [function(){
  var o = {
    posts: [
      {title: "Hi everyone!"}
    ]
  };
  return o;
}]);

.controller('MainCtrl', [
'$scope',
'blogPosts',
function($scope, blogPosts){
  $scope.posts = blogPosts.posts
  $scope.addPost = function(){
    $scope.posts.push({title: $scope.title});
    $scope.title = '';
    if(!$scope.title || $scope.title === '') { return; }
  };
  }]; 
);
