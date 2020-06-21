<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"
    />
    <title>
      Feed
    </title>
    <link rel="apple-touch-icon" href="../assets/img/favicon.ico" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="../assets/img/favicon.ico"
    />

    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="../assets/vendor/fontawesome/css/font-awesome.min.css"
    />
    <!-- BEGIN: Theme CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/vendor/bootstrap/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/vendor/bootstrap/css/bootstrap-extended.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/components.min.css"
    />
    <!-- END: Theme CSS-->

    <!-- BEGIN: Page CSS-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/vertical-menu.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/user-feed.min.css"
    />
    <!-- END: Page CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <!-- END: Custom CSS-->
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white static-top">
      <div class="nav-container ">
        <div class="row">
          <a class="navbar-brand" href="college-feed.html">
            <h3>Portal</h3>
          </a>
          <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarResponsive"
            aria-controls="navbarResponsive"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active mt-1">
                <a href="college-feed.html" class="nav-link h2">
                  <i class="material-icons">
                    home
                  </i></a
                >
              </li>

              <li class="nav-item mt-1">
                <a class="nav-link h3" href="college-jobs.html"
                  ><i class="material-icons">
                    work
                  </i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a class="nav-link h3" href="event-in-1.jsp"
                  ><i class="material-icons">
                    event
                  </i>
                </a>
              </li>
              <li class="nav-item mt-1">
                <a href="#" class="nav-link h3"
                  ><i class="material-icons">
                    notifications
                  </i></a
                >
              </li>
              <li class="nav-item  mt-1">
                <a href="chat.html" class="nav-link h3"
                  ><i class="material-icons">
                    textsms
                  </i></a
                >
              </li>
              <li class="nav-item mt-1">
                <a href="alumni/searchAlumniByClg.jsp" class="nav-link h3">
                  <i class="material-icons">
                    search
                  </i></a
                >
              </li>
              <div class="vertical-rule  nav-item"></div>
              <li class="dropdown dropdown-user nav-item mt-1">
                <a
                  class="dropdown-toggle nav-link dropdown-user-link h3"
                  href="#"
                  data-toggle="dropdown"
                >
                  <img
                    src="../assets/img/portrait/large/avatar-l-1.png"
                    alt="avatar"
                    class="img-fluid rounded-circle width-40 profile-image"
                  />
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                  <a class="dropdown-item" href="edit-profile.html">
                    Edit Profile</a
                  >
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="index.html"
                    ><i class="ft-power"></i> Logout</a
                  >
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <div class="content-body">
      <!-- User Feed -->
      <section id="user-feed">
        <c!-- Profile Intro -->
        <div class="row">
          <!-- Feed Section -->
          <div class="col-lg-6 col-md-6 col-sm-12">
            <!-- Write Post -->
            <section id="tabs">
              <div class="row">
                <div class="col-lg-12 ">
                  <div class="card">
                    <div
                      class="nav nav-tabs nav-fill"
                      id="nav-tab"
                      role="tablist"
                    >
                      <a
                        class="nav-item nav-link active"
                        id="nav-home-tab"
                        data-toggle="tab"
                        href="#nav-home"
                        role="tab"
                        aria-controls="nav-home"
                        aria-selected="true"
                        >Blog</a
                      >
                      <a
                        class="nav-item nav-link"
                        id="nav-profile-tab"
                        data-toggle="tab"
                        href="#nav-profile"
                        role="tab"
                        aria-controls="nav-profile"
                        aria-selected="false"
                        >Event</a
                      >
                      <a
                        class="nav-item nav-link"
                        id="nav-contact-tab"
                        data-toggle="tab"
                        href="#nav-contact"
                        role="tab"
                        aria-controls="nav-contact"
                        aria-selected="false"
                        >Notice</a
                      >
                    </div>
                    <div class="tab-content  card-body" id="nav-tabContent">
                      <div
                        class="tab-pane fade show active"
                        id="nav-home"
                        role="tabpanel"
                        aria-labelledby="nav-home-tab"
                      >
                        <form action="../controller/addBlog.jsp">
                          <div class="form-group">
                            <input
                              type="text"
                              class="form-control border-0"
                              placeholder="Blog Title"
                              name="title"
                            />
                          </div>
                          <hr class="m-0" />
                          <div class="form-group">
                            <textarea
                              placeholder="Share what you are thinking here..."
                              class="form-control border-0"
                              id="exampleFormControlTextarea1"
                              rows="5"
                              name="content"
                            ></textarea>
                          </div> 
                          <hr class="m-0" />
                          <div class="row px-1">
                            <div class="col-6 pt-2">
                              <label for="blog-image"
                                ><i class="material-icons text-primary">
                                  camera_alt
                                </i></label
                              >
                              <input
                                type="file"
                                name="image"
                                id="blog-image"
                              />
                            </div>
                            <div class="col-6 pt-1">
                              <button
                                type="submit"
                                class="btn btn-primary btn-min-width mr-1 mb-1 pull-right"
                              >
                                Post Blog
                              </button>
                            </div>
                          </div>
                        </form>
                      </div>
                      <div
                        class="tab-pane fade"
                        id="nav-profile"
                        role="tabpanel"
                        aria-labelledby="nav-profile-tab"
                      >
                        <form action="../controller/postEvent.jsp">
                          <div class="form-group">
                            <input
                              type="text"
                              class="form-control border-0"
                              placeholder="Event Title"
                              name="title"
                            />
                          </div>
                          <hr class="m-0" />
                          <div class="form-group">
                            <input
                              type="date"
                              class="form-control border-0"
                              placeholder="Event Date"
                              name="startTime"
                            />
                          </div>
                          <hr class="m-0" />
                          <div class="form-group">
                            <input
                              type="text"
                              class="form-control border-0"
                              placeholder="Event Time"
                              name="endTime"
                            />
                          </div>
                          <hr class="m-0" />
                          <div class="form-group">
                            <input
                              type="text"
                              class="form-control border-0"
                              placeholder="Place"
                              name="Place"
                            />
                          </div>
                          <hr class="m-0" />
                          <div class="form-group">
                            <input
                              type="text"
                              class="form-control border-0"
                              placeholder="Batch"
                              name="alumniYear"
                            />
                          </div>
                          <hr class="m-0" />
                          <div class="form-group">
                            <select
                              name="type"
                              id="type"
                              class="form-control border-0"
                            >
                              <option selected="">Type</option>
                              <option>Meetup</option>
                              <option>Seminar</option>
                              <option>Get together</option>
                              <option>Other</option>
                            </select>
                          </div>
                          <hr class="m-0" />
                          <div class="form-group">
                            <textarea
                              placeholder="Event description goes here..."
                              class="form-control border-0"
                              id="exampleFormControlTextarea1"
                              rows="5"
                              name="eventDesc"
                            ></textarea>
                          </div>
                          <hr class="m-0" />
                          <div class="row px-1">
                            <div class="col-6 pt-2">
                              <label for="blog-image"
                                ><i class="material-icons text-primary">
                                  camera_alt
                                </i></label
                              >
                              <input
                                type="file"
                                name="image"
                                id="blog-image"
                              />
                            </div>
                            <div class="col-6 pt-1">
                              <button
                                type="submit"
                                class="btn btn-primary btn-min-width mr-1 mb-1 pull-right"
                              >
                                Post Event
                              </button>
                            </div>
                          </div>
                        </form>
                      </div>
                      <div
                        class="tab-pane fade"
                        id="nav-contact"
                        role="tabpanel"
                        aria-labelledby="nav-contact-tab"
                      >
                        <form action="../controller/postNotice.jsp">
                          <div class="form-group">
                            <input
                              type="text"
                              class="form-control border-0"
                              placeholder="Notice Title"
                              name="title"
                            />
                          </div>
                          <hr class="m-0" />
                          <div class="form-group">
                            <textarea
                              placeholder="Notice description goes here..."
                              class="form-control border-0"
                              id="exampleFormControlTextarea1"
                              rows="5"
                              name="content"
"                            ></textarea>
                          </div>
                          <hr class="m-0" />
                          <div class="row px-1">
                            <div class="col-12 pt-1 pull-right">
                              <button
                                type="submit"
                                class="btn btn-primary btn-min-width mr-1 mb-1 pull-right"
                              >
                                Post Notice 
                              </button>
                            </div>
                          </div>
                        </form>
                      </div>
                      <div
                        class="tab-pane fade"
                        id="nav-about"
                        role="tabpanel"
                        aria-labelledby="nav-about-tab"
                      >
                        Et et consectetur ipsum labore excepteur est proident
                        excepteur ad velit occaecat qui minim occaecat veniam.
                        Fugiat veniam incididunt anim aliqua enim pariatur
                        veniam sunt est aute sit dolor anim. Velit non irure
                        adipisicing aliqua ullamco irure incididunt irure non
                        esse consectetur nostrud minim non minim occaecat. Amet
                        duis do nisi duis veniam non est eiusmod tempor
                        incididunt tempor dolor ipsum in qui sit. Exercitation
                        mollit sit culpa nisi culpa non adipisicing
                        reprehenderit do dolore. Duis reprehenderit occaecat
                        anim ullamco ad duis occaecat ex.
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>

            <!-- User Post 1 -->
            <div class="card text-white bg-secondary shadow-none">
              <div class="card-body">
                <p class="mb-25">Something about event maybe date?</p>
                <h3 class="text-white">Event Title</h3>
                <p class="card-text">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Molestiae temporibus deserunt delectus atque ex enim libero
                  dicta, sequi iure officia ipsum iste adipisci, quod itaque
                  sapiente ab eos corrupti modi.
                </p>
              </div>
            </div>

            <!-- User Post 2 -->
            <div class="card shadow-none">
              <div class="body">
                <div class="row p-2">
                  <div class="col-sm-6">
                    <div class="row">
                      <div class="col-lg-3 col-3">
                        <img
                          src="../assets/img/portrait/small/avatar-s-8.png"
                          alt=""
                          class="img-fluid rounded-circle width-50"
                        />
                      </div>
                      <div class="col-lg-8 col-7 p-0">
                        <h5 class="m-0">Elaine Dreyfuss</h5>
                        <p>2 hours ago</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="write-post">
                  <div class="col-sm-12 px-2">
                    <p class="mt-1">
                      When searching for videos of a different singer, Scooter
                      Braun, a former marketing executive of So So Def
                      Recordings, clicked on one of Bieber's 2007 videos by
                      <br />
                      <a href="single-blog.html">Read More.. </a>
                    </p>
                  </div>
                  <hr class="m-0" />
                  <div class="row p-1">
                    <div class="col-3">
                      <span class="pr-1 mr-1"
                        ><i class="fa fa-heart-o" aria-hidden="true"></i>
                        120</span
                      >
                      <span class="pr-1"
                        ><i class="material-icons align-middle ">
                          comment
                        </i>
                        44</span
                      >
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- User Post 3 -->
            <div class="card shadow-none">
              <div class="body">
                <div class="row p-2">
                  <div class="col-sm-6">
                    <div class="row">
                      <div class="col-lg-3 col-3">
                        <img
                          src="../assets/img/portrait/small/avatar-s-8.png"
                          alt=""
                          class="img-fluid rounded-circle width-50"
                        />
                      </div>
                      <div class="col-lg-8 col-7 p-0">
                        <h5 class="m-0">Elaine Dreyfuss</h5>
                        <p>2 hours ago</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="write-post">
                  <div class="col-sm-12 px-2">
                    <h4>The emergence and growth of blogs</h4>
                    <p class="mt-1">
                      When searching for videos of a different singer, Scooter
                      Braun, a former marketing executive of So So Def
                      Recordings, clicked on one of Bieber's 2007 videos by
                      <br />
                      <a href="single-blog.html">Read More.. </a>
                    </p>
                  </div>
                  <hr class="m-0" />
                  <div class="row p-1">
                    <div class="col-3">
                      <span class="pr-1 mr-1"
                        ><i class="fa fa-heart-o" aria-hidden="true"></i>
                        120</span
                      >
                      <span class="pr-1"
                        ><i class="material-icons align-middle ">
                          comment
                        </i>
                        44</span
                      >
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="card shadow-none">
              <div class="card-body">
                <div class="card-text">
                  <h5 class="mt-1 mb-0">Number of registered alumni: <span class="m-0"><a href="">1500</a></span> </h5>
                </div>
                <div class="card-text">
                  <h5 class="mt-1 mb-0">Number of available jobs: <span class="m-0"><a href="">100</a></span> </h5>
                </div>
                <div class="card-text">
                  <h5 class="mt-1 mb-0">Number of blogs posted: <span class="m-0"><a href="">150</a></span> </h5>
                </div>
                <div class="card-text">
                  <h5 class="mt-1 mb-0">Number of events hosted: <span class="m-0"><a href="">15</a></span> </h5>
                </div>
              </div>
            </div>
            <div class="card shadow-none">
              <div id="barchart_material" style=" height: 500px;"></div>
            </div>
            <div class="card shadow-none">
              <div id="chart_div" style="width: 575px; height: 500px;"></div>
            </div>

          </div>
        </div>
      </section>
      <!--/ User Feed -->
    </div>
    <script src="../assets/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script
    type="text/javascript"
    src="https://www.gstatic.com/charts/loader.js"
  ></script>
  <script type="text/javascript">
    google.charts.load("current", { packages: ["corechart"] });
    google.charts.setOnLoadCallback(drawSeriesChart);

    function drawSeriesChart() {
      var data = google.visualization.arrayToDataTable([
        ["ID", "Life Expectancy", "Fertility Rate", "Region", "Population"],
        ["CAN", 80.66, 1.67, "North America", 33739900],
        ["DEU", 79.84, 1.36, "Europe", 81902307],
        ["DNK", 78.6, 1.84, "Europe", 5523095],
        ["EGY", 72.73, 2.78, "Middle East", 79716203],
        ["GBR", 80.05, 2, "Europe", 61801570],
        ["IRN", 72.49, 1.7, "Middle East", 73137148],
        ["IRQ", 68.09, 4.77, "Middle East", 31090763],
        ["ISR", 81.55, 2.96, "Middle East", 7485600],
        ["RUS", 68.6, 1.54, "Europe", 141850000],
        ["USA", 78.09, 2.05, "North America", 307007000]
      ]);

      var options = {
        title:
          "Correlation between life expectancy, fertility rate " +
          "and population of some world countries (2010)",
        hAxis: { title: "Life Expectancy" },
        vAxis: { title: "Fertility Rate" },
        bubble: { textStyle: { fontSize: 11 } }
      };

      var chart = new google.visualization.BubbleChart(
        document.getElementById("series_chart_div")
      );
      chart.draw(data, options);
    }
  </script>
  <!---->

  <!-- DOMAINS ML/AI-->
  <script type="text/javascript">
    google.charts.load("current", { packages: ["bar"] });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["SPECIALIAZATIONS", "Machine learning", "Robotics", "Multimedia"],
        ["2014", 1000, 400, 200],
        ["2015", 1170, 460, 250],
        ["2016", 660, 1120, 300],
        ["2017", 1030, 540, 350]
      ]);

      var options = {
        chart: {
          title: "STATISTICS BASED ON ALUMNI WORKING IN DIFFERENT DOMAINS",
          subtitle: ""
        },
        bars: "horizontal" // Required for Material Bar Charts.
      };

      var chart = new google.charts.Bar(
        document.getElementById("barchart_material")
      );

      chart.draw(data, google.charts.Bar.convertOptions(options));
    }
  </script>
  <!---->

  <script type="text/javascript">
    google.charts.load("current", { packages: ["corechart", "bar"] });
    google.charts.setOnLoadCallback(drawStuff);

    function drawStuff() {
      var button = document.getElementById("change-chart");
      var chartDiv = document.getElementById("chart_div");

      var data = google.visualization.arrayToDataTable([
        ["COLLEGE", "JOBS", "STARTUPS"],
        ["PESs College ", 8000, 23.3],
        ["St. Xaviers College", 24000, 4.5],
        ["Fr. Agnel College", 30000, 14.3],
        ["V.M. Salgaocar", 50000, 0.9],
        ["Nirmala Institute", 60000, 13.1]
      ]);

      var materialOptions = {
        width: 900,
        chart: {
          title: "CURRENT STATUS OF ALUMNI",
          subtitle: "JOB OR ENTERPRENEURS"
        },
        series: {
          0: { axis: "distance" }, // Bind series 0 to an axis named 'distance'.
          1: { axis: "brightness" } // Bind series 1 to an axis named 'brightness'.
        },
        axes: {
          y: {
            distance: { label: "Number of alumni" }, // Left y-axis.
            brightness: { side: "right", label: "Percentage of status" } // Right y-axis.
          }
        }
      };

      var classicOptions = {
        width: 900,
        series: {
          0: { targetAxisIndex: 0 },
          1: { targetAxisIndex: 1 }
        },
        title:
          "Nearby galaxies - distance on the left, brightness on the right",
        vAxes: {
          // Adds titles to each axis.
          0: { title: "parsecs" },
          1: { title: "apparent magnitude" }
        }
      };

      function drawMaterialChart() {
        var materialChart = new google.charts.Bar(chartDiv);
        materialChart.draw(
          data,
          google.charts.Bar.convertOptions(materialOptions)
        );
        button.innerText = "Change to Classic";
        button.onclick = drawClassicChart;
      }

      function drawClassicChart() {
        var classicChart = new google.visualization.ColumnChart(chartDiv);
        classicChart.draw(data, classicOptions);
        button.innerText = "Change to Material";
        button.onclick = drawMaterialChart;
      }

      drawMaterialChart();
    }
  </script>
  <!----->

  <!-- DESIGNATION-->
  <script
    type="text/javascript"
    src="https://www.gstatic.com/charts/loader.js"
  ></script>
  <script type="text/javascript">
    google.charts.load("current", { packages: ["corechart"] });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["DESIGNATION", "NUMBER OF ALUMNI"],
        ["Software Development Team", 11],
        ["Directors", 2],
        ["Bussiness and Marketing", 3],
        ["Chief officiers", 2],
        ["Managerial Jobs", 7]
      ]);

      var options = {
        title: "STATISTICS AS PER DESIGNATION OF THE ALUMNI"
      };

      var chart = new google.visualization.PieChart(
        document.getElementById("piechart")
      );

      chart.draw(data, options);
    }
  </script>
  </body>
</html>
