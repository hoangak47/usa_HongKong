<?php
/******************************************************************************
 * NINA VIỆT NAM
 * Email: nina@nina.vn
 * Website: nina.vn
 * Version: 1.1.1
 * Date 18-09-2024
 * Đây là tài sản của CÔNG TY TNHH TM DV NINA. Vui lòng không sử dụng khi chưa được phép.
 */

namespace NINA\Controllers\Web;
use Carbon\Carbon;
use NINA\Controllers\Controller;
use NINA\Models\PhotoModel;
use NINA\Models\SettingModel;
use NINA\Models\NewsModel;
use NINA\Models\StaticModel;
use NINA\Models\ExtensionsModel;
use NINA\Models\ProductListModel;
use NINA\Models\ProductCatModel;
use NINA\Core\Container;

class AllController extends Controller
{

    function composer($view): void
    {

        $lang = $this->lang;

        $extHotline = '';
        $photos = PhotoModel::select('photo', 'name'.$lang, 'link', 'type')
            ->whereIn('type', ['logo', 'logoft', 'favicon', 'social', 'mangxahoi1'])
            ->whereRaw("FIND_IN_SET(?, status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->get();

        $logoPhoto = $photos->where('type', 'logo')->first();
        $logoPhotoFooter = $photos->where('type', 'logoft')->first();
        $favicon = $photos->where('type', 'favicon')->first();
        $social = $photos->where('type', 'social');
        $social1 = $photos->where('type', 'mangxahoi1');

        $listProductMenu = ProductListModel::select('name'.$lang, 'photo', $this->sluglang.' as slug', 'id')
            ->with(['getCategoryCats'=>function ($query) {
                $query->select('name'.$this->lang, 'photo',$this->sluglang.' as slug','desc'.$this->lang,'id','id_list')
                    ->with(['getCategoryItems'=>function ($query) {
                        $query->select('name'.$this->lang, 'photo',$this->sluglang.' as slug','desc'.$this->lang,'id','id_cat')
                           ->where('type', 'san-pham',)
                            ->orderBy('numb', 'desc')
                            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi']);
                    }])
                    ->where('type', 'san-pham',)
                    ->orderBy('numb', 'desc')
                    ->whereRaw("FIND_IN_SET(?,status)", ['hienthi']);
            }])
            ->where('type', 'san-pham',)
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->get();

        $catProductMenu = ProductCatModel::select('name'.$lang, 'photo', $this->sluglang.' as slug', 'id')
            ->where('type', 'san-pham',)
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->whereRaw("FIND_IN_SET(?,status)", ['menu'])
            ->orderBy('numb', 'asc')
            ->get();

        $footer = StaticModel::select('name'.$lang, 'content'.$lang, 'desc'.$lang, $this->sluglang.' as slug')
            ->where('type', 'footer')
            ->first();

        $extHotline = ExtensionsModel::select('*')
            ->where('type', 'hotline')
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->first();

        $extSocial = ExtensionsModel::select('*')
            ->where('type', 'social')
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->first();

        $extPopup = ExtensionsModel::select('*')
            ->where('type', 'popup')
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->first();

            $policy = NewsModel::select('name'.$lang, 'photo', $this->sluglang.' as slug', 'id')
            ->where('type', 'chinh-sach',)
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->orderBy('id', 'desc')
            ->get();

        $tagsSp = \NINA\Models\TagsModel::select('id', 'name'.$lang, $this->sluglang.' as slug', 'type')
            ->where('type', 'san-pham')
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->orderBy('id', 'desc')
            ->get();

        $setting = SettingModel::first();
        $optSetting = json_decode($setting['options'], true);
        $configType = json_decode(json_encode(config('type')));
        $lang = session()->get('locale');
        $view->share(compact(
            'configType',
            'logoPhoto',
            'logoPhotoFooter',
            'social1',
            'favicon',
            'setting',
            'optSetting',
            'listProductMenu',
            'catProductMenu',
            'social',
            'footer',
            'extHotline',
            'extSocial',
            'extPopup',
            'lang',
            'tagsSp',
            'policy',
        ));
    }
}
