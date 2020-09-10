<?php


namespace App\Http\Controllers\Admin;


use App\Analytics;
use App\Expertise;
use App\GosZakup;
use App\Http\Controllers\Controller;
use App\NpaProject;
use App\ScienceActivity;
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

    public function expertise()
    {
        $expertise = Expertise::parentId(0)->get();
        $expertiseOne = Expertise::find(\request()->post_id ?? 0);

        return view('admin.activity.expertise',[
            'expertise'=>$expertise,
            'find'=>$expertiseOne
        ]);
    }

    public function viewExpertise($id)
    {
        $expertise = Expertise::parentId($id)->get();
        $expertiseOne = Expertise::find(\request()->post_id ?? 0);
        return view('admin.activity.expertiseposts',[
            'expertise'=>$expertise,
            'find'=>$expertiseOne
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
    public function npaProjects()
    {
        $npaprojects = NpaProject::all();

        return view('admin.activity.npaprojects',[
            'npaprojects'=>$npaprojects
        ]);
    }

    public function activities()
    {
        $activities = ScienceActivity::all();

        return view('admin.activity.activities',[
            'activities'=>$activities
        ]);
    }

    public function statics()
    {
        $statics = Analytics::all();

        return view('admin.activity.analytics',[
            'statics'=>$statics
        ]);
    }
    public function gosZakup()
    {
        $goszakup = GosZakup::all();

        return view('admin.activity.goszakup',[
            'goszakup'=>$goszakup
        ]);
    }

    public function addUploadData(Request $request)
    {
        if ($this->addActivityHandle($request)) {
            return redirect()->back()->with('success','Успешно добавлено');
        }
        return redirect()->back()->with('error','Повторите еще раз');
    }

}
