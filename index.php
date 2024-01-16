<html>
<head>
    <title>ParkSys</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style>
        .aircraft{ width:100%; float:left;}
        .aircraft ul{ margin:0; padding:0; list-style-type:none;}
        .aircraft ul li{ padding:7px; border:2px solid #ccc; float:left; margin:10px 7px; background:none; width:auto; height:auto;}
        .aircraft img{ width:110px;}
    </style>
</head>
<body>
<div class="container">
    <h2>AIRCRAFT PARKING N°1 </h2>
    <div>
        <div class="aircraft">
            <ul class="reorder-aircraft">
                <?php
                include_once("db_connect.php");
                $sql_query = "SELECT id, photo FROM aircraft ORDER BY position";
                $resultset = mysqli_query($conn , $sql_query) or die("database error:". mysqli_error($conn));
                $data_records = array();
                while( $row = mysqli_fetch_assoc($resultset)) { ?>
                    <li id="<?php echo $row['id']; ?>" class="ui-sortable-handle">
                        <a href="javascript:void(0);">
                            <img src="img/<?php echo $row['photo']; ?>" alt="">
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        $("ul.reorder-aircraft").sortable({
            update: function( event, ui ) {
                updateOrder();
            }
        });
    });
    function updateOrder() {
        var item_order = new Array();
        $('ul.reorder-aircraft li').each(function() {
            item_order.push($(this).attr("id"));
        });
        var order_string = 'order='+item_order;
        $.ajax({
            type: "GET",
            url: "order_update.php",
            data: order_string,
            cache: false,
            success: function(data){
                // $("#test").html(data);
            }
        });
    }
</script>
</body>
</html>