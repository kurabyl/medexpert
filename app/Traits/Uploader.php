<?php


namespace App\Traits;


use Illuminate\Support\Facades\Storage;

trait Uploader
{

    public function upload($request,$fileName)
    {
        if ($request->hasFile('file')) {
            $file = time().'.'.$request->file->extension();
            $request->file->move(public_path($fileName), $file);
            return $file;
        }
        return false;
    }
}
