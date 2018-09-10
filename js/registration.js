$(document).ready(function() {
                 $.ajax({url:"generalcode/capcode.jsp",success:function (data){
                      $("#s1").text(data);
                      $("#hcapcode").val(data);
                    }});
                
                $("#ref").click(function() {
                    $.ajax({url:"generalcode/capcode.jsp",success:function (data){
                      $("#s1").text(data);
                      $("#hcapcode").val(data);
                    }});
                });
              $("#s1").bind("cut copy paste",function (e){
                  e.preventDefault();
              });  
                $("#capcode").bind("cut copy paste",function (e){
                  e.preventDefault();
              });
                
            });
