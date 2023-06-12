<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Http\Request;

class TweetTagController extends Controller
{
    public function index($tweet_id)
    {
        $tags = Tag::get()->where('tweet_id', $tweet_id);
        if (is_null($tags)) {
            return response()->json('This tweet does not have any tags', 404);
        }
        return response()->json($tags);
    }
}
