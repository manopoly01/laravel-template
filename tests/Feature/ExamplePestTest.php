<?php

/**
 * A basic Pest-test example.
 */

test('the application returns a successful response', function () {
    $response = $this->get('/');

    $response->assertStatus(200);
});
