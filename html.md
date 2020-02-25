div태그 좌우 반으로 나누기

    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" 
              content="width=device-width, height=device-height, 
                         minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
        <title>Insert title here</title>
        <style>
        div {
            width: 100%;
            height: 300px;        
            border: 1px solid #000;
        }
        div.left {
            width: 50%;
            float: left;
            box-sizing: border-box;        
            background: #ff0;
        }
        div.right {
            width: 50%;
            float: right;
            box-sizing: border-box;        
            background: #0ff;
        }
        </style>
    </head>

    <body>
        <div>
            <div class="left"></div>
            <div class="right"></div>
        </div>
    </body>
    </html>
