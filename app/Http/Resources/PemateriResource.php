<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PemateriResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            'id' => $this->pmt_id,
            'nama' => $this->pmt_nama,
            'id_kelas' => $this->pmt_id_kelas,
            'id_user' => $this->pmt_id_user,
        ];
    }
}
