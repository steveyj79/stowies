<cfif StructKeyExists(url, "ss") AND url.ss eq 1>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Business Casual - Start Bootstrap Theme</title>

        <!-- Bootstrap Core CSS -->
        <link href="/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="/css/business-casual.css" rel="stylesheet">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <cfinclude template="header.cfm">

        <cfinclude template="nav.cfm">

        <cfif StructKeyExists(url, "a") and url.a neq "">
            <cfswitch expression = "#url.a#">
                <cfcase value="home">
                    <cfinclude template="home.cfm">
                </cfcase>
                <cfcase value="about">
                    <cfinclude template="about.cfm">
                </cfcase>
                <cfcase value="beer">
                    <cfinclude template="beer.cfm">
                </cfcase>
                <cfcase value="blog">
                    <cfinclude template="blog.cfm">
                </cfcase>
                <cfcase value="contact">
                    <cfinclude template="contact.cfm">
                </cfcase>
            </cfswitch>
        <cfelse>
            <cfinclude template="home.cfm">
        </cfif>

        <cfinclude template="footer.cfm">

        <!-- jQuery -->
        <script src="/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/js/bootstrap.min.js"></script>

        <!-- Script to Activate the Carousel -->
        <script>
        $('.carousel').carousel({
            interval: 5000 //changes the speed
        })
        </script>

    </body>

    </html>
<cfelse>
    <cfinclude template="holdingPage.html">
</cfif>
