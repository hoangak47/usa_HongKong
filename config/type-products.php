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
    'san-pham' => [
        'title_main' => "Sản Phẩm",
        'website' => [
            'type' => [
                'index' => 'object',
                'detail' => 'article'
            ],
            'title' => 'sanpham'
        ],
        'routes' => true,
        'id_categories' => true,
        'copy' => true,
        'slug' => true,
        'status' => ["noibat" => "Nổi bật","hienthi" => "Hiển thị"],
        'images' => [
            'photo' => [
                'title' => 'Ảnh đại diện',
                'width' => '570',
                'height' => '570',
                'thumb' => '570x570x1',
                'thumb_detail' => '570x570x2'
            ],
        ],
        'show_images' => true,
        'gallery' => [
            'san-pham' => [
                "title_main_photo" => "Hình ảnh sản phẩm",
                "title_sub_photo" => "Hình ảnh",
                "status_photo" => ["hienthi" => "Hiển thị"],
                "number_photo" => 3,
                "images_photo" => true,
                "avatar_photo" => true,
                "name_photo" => true,
                "photo_width" => 570,
                "photo_height" => 570,
                "photo_thumb" => '570x570x1'
            ],
            // 'hinh-anh' => [
            //     "title_main_photo" => "Hình ảnh khác",
            //     "title_sub_photo" => "Hình ảnh",
            //     "status_photo" => ["hienthi" => "Hiển thị"],
            //     "number_photo" => 3,
            //     "images_photo" => true,
            //     "avatar_photo" => true,
            //     "name_photo" => true,
            //     "photo_width" => 950,
            //     "photo_height" => 630,
            //     "photo_thumb" => '100x100x1'
            // ],
        ],
        // 'posts' => [
        //     'khuyen-mai-san-pham' => 'Khuyến mãi',
        //     'uu-dai-san-pham' => 'Ưu đãi',
        //     'ho-tro-san-pham' => 'Hỗ trợ',
        // ],
        // 'excel' => [
        //     'import' => [
        //         'title_main_excel' => "Import",
        //     ],
        //     'export' => [
        //         'title_main_excel' => "Export",
        //     ]
        // ],
        'view' => true,
        'code' => true,
        'regular_price' => true,
        'sale_price' => true,
        'discount' => true,
        'datePublish' => false,
        'name' => true,
        'desc' => true,
        'desc_cke' => false,
        'content' => true,
        'content_cke' => true,
        'schema' => true,
        'seo' => true,
        'group' => false,
        'categories' => [
            'list' => [
                'title_main_categories' => "Danh mục cấp 1",
                'images' => [
                    'photo' => [
                        'title' => 'Ảnh đại diện',
                        'width' => '500',
                        'height' => '500',
                        'thumb' => '500x500x1'
                    ]
                ],
                'copy_categories' => false,
                'show_images_categories' => true,
                'slug_categories' => true,
                'status_categories' => ["hienthi" => "Hiển thị", "noibat" => "Nổi bật"],
                'gallery_categories' => [],
                'name_categories' => true,
                'desc_categories' => true,
                'desc_categories_cke' => false,
                'content_categories' => false,
                'content_categories_cke' => false,
                'seo_categories' => true,
            ],
            'cat' => [
                'title_main_categories' => "Danh mục cấp 2",
                'images' => [
                    'photo' => [
                        'title' => 'Ảnh đại diện',
                        'width' => '500',
                        'height' => '500',
                        'thumb' => '500x500x1'
                    ]
                ],
                'copy_categories' => false,
                'show_images_categories' => true,
                'slug_categories' => true,
                'status_categories' => ["noibat" => "Nổi bật", "hienthi" => "Hiển thị"],
                'gallery_categories' => [],
                'name_categories' => true,
                'desc_categories' => true,
                'desc_categories_cke' => false,
                'content_categories' => false,
                'content_categories_cke' => false,
                'seo_categories' => true,
            ]
        ]
    ]
];
