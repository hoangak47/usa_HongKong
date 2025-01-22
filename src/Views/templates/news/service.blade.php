@extends('layout')
@section('content')
    <div>
        @if ($news->isNotEmpty())
            <div class="max-width py-3">
                <div class="title-detail">
                    <h1>{{ $titleMain }}</h1>
                </div>
                <div class="row">
                    @foreach ($news as $k => $v)
                        <div class="col-6 col-lg-4 col-md-4 col-sm-6 mb-3">
                            <div class="item_tt">
                                @component('component.itemNews', ['news' => $v])
                                    <div class="desc-news line-clamp-3 mt-1">{{ $v['desc'.$lang] }}</div>
                                @endcomponent
                            </div>
                        </div>
                    @endforeach
                </div>
                {!! $news->links() !!}
            </div>
        @endif
    </div>
@endsection
