<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PelajarResource extends JsonResource
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
            'id' => $this->plj_id,
            'nama' => $this->plj_nama,
            'id_kelas' => $this->plj_id_kelas,
            'id_user' => $this->plj_id_user,
            'poin_tugas' => $this->plj_poin_tugas
        ];
    }
}
