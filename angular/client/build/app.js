angular.module('hunterHope', []) 

angular.module('hunterHope').factory('blogPosts', [function(){
  var blogPosts = {}

  var blogPosts.list = []
  
  blogPosts.add = function(message){
    blogPosts.push({text: message});
  };

  return blogPosts 
}])

.controller('MainCtrl', function(blogPosts) {
  var self = this;
  self.blogPosts = blogPosts.list
})
