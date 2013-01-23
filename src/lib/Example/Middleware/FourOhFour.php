<?php

class Example_Middleware_FourOhFour extends \Slim\Middleware
{
    public function call()
    {
        try {
            $this->next->call();
        } catch (Example_Exception_FourOhFour $e) {
            $response = $this->app->response()->status(404);
        }
    }
}
