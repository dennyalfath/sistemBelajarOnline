<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Pelajar;
use App\Http\Resources\PelajarResource;

class PelajarController extends Controller
{
    public function index()
    {
        return PelajarResource::collection(Pelajar::all());
    }

    public function store(Request $request)
    {
        $validatedData = $this->validate($request, [
            'nama' => 'required',
            'id_kelas' => 'required',
            'id_user' => 'required'
        ]);

        $pelajar = new Pelajar();
        $pelajar->plj_nama = $request->nama;
        $pelajar->plj_id_kelas = $request->id_kelas;
        $pelajar->plj_id_user = $request->id_user;
        $pelajar->save();

        return response()->json(['success' => true, 'message' => 'Pelajar baru ditambah.']);
    }

    public function show($id)
    {
        Pelajar::find($id);
    }

    public function update(Request $request, $id)
    {
        $data = Pelajar::where('plj_id', '=', $request->id)->update([
            'plj_nama' => $request->nama
        ]);

        if ($data == 1) :
            return response()->json(['success' => true, 'message' => 'Berhasil diupdate.']);
        else :
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        endif;
    }

    public function destroy($id)
    {
        $data = Pelajar::where('plj_id', '=', $id)->delete();

        if ($data == 1) :
            return response()->json(['success' => true, 'message' => 'Berhasil dihapus.']);
        else :
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        endif;
    }
}
