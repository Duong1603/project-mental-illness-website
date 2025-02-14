<?php

namespace App\Http\Middleware;

use Closure;

class ApiLanguageMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //Check header request and set language defaut
        $lang = ($request->hasHeader('X-localization')) ? $request->header('X-localization') : 'en';
        //Set laravel localization
        app()->setLocale($lang);

        //Continue request
        return $next($request);
    }

    // if (!Session::has('locale')) {
    //     Session::put('locale', config('app.locale'));
    // }

    // Lang::setLocale(Session::get('locale'));

    // return $next($request);
}
