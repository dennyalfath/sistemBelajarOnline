<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Materi;

class MateriController extends Controller
{
    public function index()
    {
        $materi = Materi::all();
        return response()->json(['data' => $materi]);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'id_kelas' => 'required',
            'judul' => 'required',
            'deskripsi' => 'required',
            'file_materi' => 'required'
        ]);

        $materi = new Materi();
        $materi->mt_id_kelas = $request->id_kelas;
        $materi->mt_judul = $request->judul;
        $materi->mt_deskripsi = $request->deskripsi;
        $materi->mt_file_materi = $request->file_materi;
        $materi->save();

        return response()->json(['success' => true, 'message' => 'Materi berhasil ditambah.']);
    }

    public function show($id)
    {
        return Materi::find($id);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'id_kelas' => 'required',
            'judul' => 'required',
            'deskripsi' => 'required',
            'file_materi' => 'required'
        ]);

        $materi = Materi::where('mt_id', '=', $id)->update([
            'mt_id_kelas' => $request->id_kelas,
            'mt_judul' => $request->judul,
            'mt_deskripsi' => $request->deskripsi,
            'mt_file_materi' => $request->file_materi
        ]);

        return response()->json(['success' => true, 'message' => 'Materi berhasil diubah.']);
    }

    public function destroy($id)
    {
        $data = Materi::where('mt_id', '=', $id)->delete();
        return response()->json(['success' => true, 'message' => 'Materi berhasil dihapus.']);
    }
}
