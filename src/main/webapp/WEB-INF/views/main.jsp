<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!-- trimDirectiveWhitesapces : include 사이 간격 없앰. -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/f84cdf215e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/css/main.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
    <title>Document</title>
    <script type="text/javascript">
        var alert = function (msg, title, type) {
            swal({
                title: title,
                text: msg,
                icon:"success",
                type: type,
                timer: 150,
                customClass: 'sweet-size',
                showConfirmButton: false
            });
        };
    </script>
</head>
<style>
.pageNavi{
    position:fixed;
    bottom: 50px;
    right: 20px;
    background-color: #f8f8f8;
    border-radius: 2em;
    text-align: center;
    width: 60px;
    height: 30px;
    line-height: 30px;
    margin: 0 auto;
    display: inline-flex;
    justify-content: space-evenly;
    align-items: center;
    z-index: 50000;
}
.pageNavi >a{
    text-decoration: none;
    text-align: center;
    color: black;
}
</style>
<body>
<script>
    let msg="${msg}";
    if (msg=="logout_ok")
        alert('로그아웃 되었습니다.',"로그아웃","success");
    if(msg=="login_ok")
        alert('환영합니다. ${member_id} 님. ',"로그인","success");
    if(msg=="join_ok")
        alert('회원가입이 완료되었습니다. 로그인 해주세요.',"회원가입","success");
</script>
<%@ include file="include/header.jsp" %>
<div class="pageNavi">
    <a href="#" style="cursor: pointer"><i class="fa-solid fa-up-long"></i></a>
    <a href="#attr" style="cursor: pointer"><i class="fa-solid fa-down-long"></i></a>
     <a href="#goods" style="cursor: pointer"><i class="fa-solid fa-down-long"></i></a>
      <a href="#bottom" style="cursor: pointer"><i class="fa-solid fa-down-long"></i></a>
</div>
<main id="cbody"> <!-- main swiper -->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <a href="#"> <img
                        src="https://adventure.lotteworld.com/image/2023/3/202303091040496940.jpg"></a>
            </div>
            <div class="swiper-slide">
                <a href="#"> <img
                        src="https://adventure.lotteworld.com/image/2023/3/202303080555024010.jpg"></a>
            </div>
            <div class="swiper-slide">
                <a href="#"> <img
                        src="https://adventure.lotteworld.com/image/2023/2/202302270511334840.jpg"></a>
            </div>
            <div class="swiper-slide">
                <a href="#"> <img
                        src="https://adventure.lotteworld.com/image/2023/3/202303021002369080.jpg"></a>
            </div>
            <div class="swiper-slide">
                <a href="#"> <img
                        src="https://adventure.lotteworld.com/image/2023/2/202302271131448550.jpg"></a>
            </div>
        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
        <div class="btn-wrapper">
            <i class="fa-solid fa-play"></i> <i class="fa-solid fa-pause"></i>
        </div>
    </div>

    <!-- swiper script -->
    <script>
        $('document').ready(function () {
            var swiper = new Swiper(".swiper-container",
                {
                    slidesPerView: 'auto',
                    spaceBetween: 30, /*사진 간 간격*/
                    autoplay: true, /*자동실행*/
                    loop: true, /*반복*/
                    pagination: { /*밑에 이동 버튼*/
                        el: ".swiper-pagination",
                        clickable: true,
                    },
                    navigation: { /*양쪽 이동 버튼 설정*/
                        nextEl: ".swiper-button-next",
                        prevEl: ".swiper-button-prev",
                    },
                    on: {
                        init: function () {
                            $('.fa-play').click(function () {
                                swiper.autoplay.start();
                            });
                            $(".fa-pause").on("click", function () 	/*swiper 자동실행 정지*/ {
                                swiper.autoplay.stop();
                            });
                        }
                    }
                });


        });
    </script>
    <!-- 운영시간 -->
    <div class="mainTodayTime" id="attr">
        <div class="time">
            <a href="#"> <i class="fa-regular fa-clock"></i>
                <p class="tit">오늘의 파크운영시간</p>
                <p class="txt">10:00 - 21:00</p>
            </a>
        </div>
        <hr>
    </div>

    <!-- 기구 소개 -->
    <div class="attraction-introduce">
        <div class="attr-main-title">
            <h1>기구소개</h1>
        </div>

        <div class="attraction-container">
            <div class="attraction-top">
                <div class="attraction-item">
                    <a href="attraction"> <img src="resources/img/enjoy/attraction/images/B-dragon.jpeg">
                        <div class="attraction-context">비룡열차</div>
                    </a>
                </div>
                <div class="attraction-item">
                    <a href="tExpress"> <img src="resources/img/enjoy/attraction/images/T-exp.jpeg">
                        <div class="attraction-context">티익스프레스</div>
                    </a>
                </div>
                <div class="attraction-item">
                    <a href="attraction"> <img src="resources/img/enjoy/attraction/images/double-rockspin.jpeg">
                        <div class="attraction-context">더블락스핀</div>
                    </a>
                </div>
            </div>
            <div class="attraction-bottom">
                <div class="attraction-item">
                    <a href="attraction"> <img src="resources/img/enjoy/attraction/images/amazone-express.jpeg">
                        <div class="attraction-context">아마존익스프레스</div>
                    </a>
                </div>
                <div class="attraction-item">
                    <a href="attraction"> <img src="resources/img/enjoy/attraction/images/bumpercar.jpeg">
                        <div class="attraction-context">범퍼카</div>
                    </a>
                </div>
                <div class="attraction-item">
                    <a href="attraction"> <img src="resources/img/enjoy/attraction/images/safari.jpeg">
                        <div class="attraction-context">사파리월드</div>
                    </a>
                </div>
            </div>
            <div class="attraction-btn">
                <a href="attraction" id="goods"> <span>기구 보러 가기</span>
                </a>
            </div>
        </div>


    </div>

    <!-- 굿즈소개 -->
    <div class="goods-introduce">
        <div class="goods-main-title">
            <h1>
                <span>굿즈몰</span>
            </h1>
            <span>굿즈사세요</span>
        </div>
        <div class="goods-container">
            <div class="goods">
                <a href="#"> <img src="https://shop-phinf.pstatic.net/20210401_90/1617272915641BsM7X_JPEG/18408758355337117_858546194.jpg?type=f296_296">
                    <div class="goods-text">
                        <div class="goods-text-title">회전라이트</div>
                        <div class="goods-text-serve">불빛이 돌아간다</div>
                    </div>
                </a>
            </div>
            <div class="goods">
                <a href="#"> <img src="https://shop-phinf.pstatic.net/20200304_275/1583314733835VJdt7_JPEG/20678122359363781_2132856343.jpg?type=f296_296" alt="Product 3">
                    <div class="goods-text">
                        <div class="goods-text-title">우유키홀더</div>
                        <div class="goods-text-serve">귀여운 키 홀더</div>
                    </div>
                </a>
            </div>
            <div class="goods">
                <a href="#"> <img src="https://shop-phinf.pstatic.net/20220714_257/1657786162547NO0aM_PNG/58922058232613675_1078133758.png?type=f296_296" alt="Product 4">
                    <div class="goods-text">
                        <div class="goods-text-title">스위밍 상어</div>
                        <div class="goods-text-serve">귀여운 상어인형</div>
                    </div>
                </a>
            </div>
            <div class="goods">
                <a href="#"> <img src="https://shop-phinf.pstatic.net/20230117_78/1673929254533SWeBo_PNG/75065150249556730_1032377332.png?type=f296_296" alt="Product 5">
                    <div class="goods-text">
                        <div class="goods-text-title">쿼카 목도리</div>
                        <div class="goods-text-serve">귀여운 쿼카</div>
                    </div>
                </a>
            </div>
            <div class="goods">
                <a href="#"> <img src="https://shop-phinf.pstatic.net/20221228_42/1672200248341t1ten_PNG/73336143985178084_209322268.png?type=f296_296" alt="Product 6">
                    <div class="goods-text">
                        <div class="goods-text-title">토끼 크로스백</div>
                        <div class="goods-text-serve">흑묘년엔 토끼백</div>
                    </div>
                </a>
            </div>
        </div>

        <div class="goods-btn">
            <a href="goodsmall"> <span>상점가기</span>
            </a>
            <div id="bottom"></div>
        </div>
    </div>


</main>
<%@ include file="include/footer.jsp" %>
</body>
</html>