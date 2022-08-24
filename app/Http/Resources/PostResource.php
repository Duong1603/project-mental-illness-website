<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PostResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'image' => env('APP_URL')."/img/". $this->image,
            'content' => $this->content,
            'tag' => $this->tag,
            'status' => $this->status,
            'emotion' => $this->emotion,
            'category_id' => $this->category_id,
            'code'=>200
        ];
    }
}
