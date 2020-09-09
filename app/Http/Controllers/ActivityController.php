<?php

namespace App\Http\Controllers;

use App\Expertise;
use App\NpaBase;
use App\NpaProject;
use App\ScienceActivity;
use App\Traits\Uploader;
use App\WorkPlan;
use App\GosZakup;
use App\Analytics;

use Illuminate\Http\Request;

class ActivityController extends Controller
{
    use Uploader;
    public function expertise()
    {
        $expertise = Expertise::parentId(0)->get();

        return view('front.expertise_type',[
            'expertise'=>$expertise
        ]);
    }

    public function planWork()
    {
        $workPlan = WorkPlan::all();

        return view('front.work_plan',[
            'workPlan'=>$workPlan
        ]);
    }

    public function npaBase()
    {
        $npaBase = NpaBase::all();

        return view('front.npa_base',[
            'npaBase'=>$npaBase
        ]);
    }

    public function npaProjects()
    {
        $npaProjects = NpaProject::all();

        return view('front.npa_project',[
            'npaProjects'=>$npaProjects
        ]);
    }

    public function scienceActivity()
    {
        $activites = ScienceActivity::all();

        return view('front.science_activity',[
            'activites'=>$activites
        ]);
    }
    public function gosZakup()
    {
        $goszakup = GosZakup::all();

        return view('front.goszakup',[
            'goszakup'=>$goszakup
        ]);
    }
    public function analytics()
    {
        $analytics = Analytics::all();

        return view('front.statistics',[
            'analytics'=>$analytics
        ]);
    }
}
