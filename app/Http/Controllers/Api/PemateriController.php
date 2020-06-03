<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\PemateriResource;
use App\Pemateri;

class PemateriController extends Controller
{
    public function index()
    {
        return PemateriResource::collection(Pemateri::all());
    }

    public function store(Request $request)
    {
        $validatedData = $this->validate($request, [
            'nama' => 'required',
            'id_kelas' => 'required',
            'id_user' => 'required'
        ]);

        $pemateri = new Pemateri();
        $pemateri->pmt_nama = $request->nama;
        $pemateri->pmt_id_kelas = $request->id_kelas;
        $pemateri->pmt_id_user = $request->id_user;
        $pemateri->save();

        return response(['success' => true, 'message' => 'Pemateri baru ditambah.']);
    }

    public function show($id)
    {
        Pemateri::find($id);
    }

    public function update(Request $request, $id)
    {
        $data = Pemateri::where('pmt_id', '=', $request->id)->update([
            'pmt_nama' => $request->nama
        ]);

        if ($data == 1) :
            return response()->json(['success' => true, 'message' => 'Berhasil diupdate.']);
        else :
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        endif;
    }

    public function destroy($id)
    {
        $data = Pemateri::where('pmt_id', '=', $id)->delete();

        if ($data == 1) :
            return response()->json(['success' => true, 'message' => 'Berhasil dihapus.']);
        else :
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        endif;
    }
}
