<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Index</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">	
		<script src="/js/main.js">
		</script>
	</head>

	<body>
		<div id="wrapper">
			<div id = "top-level">
				<c:if test="${id == null}">
					<a href="/register">Create account/ Login</a>
				</c:if>
				<c:if test="${id != null}">
					<a href="/logout">logout</a>
				</c:if>
				<a id="myBtn" title="Go to top" onclick="topFunction()">Back To Top</a>
				
			</div>
			<div id = "header">
				<h3>Zachary T. Jensen</h3>
				<p id="description1">
					Programmer
				</p>
				<img id ="me"src="/imgs/me.jpg" alt="Self image">
					<p id="web">Web Developer</p>
					<p id="game">Game Developer/Designer</p>
			</div>
			<div id="body">
				<div id="about">
					<h1>About:</h1>
					<p>Born June 2nd 1994, Zachary Jensen Beg</p>

				</div>
				<div id = "examples">	
					<h1>Full Stack Developer:</h1>

					<div id="Python">
						<h2>Python:</h2>
						<p>Studied python, flash, Django using raw SQL databases</p>
						
						

						<h3>Model Example</h3>
					<div class="code">
						<pre><code>
								class User(models.Model):
								name = models.CharField(max_length=20)
								alias = models.CharField(max_length= 20)
								email = models.CharField(max_length= 50)
								password = models.CharField(max_length= 255)
								created_at = models.DateTimeField(auto_now_add=True)
								updated_at = models.DateTimeField(auto_now=True)
								manager= UserManager()
						</code>
						</pre>
					</div>
					</div>
					<div id="MEAN">
						<h2>MEAN (Javascript):</h2>
						<p>Full understanding of Javscript, MongoDb, Express, 
							Angular, and Node:</p>
							<h3>Fetch Querry Examples</h3>
					<div class="code">
						<pre><code>
								ngOnInit() {
									console.log(this.user);
									this.create()
									this._us.getOne(this.id).subscribe(
									  (question) => {this.question = question.json()},
									  (err) => {console.error(err)},
									  () => {console.log("Yay! We're done!")}
								  )
									this._us.getMany(this.id).subscribe(
									  (success)=>{this.answers = success.json()},
									  (err)=>{console.log('erors')},
									)
								  }
						</code>
						</pre>
					</div>

					</div>
					<div id="JAVA">
						<h1>Java:</h1>
						<p>Java, Spring Tool Suite, SQL intergration, and Spring Security</p>
						<h3>Post and Request Controller Examples</h3>
						<div class="code">
							<pre><code>
									@PostMapping("/dashboard/newPool")
									public String newPool(HttpSession session, 
									Model model, @ModelAttribute("pool") Pool pool){
										User host = _us.findById((Long)session.getAttribute("id"));
										_ps.createPool( host, pool);
										return "redirect:/dashboard";
									}
									@RequestMapping("/search")
									public String yourMethod(HttpSession s, 
									@RequestParam("location") String location, Model model){
										List-Pool-allPools = _ps.getAllPools();
										List-Pool-foundPools = new ArrayList--();
										for(Pool pool: allPools){
											if(pool.getAddress().contains(location)){
												foundPools.add(pool);
											}
										}
										model.addAttribute("id", s.getAttribute("id"));
										model.addAttribute("foundPools",foundPools);
										return "searched";
									}	
							</code>
							</pre>
						</div>
					</div>

				</div>
			</div>
			<div id="work examples">
				<h1>Examples:</h1>
				<h3>
					<a href="www.nationalshrineshops.com">
						National Shrine Shops
					</a></h3>

				<h3>8-bit style side scroller:</h3>
				<a href="/game"><img id="game-img"src="/imgs/game.jpg" alt="game"></a>
			</div>
			<div id = "footer">

			</div>
		</div>
	</body>
</html>