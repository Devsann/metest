<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\KaraokeRequestForm;
use App\Karaoke;
use App\Address;
use App\Person;
use App\User;

class KtvController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $address=Address::all();
        $person=Person::all();
        $users=User::all();

        //return view('admin.ktvform',compact('address'),compact('person'),compact('users'));
        return view('admin.ktvform')->with(['address' => $address, 'person' => $person , 'users' => $users]);
    }

    public function mm(){
        return view('welcome');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(KaraokeRequestForm $request)
    {
        Karaoke::create([
            'ktvName'=>$request->get('ktv_name'),
            'licenseID'=>$request->get('license_id'),
            'licenseOwner'=>$request->get('license_owner'),
            'ktvRoomTotal'=>$request->get('ktv_room_total'),
            'userID'=>$request->get('user_id'),
            'personID'=>$request->get('address_id'),
            'addressID'=>$request->get('person_id'),
            'phone_one'=>$request->get('phone1'),
            'phone_two'=>$request->get('phone2'),
        ]);
        return redirect('/ktvform')->with('status','Successful U R Inserting Sir !!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
