<?php


namespace App\Traits;


use App\Analytics;
use App\GosZakup;
use App\NpaProject;
use App\ScienceActivity;

trait ActivityHelper
{
    public function addActivityHandle($request)
    {
        switch ($request->type)
        {
            case 1:
                $add = new NpaProject();
                $add->title = $request->title;
                $add->files = $this->uploadStorage($request,'npaproject') ?? '';
                if ($add->save()) {
                    return true;
                }
            break;
            case 2:
                $add = new ScienceActivity();
                $add->title = $request->title;
                $add->file_more = $request->file_more;
                $add->files = $this->uploadStorage($request,'activies') ?? '';
                if ($add->save()) {
                    return true;
                }
            break;
            case 3:
                $add = new Analytics;
                $add->title = $request->title;
                $add->files = $this->uploadStorage($request,'analytics') ?? '';
                if ($add->save()) {
                    return true;
                }
            break;
            case 4:
                $add = new GosZakup();
                $add->title = $request->title;
                $add->link = $request->link;
                if ($add->save()) {
                    return true;
                }
            break;
        }
        return false;
    }

    protected function uploadStorage($request,$folderName)
    {
        if ($request->hasFile('file')) {
            $file = $request->file('file')->store($folderName);
            return $file;
        }
        return false;
    }
}
