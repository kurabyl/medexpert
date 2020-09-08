<?php


namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Traits\Uploader;
use App\WorkPlan;
use Illuminate\Http\Request;

class ActivityController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function planWork()
    {
        $workPlan = WorkPlan::all();

        return view('admin.activity.planwork',[
            'workPlan'=>$workPlan
        ]);
    }

    public function postWorkPlan(Request $request)
    {
        $workPlan = new WorkPlan();
        $workPlan->title = $request->title;
        $workPlan->files = $this->storageUpload($request,'planWork') ?? '';
        if ($workPlan->save()) {
            return redirect()->back()->with('success','Успешно добавлено');
        }


    }
}
