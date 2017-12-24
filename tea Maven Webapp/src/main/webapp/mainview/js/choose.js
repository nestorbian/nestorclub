$(function(){
    var t = $(".text_box");
    $(".add").click(function(){       
        t.val(parseInt(t.val())+1);
        setTotal();
    });
    $(".min").click(function(){
        t.val(parseInt(t.val())-1);
        setTotal();
    });
       function setTotal(){
       var tt=$(".text_box").val();
       var max=$(".goodstock").val();
       var price=$(".goodprice").val();
       var sum=$(".sum");
       if(parseInt(tt)<1)
       {
        t.val(1);
        sum.val(price*t.val());
        }
        else if(parseInt(tt)>=parseInt(max))
        {
        t.val(parseInt(max));
        sum.val(price*t.val());
        }
        else{
        sum.val(price*t.val());
        }
       }
});