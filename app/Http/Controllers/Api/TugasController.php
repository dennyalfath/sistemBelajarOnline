<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Tugas;
use Illuminate\Http\Request;
use Carbon\Carbon;

class TugasController extends Controller
{
    public function index()
    {
        $tugas = Tugas::all();
        return response()->json(['data' => $tugas]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required',
            'deskripsi' => 'required',
            'id_kelas' => 'required',
            'dateline' => 'required',
            'poin_max' => 'required'
        ]);

        $tugas = new Tugas();
        $tugas->tg_nama = $request->nama;
        $tugas->tg_deskripsi = $request->deskripsi;
        $tugas->tg_id_kelas = $request->id_kelas;
        $tugas->tg_created_at = Carbon::now('GMT+7');
        $tugas->tg_dateline = $request->dateline;
        $tugas->tg_poin_max = $request->poin_max;
        $tugas->save();

        return response()->json(['success' => true, 'message' => 'Tugas baru berhasil ditambah.']);
    }

    public function show($id)
    {
        return Tugas::find($id);
    }

    public function update(Request $request, $id)
    {
        $data = Tugas::where('tg_id', '=', $id)->update([
            'tg_nama' => $request->nama,
            'tg_deskripsi' => $request->deskripsi,
            'tg_id_kelas' => $request->id_kelas,
            'tg_dateline' => $request->dateline,
            'tg_poin_max' => $request->poin_max
        ]);

        if ($data == 1) {
            return response()->json(['success' => true, 'message' => 'Data berhasil diubah.']);
        } else {
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        }
    }

    public function destroy($id)
    {
        $data = Tugas::where('tg_id', '=', $id)->delete();

        if ($data == 1) {
            return response()->json(['success' => true, 'message' => 'Data berhasil dihapus.']);
        } else {
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        }
    }
}
