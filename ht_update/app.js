angular.module('myApp', [])
.factory('myHttpInterceptor', function ($q) {
  return {
    response: function (response) {
      // do something on success
      if (response.headers()['content-type'] === "application/json; charset=utf-8") {
        // Validate response, if not ok reject
        var data = examineJSONResponse(response); // assumes this function is available

        if (!data)
          return $q.reject(response);
        }
        return response;
    },
    responseError: function (response) {
      // do something on error
      return $q.reject(response);
    }
  };
})
.config(function ($httpProvider) {
  $httpProvider.interceptors.push('myHttpInterceptor');
})
.run(function($http) {
  $http.get('https://www.lds.org/htvt/?lang=eng#/companionships')
  .then(function(res) {
    console.log(res.data.message);
  });
});
