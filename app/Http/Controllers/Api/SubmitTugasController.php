<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\SubmitTugas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;

class SubmitTugasController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api')->except(['index', 'show']);
    }

    public function index()
    {
        $stugas = SubmitTugas::all();
        return response()->json(['data' => $stugas]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id_tugas' => 'required',
            'id_kelas' => 'required',
            'file_submit' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['message' => $validator->errors()]);
        }

        $stugas = new SubmitTugas();
        $stugas->sbm_id_tugas = $request->id_tugas;
        $stugas->sbm_id_kelas = $request->id_kelas;
        $stugas->sbm_id_pelajar = Auth::user()->id;
        $stugas->sbm_is_submit = "y";
        $stugas->sbm_file_submit = $request->file_submit;
        $stugas->sbm_submit_at = Carbon::now('GMT+7');
        $stugas->save();

        return response()->json(['success' => true, 'message' => 'Tugas berhasil disubmit.']);
    }

    public function show($id)
    {
        return SubmitTugas::find($id);
    }

    public function update(Request $request, $id)
    {
        $data = SubmitTugas::where('sbm_id', '=', $id)->update([
            'sbm_file_submit' => $request->file_submit
        ]);

        if ($data == 1) {
            return response()->json(['success' => true, 'message' => 'Data berhasil diubah.']);
        } else {
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        }
    }

    public function destroy($id)
    {
        $data = SubmitTugas::where('tg_id', '=', $id)->delete();

        if ($data == 1) {
            return response()->json(['success' => true, 'message' => 'Data berhasil dihapus.']);
        } else {
            return response()->json(['success' => false, 'message' => 'Gagal.']);
        }
    }
}
