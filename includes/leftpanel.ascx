<%@ Control Language="C#" AutoEventWireup="true" CodeFile="leftpanel.ascx.cs" Inherits="includes_leftpanel" %>
<!--===Side Menu===--> 
<div class="sidemenu">
    <div id="main-menu">
    <h4>Add Filter</h4>
    <div class="nano-content" id="contAbCst">
        <div id="disSchool" class="noDisplayds boxCst">
        <!-- Inline Checkboxes -->
           <div class="form-group">
			    <label class="control-label" for="">Region Name</label>
				 <select class="form-control">
                    <option>---select---</option>
                <option>Tigray</option>
                <option>Somali</option>
                <option>SNNP</option>
                <option>Oromiya</option>
                <option>Harari</option>
                </select>
		    </div>
            <div class="form-group">
					                                <label class="control-label" for="">Zone Name</label>
					                                <select class="form-control">
                                                    <option>Southern</option>
                                                    <option>Afdher</option>
                                                    <option>Guraghe</option>
                                                    <option>Arsi West</option>
                                                    <option>Harari</option>
                                                    </select>
					                            </div>
            <div class="form-group">
					                                <label class="control-label" for="">Woreda Name</label>
					                                <select class="form-control">
                                                    <option>Alaje</option>
                                                    <option>Barey</option>
                                                    <option>Kebena</option>
                                                    <option>Adaabbaa</option>
                                                    <option>Jinella</option>
                                                    </select>
					                            </div>
        </div>
        <div class="boxCst noDisplayd" id="schoolSec">
        <div class="checkbox">
        <!-- Inline Checkboxes -->
            <input id="Checkbox1" class="magic-checkbox" type="checkbox" checked="">
            <label for="demo-form-inline-checkbox"><i class="fa fa-home text-success" aria-hidden="true"></i> Primary </label>
            <input id="demo-form-inline-checkbox-3" class="magic-checkbox" type="checkbox">
            <label for="demo-form-inline-checkbox-3"> <i class="fa fa-home text-info" aria-hidden="true"></i> Secondary</label>
        </div>
        </div>
        <div class="boxCst noDisplayd" id="schoolOwnership">
        <div class="checkbox">
        <!-- Inline Checkboxes -->
            <input id="Checkbox2" class="magic-checkbox" type="checkbox" checked="">
            <label for="demo-form-inline-checkbox"><i class="fa fa-home text-info" aria-hidden="true"></i> Government </label>
            <input id="Checkbox3" class="magic-checkbox" type="checkbox">
            <label for="demo-form-inline-checkbox-3"> <i class="fa fa-home text-success" aria-hidden="true"></i> Private</label>
            <input id="Checkbox9" class="magic-checkbox" type="checkbox">
            <label for="demo-form-inline-checkbox-3"> <i class="fa fa-home text-warning" aria-hidden="true"></i> Others</label>
        </div>
        </div>
        <div class="boxCst noDisplayd" id="toiletFaci">
        <div class="checkbox">
        <!-- Inline Checkboxes -->
             <input id="Checkbox4" class="magic-checkbox" type="checkbox" checked="">
            <label for="demo-form-inline-checkbox"><i class="fa fa-home text-success" aria-hidden="true"></i> Having Toilets </label>
            <input id="Checkbox5" class="magic-checkbox" type="checkbox">
            <label for="demo-form-inline-checkbox-3"> <i class="fa fa-home text-danger" aria-hidden="true"></i> Not Having Toilets</label>
            
        </div>
        </div>
        <!--<div class="boxCst noDisplayd" id="SeptoiletFaci">
        <div class="checkbox">
        <!-- Inline Checkboxes -- >
            <input id="Checkbox6" class="magic-checkbox" type="checkbox" checked="">
            <label for="demo-form-inline-checkbox">Primary</label>
            <input id="Checkbox7" class="magic-checkbox" type="checkbox">
            <label for="demo-form-inline-checkbox-3">Secondary</label>
        </div>
        </div>
        <div class="boxCst noDisplayd" id="schoolAgewise">
        <div class="checkbox">
        <!-- Inline Checkboxes -- >
            <input id="Checkbox8" class="magic-checkbox" type="checkbox" checked="">
            <label for="demo-form-inline-checkbox">Age wise school reports</label>
            
        </div>
        </div>-->
    </div>
    </div>
</div>
<!--===Side Menu===--> 