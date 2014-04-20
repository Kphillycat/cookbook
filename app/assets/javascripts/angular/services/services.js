var recipeServices = angular.module('recipeServices', ['ngResource']);

recipeServices.factory('Recipe', ['$resource',
  function($resource){
    return $resource('/api/recipes.json', {}, {
      query: {method: 'GET', params: {}, isArray:true}
    });
  }]);