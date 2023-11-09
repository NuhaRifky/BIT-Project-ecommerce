<main id="main">
        <div class="container">

            <!--MAIN SLIDE-->
            <div class="wrap-main-slide">
                <div class="slide-carousel owl-carousel style-nav-1" data-items="1" data-loop="1" data-nav="true" data-dots="false">
                    <div class="item-slide">
                        <img src="{{asset('assets/images/main-slider-0.jpg')}}" alt="" class="img-slide">
                        <div class="slide-info slide-2">
                            <h2 class="f-title">Redme-Poko F5 <b>New Arrived</b></h2>

                            <span class="f-subtitle">Exclusive Mobile Phones Offers...</span>
                            
                            
                        </div>
                    </div>
                    <div class="item-slide">
                        <img src="{{asset('assets/images/main-slider.jpg')}}" alt="" class="img-slide">
                        <div class="slide-info slide-2">
                            <h2 class="f-title">Extra 25% Off</h2>
                            <!-- <span class="f-subtitle">On online payments</span> -->
                            <!-- <p class="discount-code">Use Code: #FA6868</p>
                            <h4 class="s-title">Get Free</h4>
                            <p class="s-subtitle">TRansparent Bra Straps</p> -->
                        </div>
                    </div>
                    <div class="item-slide">
                        <img src="{{asset('assets/images/main-slider-2.jpg')}}" alt="" class="img-slide">
                        <div class="slide-info slide-3">
                            <h2 class="f-title">New Models <b>Scooter Bikes</b></h2>
                            <!-- <span class="f-subtitle">Exclusive Furniture Packages to Suit every need.</span> -->
                            <p class="sale-info">Starting at: <b class="price">LKR 25000.00</b></p>
                            <!-- <a href="#" class="btn-link">Shop Now</a> -->
                        </div>
                    </div>
                </div>
            </div>

            <!--BANNER-->
            <div class="wrap-banner style-twin-default">
                <div class="banner-item">
                    <a href="/product-request" class="link-banner banner-effect-1">
                        <figure><img src="{{asset('assets/images/banner-1.jpg')}}" alt="" width="580" height="190"></figure>
                    </a>
                </div>
                <div class="banner-item">
                    <a href="#" class="link-banner banner-effect-1">
                        <figure><img src="{{asset('assets/images/banner-3.jpg')}}" alt="" width="580" height="190"></figure>
                    </a>
                </div>
            </div>

            <!--On Sale-->
            @if($sproducts->count() > 0)
            <div class="wrap-show-advance-info-box style-1 has-countdown">
                <h3 class="title-box">On Sale</h3>
                <!-- <div class="wrap-countdown mercado-countdown" data-expire="2020/12/12 12:34:56"></div> -->
                <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container " data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}'>

                    @foreach($sproducts as $sproduct)
                    <div class="product product-style-2 equal-elem ">
                        <div class="product-thumnail">
                            <a href="{{route('product.details',['slug'=>$sproduct->slug])}}" title="{{$sproduct->name}}">
                                <figure><img src="{{asset('assets/images/products')}}/{{$sproduct->image}}" width="800" height="800" alt="{{$sproduct->name}}"></figure>
                            </a>
                            <div class="group-flash">
                                <span class="flash-item sale-label">sale</span>
                            </div>
                            
                        </div>
                        <div class="product-info">
                            <a href="{{route('product.details',['slug'=>$sproduct->slug])}}" class="product-name"><span>{{$sproduct->name}}</span></a>
                            <div class="wrap-price"><ins><p class="product-price">LKR {{$sproduct->sale_price}}</p></ins><del><p class="product-price">LKR {{$sproduct->reguler_price}}</p></del></div>
                        </div>
                    </div>
                    @endforeach   
                </div>
            </div>
            @endif

            <!--Latest Products-->
            <div class="wrap-show-advance-info-box style-1">
                <h3 class="title-box">Latest Products</h3>
                <div class="wrap-top-banner">
                    <a href="#" class="link-banner banner-effect-2">
                        <figure><img src="{{asset('assets/images/001-01.jpg')}}" width="1170" height="240" alt=""></figure>
                    </a>
                </div>
                <div class="wrap-products">
                    <div class="wrap-product-tab tab-style-1">                      
                        <div class="tab-contents">
                            <div class="tab-content-item active" id="digital_1a">
                                <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container" data-items="5" data-loop="false" data-nav="true" data-dots="false" data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}' >
                                    @foreach($lproducts as $lproduct)

                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="{{route('product.details',['slug'=>$lproduct->slug])}}" title="{{($lproduct->name)}}">
                                                <figure><img src="{{asset('assets/images/products/')}}/{{($lproduct->image)}}" width="800" height="800" alt="{{($lproduct->name)}}"></figure>
                                            </a>
                                            
                                        </div>
                                        <div class="product-info">
                                            <a href="{{route('product.details',['slug'=>$lproduct->slug])}}" class="product-name">
                                                <span>{{($lproduct->name)}}</span></a>
                                            <div class="wrap-price"><span class="product-price">LKR {{($lproduct->reguler_price)}}</span></div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>                          
                        </div>
                    </div>
                </div>
            </div>
                    </div>
                    </div>
                </div>
            </div>          

        </div>

    </main>