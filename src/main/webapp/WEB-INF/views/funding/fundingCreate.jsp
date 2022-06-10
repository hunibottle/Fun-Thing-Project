<%--
  Created by IntelliJ IDEA.
  User: kimbyeounghoon
  Date: 2022/06/09
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="javascript" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--datePicker-->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--datePicker end -->
<link href="/resources/font/NotoSansCJKkr/font.min.css" rel="stylesheet">
<link href="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/slick.min.css?v=20220222_02">
<link href="/resources/vendor/bootstrap-tokenfield/bootstrap-tokenfield.min.css" rel="stylesheet">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/custom_shinhan.min.css?v=20220222_02">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/custom-tinymce.min.css">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/crowdy/crowdy.min.css?v=20220527_01">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/crowdy/crowdyCardUI.min.css?v=20220222_02">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/common.min.css?v=20220513_01">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/theme.min.css?v=20220331_01">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/custom.min.css?v=20220513_01">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/crowdy/crowdy.min.css?v=20220527_01">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/crowdy/crowdyCardUI.min.css?v=20220222_02">
<link rel="stylesheet" href="//image-se.ycrowdy.com/crowdyCss/crowdy/datepickerCustom.css">
<div class="common_sub_layout">
    <div class="container">
        <div class="row not-space">
            <div class="col-md-2">
                <div class="col-line-lm mt70">
                    <div class="st-navi-device-wrap"><span>프로젝트 미리보기</span>
                        <div class="st-navi-device"><a>모바일</a> <a>태블릿</a> <a>PC</a></div>
                    </div>
                    <ul class="st-navi st-navi-p">
                        <li class="active"><a href="javascript:void(0)">프로젝트 만들기</a>
                            <div class="list_link_tab">
                                <ul>
                                    <li class="active" id="info_btn" onclick="active('info_btn');"><a onclick="show('info')">1. 기본정보</a></li>
                                    <li class="" id="story_btn" onclick="active('story_btn');"><a onclick="show('story')">2. 스토리</a></li>
                                    <li class="" id="reword_btn" onclick="active('reword_btn');"><a onclick="show('reword');">3. 리워드</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <div style="cursor: pointer;"><img
                            src="https://image-se.ycrowdy.com/crowdyCss/img/mypage_banner.png"
                            style="width: 180px; padding-right: 10px;"></div>
                </div>
            </div>
            <div id="basic_info" class="col-md-10 col-line" style="display: block">
                <div class="row not-space">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-11">
                        <div class="md-ml30">
                            <form id="projectForm" method="get" action="#" class="form-horizontal">
                                <div class="form-group row-mobile-n mt40 mb30">
                                    <label for="project_type1" class="col-xs-12 control-label control-label-big">
                                    <div class="text-left mb10">프로젝트의 성공 조건 &amp; 수수료 안내</div>
                                        <p class="form-control-static mb10 mt0"></p>
                                        <div style="text-align: left">
                                            <p style="color: rgb(51, 51, 51);">프로젝트 종료일 기준 모금액이 목표금액의 100% 이상인 경우에만 프로젝트가
                                                성공하게 됩니다.</p>
                                            <p style="color: rgb(51, 51, 51);">프로젝트가 성공한 경우, 크라우디는 모금액에서 수수료를 제한 금액을
                                                정산해드립니다.</p>
                                            <p>* 수수료 (vat 별도) 크라우디 수수료 10% + 결제 수수료 3%</p>
                                            <p></p>
                                        </div>
                                    </label>
                                </div>
                                <div class="form-group row-mobile-n mb30">
                                    <label for="project_subject" class="col-xs-12 control-label control-label-big">
                                    <div class="text-left mb10">프로젝트의 제목을 적어주세요</div>
                                        <div style="text-align: left">
                                            <p class="form-control-static mb10 mt0">프로젝트의 핵심 내용을 담을 수 있고 간결한 제목을 정해주세요.</p>
                                        </div>
                                    </label>
                                    <div class="col-xs-12 col-sm-8"><input type="text" id="project_subject" maxlength="40" class="form-control"></div>
                                    <div class="col-xs-12 col-sm-2">
                                        <span class="textarea_text_leng webfont2 mt10">
                                        <span id="charNum">0</span> / 40</span>
                                    </div>
                                </div>
                                <div class="form-group row-mobile-n mb30"><label for="project_price" class="col-xs-12 control-label control-label-big">
                                    <div class="text-left mb10">목표 금액을 적어주세요</div>
                                    <div style="text-align: left">
                                        <p class="form-control-static mb10 mt0"><a class="red-800">최소 100,000원 이상</a>이어야 합니다.</p>
                                    </div>
                                </label>
                                    <div class="col-xs-12 col-sm-8"><input placeholder="" type="tel" data-vv-name="cpTargetAmount" class="form-control"></div>
                                    <div class="col-xs-12 col-sm-2">
                                        <div class="textarea_text_leng mt10">원</div>
                                    </div>
                                    <div class="col-xs-12 col-sm-10 basic_info">
                                        <div class="fees_info">
                                            <div class="fees_info_frame">
                                                <div class="row not-space">
                                                    <div class="col-xs-8">
                                                        펀딩 결제 수수료(카드 수수료 + 계좌이체 수수료)
                                                    </div>
                                                    <div class="col-xs-4 text-right"><span id="pg_fees">0</span>원
                                                    </div>
                                                </div>
                                                <div class="row not-space">
                                                    <div class="col-xs-8">
                                                        크라우디 플랫폼 이용 수수료
                                                    </div>
                                                    <div class="col-xs-4 text-right"><span id="platform_fees">0</span>원
                                                    </div>
                                                </div>
                                                <div class="row not-space">
                                                    <div class="col-xs-8">
                                                        프로젝트를 성공했을 경우 예상 정산 금액
                                                    </div>
                                                    <div class="col-xs-4 text-right text-big"><span id="totalSum"
                                                                                                    class="red-800">0</span>원
                                                    </div>
                                                </div>
                                                <ul>
                                                    <li>1. 위 금액은 예상이므로, 실제 정산 금액은 조금 다를 수 있습니다.</li>
                                                    <li>2. 목표금액을 초과달성하여도 수수료는 동일한 비율로 적용됩니다.</li>
                                                    <li>
                                                        3. 수수료의 비율은 다음과 같습니다.
                                                        <ul>
                                                            <li> - 크라우디 플랫폼 이용 수수료 (결제승인금액의 7% + 부가가치세 10%)</li>
                                                            <li> - PG 수수료 (카드결제승인금액의 1.7-2% + 부가가치세 10%)</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row-mobile-n mb30"><label for="project_start" class="col-xs-12 control-label control-label-big">
                                    <div class="text-left mb10">프로젝트의 진행 기간을 적어주세요</div>
                                    <div style="text-align: left">
                                        <p class="form-control-static mb10 mt0">최소 7일부터 최대 60일까지 가능합니다.</p>
                                    </div>
                                </label>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="row row-mobile-n">
                                            <div class="col-xs-5"><input type="text" max="60" placeholder="" disabled="disabled" class="form-control" name="d_day" id="d_day"></div>
                                            <div class="col-xs-2 col-sm-2">
                                                <div class="textarea_text_leng mt10">일 남음</div>
                                            </div>
                                            <div class="col-xs-5" style="z-index: 10;"><input class="form-control datetimepicker" id="duration_project" value=""></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row-mobile-n mb30"><label for="project_img" class="col-xs-12 control-label control-label-big">
                                    <div class="text-left mb10">프로젝트 대표 이미지를 등록해주세요</div>
                                    <div style="text-align: left">
                                        <p class="form-control-static mb10 mt0">홈페이지와 외부 공유를 했을 때 보여집니다. 프로젝트를 한 눈에 나타낼 수 있는 이미지를 등록해주세요.</p>
                                    </div>
                                </label>
                                </div>
                                <div class="form-group row-mobile-n mt90">
                                    <div class="col-sm-11">
                                        <div class="form-group row-mobile-n">
                                            <div class="col-xs-6 col-sm-4 col-md-3">
                                                <div class="btn btn-block btn-primary-outline">저장하기</div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-3"><button type="button" class="btn btn-block btn-primary" onclick="nextStep_info();">다음단계</button></div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div id="reword" class="col-md-10 col-line" style="display: none">
                <div class="row not-space">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-11">
                        <div class="md-ml30">
                            <form id="combinationForm" method="get" action="#" class="form-horizontal">
                                <div class="form-group row-mobile-n mt40">
                                            <div class="col-xs-12 control-label control-label-big">
                                                <div class="text-left mb10">
                                                    프로젝트 리워드를 구성해주세요
                                                </div>
                                                <div style="text-align: left">
                                                <p class="form-control-static mb10 mt0">프로젝트 시작을 위해서는
                                                    <a class="red-800">최소 1개 이상의 리워드가 있어야 합니다.</a> 배송이 필요한 리워드는 배송비가 포함된 가격을 적어주세요.</p>
                                                </div>
                                            </div>
                                </div>
                                    <div class="ps-wrap mb80">
                                    <!---->
                                    <div class="row row-mobile-n">
                                        <label for="rewards_ea" class="col-xs-2 control-label">
                                            <div class="text-left">리워드 제공 가능 수</div>
                                        </label>
                                        <div class="row row-mobile-n mb25">

                                            <div class="col-xs-2"><input type="tel" maxlength="100" placeholder="제공 가능 수량" class="form-control"></div>
                                            <div class="col-xs-1">
                                                <div class="mt10 textarea_text_leng webfont2">개</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row row-mobile-n mb25"><label for="rewards_date" class="col-xs-2 control-label">
                                        <div class="text-left">예상 배송일</div>
                                    </label>
                                        <div class="col-xs-3">
                                            <input type="text" class="form-control datetimepicker" id="estimated_deliveryDate">
                                        </div>
                                    </div>
                                    <div class="row row-mobile-n mb30">
                                        <div class="col-xs-2 control-label">
                                            <div class="text-left mb10">리워드 옵션</div>
                                        </div>
                                        <div class="col-xs-9">
                                            <button type="button" id="option_btn" class="btn btn-block btn-primary-outline" style="display: block" onclick="showOptions();">리워드 옵션 추가하기</button>
                                            <div id="option_group" class="option_group" style="display: none">
                                                <div class="row row-mobile-n option_select">
                                                    <div class="col-xs-12 text-right">
                                                        <div class="mt5">
                                                            <a id="plus_option" onclick="<c:set var="index" value="${index}+1"/>  plusOptions();" class="btn_none_icon btn_plus blue-800">추가하기</a>
                                                            <a id="minus_option" onclick="minusOptions();" class="btn_none_icon btn_delete red-800">삭제하기</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <c:set var="index" value="1" />
                                                <div id="option1_contents_radio2" class="row row-mobile-n otab1_contents mt10" style="margin-bottom: 20px">
                                                    <div class="col-xs-8"><input name="rewardTitle${index}" type="text" maxlength="20" placeholder="ex) 옷의 사이즈를 적어주세요." class="form-control ">
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <div class="mt10 textarea_text_leng webfont2"><span id="charNum3">0</span> / 20</div>
                                                    </div>
                                                </div>
                                                <div class="row row-mobile-n mb25">
                                                    <div class="col-xs-8">
                                                        <input  name="rewardCost${index}" placeholder="1,000원 이상 입력해 주세요." type="tel" maxlength="9" class="form-control">
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <div class="mt10 textarea_text_leng webfont2">원</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row row-mobile-n pt15 mb30">
                                        <div class="col-xs-4"></div>
                                        <div class="col-xs-2"><button type="button" class="btn btn-block btn-primary">
                                            등록
                                            <!---->
                                        </button></div>
                                        <div class="col-xs-2"><button type="button"
                                                                      class="btn btn-block btn-primary-outline">
                                            초기화
                                            <!---->
                                        </button></div>
                                        <div class="col-xs-4"></div>
                                    </div>
                                </div>
                                <div class="form-group row-mobile-n mt90">
                                    <div class="col-sm-11">
                                        <div class="form-group row-mobile-n">
                                            <div class="col-xs-6 col-sm-4 col-md-3">
                                                <button type="button" class="btn btn-block btn-primary">등록하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div id="story" class="col-md-10 col-line" style="display: none">
                <div class="row not-space">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-11">
                        <div class="md-ml30">
                            <form id="combinationForm" method="get" action="#" class="form-horizontal">

                                <div class="form-group row-mobile-n"><label for="project_story" class="col-xs-12 control-label control-label-big">
                                    <div class="text-left mb10">프로젝트 스토리를 적어주세요</div>
                                    <div style="text-align: left">
                                        <p class="form-control-static mb10 mt0"><a class="red-800">프로젝트를 시작하기 위해 필요한 내용이 없다면 승인이 되지 않습니다. 프로젝트 가이드북</a>을 읽어보시고 매력적인 스토리를 적어주세요.</p>
                                    </div>
                                </label>
                                    <div class="col-xs-12">
                                        <div>
                                            <div class="row common-flex-between-center">
                                                <div class="mb15 col-xs-9">
                                                    Enter(↵) : 문단 나눔, Shift + Enter : 줄바꿈입니다! <br>
                                                    적절한 문단/줄 바꿈만으로 멋진 프로젝트를 완성 할 수 있습니다! <br>
                                                    이미지와 영상은 꼭 버튼을 이용하여 첨부해주세요.
                                                </div>
                                                <div class="col-xs-3"><a href="https://drive.google.com/file/d/1SpeaG3Jj3gSwCQwZ51jDuFXiBelZPtiA/view" target="_blank" class="btn btn-block btn-primary" style="color: #fff4f3">디자인 가이드 보기</a>
                                                </div>
                                            </div>
                                            <div class="row row-mobile-n mb25"><label for="rewards_contents" class="col-xs-2 control-label">
                                                <div class="text-left mb10">프로젝트 스토리</div>
                                            </label>
                                                <div class="col-xs-8"><textarea rows="20" id="project_story" maxlength="70" placeholder="프로젝트 스토리를 적어주세요."
                                                                                class="form-control"></textarea></div>
                                            </div>
                                            </div><textarea id="editor0" readonlyflag="0" value="" aria-hidden="true" style="display: none;"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row-mobile-n mt90">
                                    <div class="col-sm-11">
                                        <div class="form-group row-mobile-n">
                                            <div class="col-xs-6 col-sm-4 col-md-3"><button type="button" class="btn btn-block btn-primary-outline">저장하기</button></div>
                                            <div class="col-xs-6 col-sm-4 col-md-3"><button type="button" class="btn btn-block btn-primary" onclick="nextStep_story();">다음단계</button></div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    var i = 0;

    function show(a){
        console.log("리워드 버튼 누름");
        const element_basic = document.getElementById("basic_info");
        const elememt_reword = document.getElementById("reword");
        const element_story = document.getElementById("story");
        console.log(element_basic.style.display);
        console.log(elememt_reword.style.display);
        console.log(element_story.style.display);
        if(a === 'reword'){
            element_basic.style.display = 'none';
            elememt_reword.style.display = 'block';
            element_story.style.display =  'none';
        }else if(a === 'info'){
            element_basic.style.display = 'block';
            elememt_reword.style.display = 'none';
            element_story.style.display = 'none';
        }else{
            element_basic.style.display = 'none';
            elememt_reword.style.display = 'none';
            element_story.style.display = 'block';
        }
    }

    function active(a){
        $(".list_link_tab li").removeClass("active");
        console.log("버튼 :"+a);
        if(a === 'info_btn'){
            document.getElementById('info_btn').classList.add("active");
        }else if(a === 'reword_btn'){
            document.getElementById('reword_btn').classList.add("active");
        }else{
            document.getElementById('story_btn').classList.add("active");
        }
    }

    function showOptions(){
        const element_option_btn = document.getElementById("option_btn");
        const element_reward = document.getElementById("option_group1");

        element_option_btn.style.display = 'none';
        element_reward.style.display = 'block';
    }



    function minusOptions(){
        const element_option_btn = document.getElementById("option_btn");
        const deleteDiv = document.getElementById("optionNode");
        const deleteAll = document.getElementById("option_group");
        var n = $("div[id=optionNode]").length;
        // console.log(n);
        if(n != 0){
            deleteDiv.remove();
            i--;
        }else{
            deleteAll.style.display = 'none';
            element_option_btn.style.display = 'block';
        }
        console.log("마이너스: "+i)
    }

    $('#duration_project').change(function (){
        var a = $('#duration_project').val();
        $('#duration_project').text(a);
    });

    function nextStep_info(){
        $(".list_link_tab li").removeClass("active");
        document.getElementById('story_btn').classList.add("active");
        const element_basic = document.getElementById("basic_info");
        const elememt_reword = document.getElementById("reword");
        const element_story = document.getElementById("story");

        element_basic.style.display = 'none';
        elememt_reword.style.display = 'none';
        element_story.style.display = 'block';
    }

    function nextStep_story(){
        $(".list_link_tab li").removeClass("active");
        document.getElementById('reword_btn').classList.add("active");
        const element_basic = document.getElementById("basic_info");
        const elememt_reword = document.getElementById("reword");
        const element_story = document.getElementById("story");

        element_basic.style.display = 'none';
        elememt_reword.style.display = 'block';
        element_story.style.display = 'none';
    }

</script>

<script>
    const config = {
        dateFormat: 'yy-mm-dd',
        yearRange: '1930:2022',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dayNames: ['일','월','화','수','목','금','토'],
        dayNamesShort: ['일','월','화','수','목','금','토'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        yearSuffix: '년',
        changeMonth: true,
        changeYear: true
    }
    $(function() {
        var today=new Date();
        $("#estimated_deliveryDate").datepicker(config);
        $("#duration_project").datepicker(config);
        $("#duration_project").on("change", function(){
            let year= parseInt($(this).val().split('-')[0]);
            let month= parseInt($(this).val().split('-')[1]);
            let day= parseInt($(this).val().split('-')[2]);
            console.log(year, month, day);
            var d_day=new Date(year, month, day);
            var gap=d_day.getTime()-today.getTime();
            var result=Math.ceil(gap/(1000*60*60*24));
            $("#d_day").val(result-30);
        });
    });
</script>