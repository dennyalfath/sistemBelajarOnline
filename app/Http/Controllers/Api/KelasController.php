<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Kelas;

class KelasController extends Controller
{
    public function index()
    {
        $kelas = Kelas::all();
        return response()->json(['data' => $kelas]);
    }

    public function store(Request $request)
    {
        $validatedData = $this->validate($request, [
            'nama_kelas' => 'required',
            'id_pemateri' => 'required'
        ]);

        $kelas = new Kelas();
        $kelas->kls_nama = $request->nama_kelas;
        $kelas->kls_id_pemateri = $request->id_pemateri;
        $kelas->save();

        return response()->json(['success' => true, 'message' => 'Kelas baru ditambah.']);
    }

    public function show($id)
    {
        Kelas::find($id);
    }

    public function update(Request $request, $id)
    {
        $data = Kelas::where('kls_id', '=', $request->id)->update([
            'kls_nama' => $request->nama
        ]);

        if ($data == 1) :
            return response()->json(['success' => true, 'message' => 'Berhasil diupdate.']);
        else :
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        endif;
    }

    public function destroy($id)
    {
        $data = Kelas::where('kls_id', '=', $id)->delete();

        if ($data == 1) :
            return response()->json(['success' => true, 'message' => 'Berhasil dihapus.']);
        else :
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        endif;
    }
}
