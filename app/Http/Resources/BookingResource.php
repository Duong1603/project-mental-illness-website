<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BookingResource extends JsonResource
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
            'start_meeting' => $this->start_meeting,
            'end_meeting' => $this->end_meeting,
            'link_gg_meet' => $this->link_gg_meet,

        ];
    }
}
