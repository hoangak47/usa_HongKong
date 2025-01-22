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
use Illuminate\Http\Request;
use NINA\Controllers\Controller;
use NINA\Models\PhotoModel;
use NINA\Models\NewsModel;
use NINA\Models\ProductModel;
use NINA\Models\ProductListModel;
use NINA\Models\SettingModel;
use NINA\Models\StaticModel;
use NINA\Models\ProductCatModel;
use NINA\Models\TagsModel;
use NINA\Core\Support\Facades\View;
use NINA\Core\Support\Facades\Func;
use NINA\Core\Support\Facades\Email;
use NINA\Models\NewslettersModel;



class HomeController extends Controller
{
    public function index(Request $request)
    {

        $lang = $this->lang;

        $photos = PhotoModel::select('photo', 'name'.$lang, 'desc'.$lang,'link','link_video', 'type')
            ->whereIn('type', ['slide', 'video', 'doitac','slide-qc'])
            ->whereRaw("FIND_IN_SET(?, status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->get();

        $slider = $photos->where('type', 'slide')->values();
        $videoHome = $photos->where('type', 'video')->values();
        $doitac = $photos->where('type', 'doitac')->values();
        $sliderqc = $photos->where('type', 'slide-qc')->values();

        $about = StaticModel::select('name'.$lang, 'photo', 'desc'.$lang,'type')
            ->where('type', 'gioi-thieu')
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->first();

        $slogan = StaticModel::select('name'.$lang, 'photo', 'desc'.$lang,'type')
            ->where('type', 'slogan')
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->first();

        $productNB = ProductModel::select('name'.$lang, 'photo', 'desc'.$lang, $this->sluglang.' as slug', 'regular_price', 'sale_price', 'discount', 'id','type')
            ->where('type', 'san-pham')
            ->whereRaw("FIND_IN_SET(?,status)", ['noibat'])
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->orderBy('id', 'desc')
            ->get();

        $album = ProductModel::select('name'.$lang, 'photo', 'desc'.$lang, $this->sluglang.' as slug', 'id','type')
            ->where('type', 'thu-vien-anh')
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->orderBy('id', 'desc')
            ->limit(8)
            ->get();

        $listProductNB = ProductListModel::select('name'.$lang, 'photo', 'id', $this->sluglang.' as slug','type')
            ->with(['getItemsNB'=>function ($query) {
                $query->select('name'.$this->lang, 'photo',$this->sluglang.' as slug','desc'.$this->lang,'id','id_list')
                    ->where('type','san-pham')
                    ->orderBy('numb', 'desc')
                    ->whereRaw("FIND_IN_SET(?,status)", ['noibat'])
                    ->whereRaw("FIND_IN_SET(?,status)", ['hienthi']);
            }])
            ->where('type', 'san-pham')
            ->whereRaw("FIND_IN_SET(?,status)", ['noibat'])
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->orderBy('id', 'desc')
            ->get();



        $newsHome = NewsModel::select('name'.$lang, 'photo', 'desc'.$lang, $this->sluglang.' as slug','date_created','id','type','created_at')
            ->where('type', 'tin-tuc-kien-thuc')
            ->whereRaw("FIND_IN_SET(?,status)", ['noibat'])
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->orderBy('numb', 'asc')
            ->orderBy('id', 'desc')
            ->get();


        /* SEO */
        $titleMain = SettingModel::pluck('namevi')->first();
        $this->seoPage($titleMain);
        return View::share('com', 'trang-chu')->view('home.index', compact('slider', 'productNB', 'listProductNB', 'about','newsHome','videoHome','album','doitac','sliderqc','slogan'));
    }
    public function letter(Request $request) {

        $responseCaptcha = $_POST['recaptcha_response_newsletter'];
        $resultCaptcha = Func::checkRecaptcha($responseCaptcha);
        $scoreCaptcha = (!empty($resultCaptcha['score'])) ? $resultCaptcha['score'] : 0;
        $actionCaptcha = (!empty($resultCaptcha['action'])) ? $resultCaptcha['action'] : '';
        $testCaptcha = (!empty($resultCaptcha['test'])) ? $resultCaptcha['test'] : false;

        if (($scoreCaptcha >= 0.5 && $actionCaptcha == 'newsletter') || $testCaptcha == true) {
            $data['fullname'] = $request->input('fullname')??'';
            $data['phone'] = $request->input('phone')??'';
            $data['email'] = $request->input('email')??'';
            $data['address'] = $request->input('address')??'';
            $data['content'] = $request->input('content')??'';
            $data['date_created'] = Carbon::now()->timestamp;
            $data['confirm_status'] = 1;
            $data['type'] = 'dang-ky-nhan-tin';
            $data['subject'] = "Đăng ký nhận tin";
            if(NewslettersModel::create($data)){
                transfer(__('web.dangkynhantinthanhcong'),1,PeceeRequest()->getHeader('http_referer'));
            }else{
                transfer(__('web.dangkynhantinthatbai'),0,PeceeRequest()->getHeader('http_referer'));
            }
        } else {
            return transfer(__('web.dangkynhantinthatbai'),0,PeceeRequest()->getHeader('http_referer'));
        }
    }
    public function videoHome(Request $request)
    {
        $lang = $this->lang;
        $id = $request->get('id') ?? 0;
        $video = PhotoModel::select('id', 'name'.$lang, 'photo', 'link', 'link_video')
            ->where('type', 'video')
            ->where('com', 'photo-album')
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi']);
        if (!empty($id))  {
            $video->where('id', $id);
        }
        $video  = $video->get();
         //dd($video);
        return view('ajax.video', ['video' => $video]);
    }
    public function ajaxProduct(Request $request)
    {
        $lang = $this->lang;
        $id_cat = $request->get('id_cat') ?? 0;
        $id_list = $request->get('id_list') ?? 0;
        $type = $request->get('type') ?? 0;
        $status = $request->get('status') ?? 'noibat';
        $other = $request->get('other') ?? 1;
        $section = $request->get('section') ?? '';
        $template = $request->get('template') ?? '';
        $slug = $request->get('slug') ?? '';
        $paginate = $request->get('paginate') ?? 8;
        $page = $request->get('page') ?? 1;
        $view = 'ajax.' . 'homeProduct' . $template;

        // Khởi tạo truy vấn sản phẩm cơ bản
        $query = ProductModel::select('name' . $lang, 'photo', 'desc' . $lang, $this->sluglang . ' as slug', 'regular_price', 'sale_price', 'discount', 'id', 'type')
            ->where('type', $type)
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->whereRaw("FIND_IN_SET(?,status)", [$status])
            ->when($id_list, function ($query, $id_list) {
                $query->where('id_list', $id_list);
            })
            ->when($id_cat, function ($query, $id_cat) {
                $query->where('id_cat', $id_cat);
            });

        // Kiểm tra nếu có tham số sắp xếp
        $sort = $request->get('sort');
        if (!empty($sort)) {
            // Áp dụng sắp xếp theo tham số
            switch ($sort) {
                case "1":
                    $query->orderBy('id', 'desc');
                    break;
                case "2":
                    $query->orderBy('id', 'asc');
                    break;
                case "3":
                    $query->orderByRaw('CASE WHEN sale_price > 0 THEN sale_price ELSE regular_price END DESC');
                    break;
                case "4":
                    $query->orderByRaw('CASE WHEN sale_price > 0 THEN sale_price ELSE regular_price END ASC');
                    break;
                default:
                    // Sắp xếp mặc định nếu giá trị `sort` không hợp lệ
                    $query->orderBy('numb', 'asc')->orderBy('id', 'desc');
                    break;
            }
        } else {
            // Sắp xếp mặc định khi không có bộ lọc
            $query->orderBy('numb', 'asc')->orderBy('id', 'desc');
        }
        // Xử lý phân trang và trả về kết quả
        if (!empty($template)) {
            $productAjax = $query->get();
            $data = ['productAjax' => $productAjax, 'id' => $id_list];
        } else {
            if ($other == 1) {
                $productAjax = $query->paginate($paginate);
                $data = ['productAjax' => $productAjax, 'other' => $other];
            } elseif ($other == 2) {
                $productAjax = $query->limit($paginate)->get();
                $data = ['productAjax' => $productAjax, 'other' => $other, 'slug' => $slug];
            } elseif ($other == 3) {
                $productAjax = $query->paginate($paginate, ['*'], 'page', $page);
                $currentPage = $productAjax->currentPage();
                $lastPage = $productAjax->lastPage();
                $data = [
                    'productAjax' => $productAjax,
                    'other' => $other,
                    'currentPage' => $currentPage,
                    'lastPage' => $lastPage,
                    'section' => $section
                ];
            } else {
                $productAjax = $query->paginate($paginate);
                $data = ['productAjax' => $productAjax, 'other' => $other];
            }
        }

        return view($view, $data);
    }
    public function ajaxNews(Request $request)
    {

        $lang = $this->lang;

        $id_cat = $request->get('id_cat') ?? 0;
        $id_list = $request->get('id_list') ?? 0;
        $type = $request->get('type') ?? 0;
        $paginate = $request->get('paginate') ?? 8;
        $view = 'ajax.'.'homeNews';

        $query = NewsModel::select('name'.$lang, 'photo', 'desc'.$lang, $this->sluglang.' as slug', 'id','type')
            ->where('type', $type)
            ->whereRaw("FIND_IN_SET(?,status)", ['hienthi'])
            ->whereRaw("FIND_IN_SET(?,status)", ['noibat'])
            ->when($id_list,function($query,$id_list){
                $query->where('id_list',$id_list);
            })
            ->when($id_cat,function($query,$id_cat){
                $query->where('id_cat',$id_cat);
            })
            ->orderBy('numb', 'asc')
            ->orderBy('id', 'desc');

            if (!empty($template)) {
                $NewsAjax = $query->get();
                $data = ['NewsAjax' => $NewsAjax,'id'=>$id_list];
            }else{
                $NewsAjax = $query->paginate($paginate);
                $data = ['NewsAjax' => $NewsAjax];
            }

        return view($view, $data);

    }
}
