/* 일정 간격마다 YES NOW 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".yesnow-img");
    var title = $(".yesnow-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 4){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 국내도서 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".korean-img");
    var title = $(".korean-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 7){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 외국도서 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".foreign-img");
    var title = $(".foreign-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 6){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 중고샵 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".used-img");
    var title = $(".used-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 6){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 eBook 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".eBook-img");
    var title = $(".eBook-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 7){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 크레마클럽 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".crema-img");
    var title = $(".crema-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 6){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 CD/LP 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".CDLP-img");
    var title = $(".CDLP-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 6){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 DVD 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".DVD-img");
    var title = $(".DVD-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 6){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 문구/GIFT 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".gift-img");
    var title = $(".gift-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 7){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 

/* 일정 간격마다 티켓 하단 메뉴 순차 변경 */
$(function(){
    
    var index = 1;
    var img = $(".ticket-img");
    var title = $(".ticket-title");

    img.hide();
    title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});
    img.eq(0).show();
    title.eq(0).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});

    var slide = function(){
        img.hide();
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666"});

        img.eq(index).show();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        index++;
        if(index >= 7){index = 0;}
    }

    var setSlide = setInterval(slide,3000);

    title.mouseover(function(){
        clearInterval(setSlide);
        title.css({backgroundColor:"#f8f8f8"}).children("a").css({color:"#666666"});
        img.hide();

        index=$(this).index();
        title.eq(index).css({backgroundColor:"#302f2f"}).children("a").css({color:"white"});
        img.eq(index).show();
    }).mouseout(function(){
        setSlide = setInterval(slide,3000);
    });
}); 