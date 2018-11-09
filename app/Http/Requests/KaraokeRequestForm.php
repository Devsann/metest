<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class KaraokeRequestForm extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'ktv_name'=>'required',
            'license_id'=>'required',
            'license_owner'=>'required',
            'ktv_room_total'=>'required',
            'user_id'=>'required',
            'address_id'=>'required',
            'person_id'=>'required',
            'phone1'=>'required',
            'phone2'=>'required',
        ];
    }
}
