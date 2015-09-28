<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../../favicon.ico">

    <title>Application-Center</title>

    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/carousel.css" rel="stylesheet">

    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>

    <script>

        $(document).ready(function () {
            var applicationCode = window.location.pathname.split("/").reverse()[0];
            $.ajax({
                type: 'get',
                cache: false,
                dataType: 'json',
                url: '/application/center/detail/' + applicationCode,
                success: function (data) {
                    $("#applicationName").val(data.data.name)
                    $("#applicationCode").val(data.data.code)
                    $("#emailGroup").val(data.data.emailGroup)
                    $("#teamCode").val(data.data.teamCode)
                    $("#applicationHead").val(data.data.developers)
                }
            })
        })

    </script>
</head>
<body>

<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/">Application-Center</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/application/center/list">iApplication</a></li>
                        <li><a href="#">iConfig</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>

<div class="container marketing">
    <hr class="featurette-divider">
    <h3>预览应用</h3>

    <form role="form" style="position: relative; left:20%;" id="applicationPreviewForm">
        <div class="form-group">
            <label for="applicationName">应用名称:</label>
            <input type="text" class="form-control" maxlength="20" size="30px" name="name" id="applicationName" readonly>
        </div>
        <div class="form-group">
            <label for="applicationCode">应用编号:</label>
            <input type="text" class="form-control" maxlength="20" size="30px" name="code" id="applicationCode" readonly>
        </div>
        <div class="form-group">
            <label for="emailGroup">邮件组:</label>
            <input type="email" class="form-control" maxlength="20" size="30px" name="emailGroup" id="emailGroup" readonly>
        </div>
        <div class="form-group">
            <label for="teamCode">团队编号:</label>
            <input type="text" class="form-control" maxlength="100" size="30px" name="teamCode" id="teamCode">
        </div>
        <div class="form-group">
            <label for="applicationHead">应用负责人:</label>
            <span class="label label-info">负责人之间使用/分割</span>
            <input type="text" class="form-control" size="30px" name="developers" id="applicationHead" readonly>
        </div>
    </form>

    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>

        <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>

</div>
<!-- /.container -->


</body>
</html>
