<?php
/******************************************************************************
 * NINA VIỆT NAM
 * Email: nina@nina.vn
 * Website: nina.vn
 * Version: 1.1.1
 * Date 18-09-2024
 * Đây là tài sản của CÔNG TY TNHH TM DV NINA. Vui lòng không sử dụng khi chưa được phép.
 */

return [
    'tin-tuc-kien-thuc' => [
        'title_main' => " Tin tức & Kiến thức",
        'website' => [
            'type' => [
                'index' => 'object',
                'detail' => 'article'
            ],
            'title' => 'tintuckienthuc'
        ],
        'routes' => true,
        'dropdown' => false,
        'tags' => false,
        'view' => true,
        'copy' => false,
        'slug' => true,
        'status' => ["noibat" => "Nổi bật","hienthi" => "Hiển thị"],
        'images' => [
            'photo' => [
                'title' => 'Ảnh đại diện',
                'width' => '400',
                'height' => '280',
                'thumb' => '400x280x1'
            ]
        ],
        // 'gallery' => [
        //     'tin-tuc' => [
        //         "title_main_photo" => "Hình ảnh tin tức",
        //         "title_sub_photo" => "Hình ảnh",
        //         "status_photo" => ["hienthi" => "Hiển thị"],
        //         "number_photo" => 3,
        //         "images_photo" => true,
        //         "avatar_photo" => true,
        //         "name_photo" => true,
        //         "photo_width" => 950,
        //         "photo_height" => 630,
        //         "photo_thumb" => '100x100x1'
        //     ],
        // ],
        'show_images' => true,
        'datePublish' => false,
        'name' => true,
        'desc' => true,
        'content' => true,
        'content_cke' => true,
        'seo' => true,
        'schema' => true,
        // 'categories' => [
        //     'list' => [
        //         'title_main_categories' => "Danh mục cấp 1",
        //         'copy_categories' => false,
        //         'images' => [
        //             'photo' => [
        //                 'title' => 'Ảnh đại diện',
        //                 'width' => '500',
        //                 'height' => '500',
        //                 'thumb' => '500x500x1'
        //             ],
        //             'icon' => [
        //                 'title' => 'Ảnh đại diện',
        //                 'width' => '25',
        //                 'height' => '25',
        //                 'thumb' => '25x25x1'
        //             ]
        //         ],
        //         'slug_categories' => true,
        //         'status_categories' => ["hienthi" => "Hiển thị", "noibat" => "Nổi bật"],
        //         'gallery_categories' => [],
        //         'name_categories' => true,
        //         'desc_categories' => true,
        //         'desc_categories_cke' => false,
        //         'content_categories' => false,
        //         'content_categories_cke' => false,
        //         'seo_categories' => true,
        //     ],
        //     'cat' => [
        //         'title_main_categories' => "Danh mục cấp 2",
        //         'copy_categories' => false,
        //         'images' => [
        //             'photo' => [
        //                 'title' => 'Ảnh đại diện',
        //                 'width' => '500',
        //                 'height' => '500',
        //                 'thumb' => '500x500x1'
        //             ],
        //             'icon' => [
        //                 'title' => 'Ảnh đại diện',
        //                 'width' => '25',
        //                 'height' => '25',
        //                 'thumb' => '25x25x1'
        //             ]
        //         ],
        //         'slug_categories' => true,
        //         'status_categories' => ["hienthi" => "Hiển thị"],
        //         'gallery_categories' => [],
        //         'name_categories' => true,
        //         'desc_categories' => true,
        //         'desc_categories_cke' => false,
        //         'content_categories' => false,
        //         'content_categories_cke' => false,
        //         'seo_categories' => true,
        //     ],
        //     'item' => [
        //         'title_main_categories' => "Danh mục cấp 3",
        //         'copy_categories' => false,
        //         'images' => [
        //             'photo' => [
        //                 'title' => 'Ảnh đại diện',
        //                 'width' => '500',
        //                 'height' => '500',
        //                 'thumb' => '500x500x1'
        //             ],
        //             'icon' => [
        //                 'title' => 'Ảnh đại diện',
        //                 'width' => '25',
        //                 'height' => '25',
        //                 'thumb' => '25x25x1'
        //             ]
        //         ],
        //         'slug_categories' => true,
        //         'status_categories' => ["hienthi" => "Hiển thị"],
        //         'gallery_categories' => [],
        //         'name_categories' => true,
        //         'desc_categories' => true,
        //         'desc_categories_cke' => false,
        //         'content_categories' => false,
        //         'content_categories_cke' => false,
        //         'seo_categories' => true,
        //     ],
        //     'sub' => [
        //         'title_main_categories' => "Danh mục cấp 4",
        //         'copy_categories' => false,
        //         'images' => [
        //             'photo' => [
        //                 'title' => 'Ảnh đại diện',
        //                 'width' => '500',
        //                 'height' => '500',
        //                 'thumb' => '500x500x1'
        //             ],
        //             'icon' => [
        //                 'title' => 'Ảnh đại diện',
        //                 'width' => '25',
        //                 'height' => '25',
        //                 'thumb' => '25x25x1'
        //             ]
        //         ],
        //         'slug_categories' => true,
        //         'status_categories' => ["hienthi" => "Hiển thị"],
        //         'gallery_categories' => [],
        //         'name_categories' => true,
        //         'desc_categories' => true,
        //         'desc_categories_cke' => false,
        //         'content_categories' => false,
        //         'content_categories_cke' => false,
        //         'seo_categories' => true,
        //     ]
        // ]
    ],
    'tuyen-dung' => [
        'title_main' => "Tuyển dụng",
        'website' => [
            'type' => [
                'index' => 'object',
                'detail' => 'article'
            ],
            'title' => 'tuyendung'
        ],
        'routes' => true,
        'dropdown' => false,
        'tags' => false,
        'view' => true,
        'copy' => false,
        'slug' => true,
        'status' => ["hienthi" => "Hiển thị"],
        'images' => [
            'photo' => [
                'title' => 'Ảnh đại diện',
                'width' => '380',
                'height' => '300',
                'thumb' => '380x300x1'
            ]
        ],
        'show_images' => true,
        'datePublish' => false,
        'name' => true,
        'desc' => true,
        'content' => true,
        'content_cke' => true,
        'seo' => true,
        'schema' => true,
    ],
    'chinh-sach' => [
        'title_main' => "Chính sách",
        'website' => [
            'type' => [
                'index' => 'object',
                'detail' => 'article'
            ],
            'title' => 'chinhsach'
        ],
        'dropdown' => false,
        'view' => true,
        'slug' => true,
        'status' => ["hienthi" => "Hiển thị"],
        'images' => [
            'photo' => [
                'title' => 'Ảnh đại diện',
                'width' => '380',
                'height' => '280',
                'thumb' => '380x280x1'
            ]
        ],
        'show_images' => true,
        'datePublish' => false,
        'name' => true,
        'content' => true,
        'content_cke' => true,
        'seo' => true,
        'schema' => true,
    ]
];
