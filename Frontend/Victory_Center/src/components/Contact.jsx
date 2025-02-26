import React, { useState, useEffect } from 'react';
import '../assets/bootstrap/css/bootstrap.min.css';
import '../assets/fonts/font-awesome.min.css';
import '../assets/fonts/themify-icons.css';
import '../assets/owlcarousel/css/owl.carousel.css';
import '../assets/owlcarousel/css/owl.theme.css';

const Contact = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    subject: '',
    message: '',
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(formData);
  };

  useEffect(() => {
    const script1 = document.createElement('script');
    script1.src = "assets/js/jquery-1.12.4.min.js";
    script1.async = true;
    document.body.appendChild(script1);

    const script2 = document.createElement('script');
    script2.src = "assets/bootstrap/js/bootstrap.min.js";
    script2.async = true;
    document.body.appendChild(script2);

    return () => {
      document.body.removeChild(script1);
      document.body.removeChild(script2);
    };
  }, []);

  return (
    <>
    {/* START SECTION TOP */}
    <section className="section-top">
                <div className="container">
                    <div className="col-lg-10 offset-lg-1 text-center">
                        <div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                            <h1>Get In Touch</h1>
                            <ul>
                                <li><a href="index-2.html">Home</a></li>
                                <li> / Contact</li>
                            </ul>
                        </div> {/* //.HERO-TEXT */}
                    </div> {/* END COL */}
                </div> {/* END CONTAINER */}
            </section>
            {/* END SECTION TOP */}

            {/* START ADDRESS */}
            <section className="address_area section-padding">
                <div className="container">
                    <div className="row text-center">
                        <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s" data-wow-offset="0">
                            <div className="single_address">
                                <i className="ti-map"></i>
                                <h4>Our Location</h4>
                                <p>Number 34/42 Vu Ngoc Phan Street - Dong Da District - Ha Noi</p>
                                <p>Number 68 Van Loc ,Bau , Kim Chung, Dong Anh</p>
                            </div>
                        </div> {/* END COL */}
                        <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s" data-wow-offset="0">
                            <div className="single_address sabr">
                                <i className="ti-mobile"></i>
                                <h4>Telephone</h4>
                                <p>(+1) 517 397 7100</p>
                                <p>(+1) 411 315 8138</p>
                            </div>
                        </div> {/* END COL */}
                        <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                            <div className="single_address">
                                <i className="ti-email"></i>
                                <h4>Send email</h4>
                                <p>Info@example.com</p>
                                <p>admin@example.com</p>
                            </div>
                        </div> {/* END COL */}
                    </div> {/* END ROW */}
                </div> {/* END CONTAINER */}
            </section>
            {/* END ADDRESS */}
            
      {/* CONTACT */}
      <div id="contact" className="contact_area section-padding">
        <div className="container">
          <div className="section-title-two">
            <h2>Send your message.</h2>
          </div>
          <div className="row">
            <div className="offset-lg-1 col-lg-10 col-sm-12 col-xs-12">
              <div className="contact">
                <form className="form" onSubmit={handleSubmit}>
                  <div className="row">
                    <div className="form-group col-md-6">
                      <label htmlFor="name">Name</label>
                      <input
                        type="text"
                        name="name"
                        className="form-control"
                        value={formData.name}
                        onChange={handleChange}
                        required
                      />
                    </div>
                    <div className="form-group col-md-6">
                      <label htmlFor="email">Your Email</label>
                      <input
                        type="email"
                        name="email"
                        className="form-control"
                        value={formData.email}
                        onChange={handleChange}
                        required
                      />
                    </div>
                    <div className="form-group col-md-12">
                      <label htmlFor="subject">Your Subject</label>
                      <input
                        type="text"
                        name="subject"
                        className="form-control"
                        value={formData.subject}
                        onChange={handleChange}
                        required
                      />
                    </div>
                    <div className="form-group col-md-12">
                      <label htmlFor="message">Your Message</label>
                      <textarea
                        rows="6"
                        name="message"
                        className="form-control"
                        value={formData.message}
                        onChange={handleChange}
                        required
                      ></textarea>
                    </div>
                    <div className="col-md-12 text-center">
                      <button
                        type="submit"
                        className="btn_one"
                        title="Submit Your Message!"
                      >
                        Send Message
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      {/* END CONTACT */}

      {/* MAP SECTION */}
      <div id="map" className="map_area section-padding">
        <div className="container">
          <h2 className="section-title-two text-center">Location</h2>
          <div className="map-responsive">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.096949073242!2d105.77971427471442!3d21.02880648777807!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b32b842a37%3A0xe91a56573e7f9a11!2zOGEgVMO0biBUaOG6pXQgVGh1eeG6v3QsIE3hu7kgxJDDrG5oLCBD4bqndSBHaeG6pXksIEjDoCBO4buZaSAxMDAwMDAsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1732807940609!5m2!1svi!2s"
              width="100%"
              height="400"
              style={{ border: 0 }}
              allowFullScreen=""
              loading="lazy"
              referrerPolicy="no-referrer-when-downgrade"
            ></iframe>
          </div>
        </div>
      </div>
    </>
  );
};

export default Contact;
