angular.module('qbmt-test')
.factory('options', [
  '$http',
  function($http){
  var o = {
    options: []
  };

  o.getAll = function(){
    return $http.get('/options.json').success(function(data){
      angular.copy(data, o.options);
    });
  };
  return o;
}]);
