import logo from'../assets/images/all-img/logo.png'
import e1 from'../assets/images/event/e1.png'

const Event_Single = () =>{
    return (
        <>
	   	  
							
	<section className="section-top">
		<div className="container">
			<div className="col-lg-10 offset-lg-1 text-center">
				<div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
					<h1>Single Event</h1>
					<ul>
						<li><a href="index.html">Home</a></li>
						<li> / Single Event</li>
					</ul>
				</div>
			</div>
		</div>
	</section>	

		<section className="our_event section-padding">
			<div className="container">
				<div className="row">	
					<div className="col-md-8 col-sm-8 col-xs-12">
						<div className="single_event_single">
							<img alt="" className="img-responsive" src={e1}/>
							<div className="single_event_text_single">
								 <h4>Architecture Design of International Art Fair 2023</h4>
								 <span><i className="fa fa-calendar"></i>10 Oct 2023</span>
								 <span><i className="fa fa-clock-o"></i>9.00 AM-01.00 PM</span>
								 <span><i className="fa fa-table"></i><strong>3783 Columbia Mine Road Shinnston</strong></span>
								 <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the when an unknown printer.</p>
							</div>
							<div className="single_event_text_single_description">
								<h3>Event Descriptions</h3>
								<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
							 </div>
						</div>
					</div>
					<div className="col-md-4 col-sm-4 col-xs-12">
						<div className="event_info">
							<h3>Buy Ticket</h3>
							<ul>
								<li>
									<i className="fa fa-calendar"></i>
									<h4>Total Seats</h4>
									<p>1200</p>
								</li>
								<li>
									<i className="fa fa-clock-o"></i>
									<h4>Ticket price</h4>
									<p>$50</p>
								</li>
								<li>
									<i className="fa fa-phone"></i>
									<h4>Contact for details</h4>
									<p>+88 123 456 789</p>
								</li>
								<li>
									<i className="fa fa-map"></i>
									<h4>Event Venue</h4>
									<p>3783 Columbia Mine Road Shinnston, WV 26431 </p>
								</li>
							</ul>
							<div className="event_info_register">
								<a className="btn_one" href="course.html">Register For book</a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</section>
		
        </>
    )
}
export default Event_Single;