import e1 from'../assets/images/event/e1.png'
import { Link } from 'react-router-dom';
const Event = () =>{
    return(
    <> 
	<section className="section-top">
		<div className="container">
			<div className="col-lg-10 offset-lg-1 text-center">
				<div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<h1>All Event</h1>
					<ul>
						<li><a href="index-2.html">Home</a></li>
						<li> / Event</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	
	<section className="our-event section-padding">
		<div className="container">
			<div className="section-title">
				<h2>Upcoming Events</h2>
				<p>Join With Us <span><u>Our Events</u></span></p>
			</div>
			<div className="row">
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="event-slide">
						<div className="event-img">
							<img src={e1} alt=""/>
							<div className="event-date">
								<span className="date">20</span>
								<span className="month">Oct</span>
							</div>
						</div>
						<div className="event-content">
							<h3><Link to='/single_event'>Electrical Engineering of Batparder new event</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="event-slide">
						<div className="event-img">
                        <img src={e1} alt=""/>
							<div className="event-date">
								<span className="date">22</span>
								<span className="month">Oct</span>
							</div>
						</div>
						<div className="event-content">
							<h3><Link to='/single_event'>Architecture Design of International Art Fair 2023</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="event-slide">
						<div className="event-img">
                        <img src={e1} alt=""/>
							<div className="event-date">
								<span className="date">22</span>
								<span className="month">Oct</span>
							</div>
						</div>
						<div className="event-content">
							<h3><Link to='/single_event'>Architecture Design of International Art Fair 2023</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="event-slide es">
						<div className="ed_mb">
							<span className="date">26</span>
							<span className="month">Oct</span>
						</div>
						<div className="event-content ec_pd">
							<h3><Link to='/single_event'>Chiter astana event</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
					<div className="event-slide es">
						<div className="ed_mb">
							<span className="date">29</span>
							<span className="month">Oct</span>
						</div>
						<div className="event-content ec_pd">
							<h3><Link to='/single_event'>Dasel Bhai Program</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="event-slide es">
						<div className="ed_mb">
							<span className="date">26</span>
							<span className="month">Oct</span>
						</div>
						<div className="event-content ec_pd">
							<h3><Link to='/single_event'>Chiter astana event</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
					<div className="event-slide es">
						<div className="ed_mb">
							<span className="date">29</span>
							<span className="month">Oct</span>
						</div>
						<div className="event-content ec_pd">
							<h3><Link to='/single_event'>Dasel Bhai Program</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="event-slide">
						<div className="event-img">
                        <img src={e1} alt=""/>
							<div className="event-date">
								<span className="date">20</span>
								<span className="month">Oct</span>
							</div>
						</div>
						<div className="event-content">
							<h3><Link to='/single_event'>Electrical Engineering of Batparder new event</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="event-slide">
						<div className="event-img">
                        <img src={e1} alt=""/>
							<div className="event-date">
								<span className="date">22</span>
								<span className="month">Oct</span>
							</div>
						</div>
						<div className="event-content">
							<h3><Link to='/single_event'>Architecture Design of International Art Fair 2023</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
				</div>
				<div className="col-lg-4 col-sm-6 col-xs-12">
					<div className="event-slide">
						<div className="event-img">
                        <img src={e1} alt=""/>
							<div className="event-date">
								<span className="date">22</span>
								<span className="month">Oct</span>
							</div>
						</div>
						<div className="event-content">
							<h3><Link to='/single_event'>Architecture Design of International Art Fair 2023</Link></h3>
							<span><i className="fa fa-clock-o"></i>10.00AM - 12.00PM</span>
							<span><i className="fa fa-table"></i><strong>At Penn School</strong></span>
							<p>Lorem ipsum dolor sit amet magna consectetur adipisicing elit.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	   
    </>
    )
}

export default Event;