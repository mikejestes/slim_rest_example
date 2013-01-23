<?php

/**
 * Example API helper / controller
 */
class Example_Store
{

    public function listAll()
    {
        return array_map(
            'paris_to_array',
            Model::factory('Store')->find_many()
        );
    }

    public function getOne($id)
    {
        $store = Model::factory('Store')->find_one($id);
        if (!$store) {
            throw new Example_Exception_FourOhFour();
        }
        return $store->as_array();
    }
}
