<?php


namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Traits\Uploader;
use App\WorkPlan;
use App\NpaBase;
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
    public function NpaBase()
    {
        $npabase = NpaBase::all();
        return view('admin.activity.npabase',[
            'npabase'=>$npabase
        ]);
    }

    public function postNpaBase(Request $request)
    {
        $npabase = new NpaBase();
        $npabase->title = $request->title;
        $npabase->link = $request->link;
        if ($npabase->save()) {
            return redirect()->back()->with('success','Успешно добавлено');
        }

    }
    public function removeNpaBase($id, Request $request)
    {
        $npabase = NpaBase::find($id);
        
        if ( $npabase->delete()) {
            return redirect()->back()->with('success','Успешно удалено');
        }
        return redirect()->back()->with('error','Повторите еще раз');

    }
}
