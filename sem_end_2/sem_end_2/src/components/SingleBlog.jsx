import React from 'react';
import { Link } from 'react-router-dom';
import sidebar from '../assets/images/blog/blog-1.png';
import adbanner from '../assets/images/blog/banner.jpg';
import author from '../assets/images/blog/author.jpg';
import BlogContent1 from '../assets/images/blog/3.png';

const SingleBlog = () => {
  return (
    <div>
      {/* SECTION TOP */}
      <section className="section-top">
    <div className="container">
      <div className="col-lg-10 offset-lg-1 text-center">
        <div
          className="section-top-title wow fadeInRight"
          data-wow-duration="1s"
          data-wow-delay="0.3s"
          data-wow-offset="0"
        >
          <h1>Single Blog</h1>
          <ul>
            <li><a href="index-2.html">Home</a></li>
            <li>/ Single Blog</li>
          </ul>
        </div>
      </div>
    </div>
  </section>

      {/* BLOG SECTION */}
      <section className="blog-page section-padding">
        <div className="container">
          <div className="row">
            <div className="col-lg-7 col-sm-12 col-xs-12">
              <div className="arti_single">
                <div className="arti_img_two">
                <img
                src={BlogContent1}
                className="img-fluid"
                alt="Blog image"
              />
                </div>
                <div className="arti_content">
                  <p>
                    I almost couldn’t believe it was real! For my first test I had
                    generate some website copy for me. I provided about 50 words
                    to describe my business along with my business name. generated
                    two variants of copy each with several paragraphs of
                    professional sounding copy. I immediately shared the results
                    with a friend who couldn’t believe it was written by an AI. is
                    worth every penny and then some!
                  </p>
                </div>
                <div className="arti_sp">
                  <h2>Enhancing Your E-commerce Store With AI Writing Assistants</h2>
                  <img
                src={BlogContent1}
                className="img-fluid"
                alt="Blog image"
              />
                  <p>
                    I immediately shared the results with a friend who couldn’t
                    believe it was written by an AI. is worth every penny and then
                    some. Describe my business along with my business name.
                    generated two variants of copy each with several paragraphs of
                    professional sounding copy. I immediately shared the results
                    with a friend who couldn’t believe it was written by an AI. is
                    worth every penny and then some!
                  </p>
                </div>
                <div className="share_sp">
                  <h4>Share</h4>
                  <ul>
                    <li><a href="#"><span className="ti-facebook"></span> Facebook</a></li>
                    <li><a href="#"><span className="ti-twitter"></span> Twitter</a></li>
                    <li><a href="#"><span className="ti-instagram"></span> Instagram</a></li>
                    <li><a href="#"><span className="ti-linkedin"></span> Linkedin</a></li>
                  </ul>
                </div>
              </div>

              {/* AUTHOR SECTION */}
              <div className="author_part">
                <h3 className="blog_head_title">About the author</h3>
                <div className="single_author">
                <img src={author} alt="" />
                  <h4>Marina Mojo</h4>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Praesent ultricies quam nisi, vel gravida enim accumsan id.
                    Praesent justo quam, auctor et lorem in, pulvinar ornare orci.
                  </p>
                </div>
              </div>

              {/* COMMENTS SECTION */}
              <div className="comments_part">
                <h3 className="blog_head_title">Comments</h3>
                <div className="single_comment">
                <img src={author} alt="" />
                  <h4>Ayoub Fennouni</h4>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Praesent ultricies quam nisi, vel gravida enim accumsan id.
                    Praesent justo quam, auctor et lorem in, pulvinar ornare orci.
                  </p>
                </div>

                <div className="single_comment sc_left">
                <img src={author} alt="" />
                  <h4>Kader Bhai</h4>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Praesent ultricies quam nisi, vel gravida enim accumsan id.
                    Praesent justo quam, auctor et lorem in, pulvinar ornare orci.
                  </p>
                </div>

                <div className="single_comment single_comment_mbnone">
                <img src={author} alt="" />
                  <h4>Mark Linomi</h4>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Praesent ultricies quam nisi, vel gravida enim accumsan id.
                    Praesent justo quam, auctor et lorem in, pulvinar ornare orci.
                  </p>
                </div>
              </div>

              {/* COMMENT FORM */}
              <div className="comment_form">
                <h3 className="blog_head_title">Add a Comment</h3>
                <div className="contact comment-box">
                  <form id="contact-form" method="post" enctype="multipart/form-data">
                    <div className="row">
                      <div className="form-group col-md-6">
                        <input
                          type="text"
                          name="name"
                          className="form-control"
                          id="first-name"
                          placeholder="Name"
                          required="required"
                        />
                      </div>
                      <div className="form-group col-md-6">
                        <input
                          type="email"
                          name="email"
                          className="form-control"
                          id="first-email"
                          placeholder="Email"
                          required="required"
                        />
                      </div>
                      <div className="form-group col-md-12">
                        <input
                          type="text"
                          name="subject"
                          className="form-control"
                          id="subject"
                          placeholder="Subject"
                          required="required"
                        />
                      </div>
                      <div className="form-group col-md-12">
                        <textarea
                          rows="6"
                          name="message"
                          className="form-control"
                          id="description"
                          placeholder="Your Message"
                          required="required"
                        ></textarea>
                      </div>
                      <div className="col-md-12">
                        <div className="actions">
                          <button
                            type="submit"
                            value="Send message"
                            name="submit"
                            id="submitButton"
                            className="btn btn_one"
                            title="Submit Your Message!"
                          >
                            Submit Comment
                          </button>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>

            {/* SIDEBAR SECTION */}
            <div className="col-lg-5 col-sm-12 col-xs-12">
              {/* Subscribe Sidebar */}
              <div className="sidebar-post">
                <div className="newsletter-form">
                  <h4>Subscribe for get updates</h4>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Praesent ultricies quam nisi my business.
                  </p>
                  <form action="#" className="subscribe">
                    <input
                      type="text"
                      className="subscribe__input"
                      placeholder="Email Address"
                    />
                    <button type="button" className="sub_btn">Subscribe</button>
                  </form>
                </div>
              </div>

              {/* Phần Popular Post */}
    <div className="sidebar-post">
      <div className="sidebar_title">
        <h4>Popular Post</h4>
      </div>
      <div className="single_popular">
        <Link to='/single_blog' >
          <img src={sidebar} alt="" />
        </Link>
        <h5>
          <Link to='/single_blog' >Supercharging Your SEO Game with AI Writing Assistants</Link>
        </h5>
      </div>
      <div className="single_popular">
        <Link to='/single_blog' >
          <img src={sidebar} alt="" />
        </Link>
        <h5>
          <Link to='/single_blog' >AI Writing Assistants and the Future of Content Marketing</Link>
        </h5>
      </div>
      <div className="single_popular">
        <Link to='/single_blog' >
          <img src={sidebar} alt="" />
        </Link>
        <h5>
          <Link to='/single_blog' >Enhancing Your E-commerce Store With AI Writing Assistants</Link>
        </h5>
      </div>
      <div className="single_popular">
        <Link to='/single_blog' >
          <img src={sidebar} alt="" />
        </Link>
        <h5>
          <Link to='/single_blog' >Building your content strategy cannot get easier than this</Link>
        </h5>
      </div>
      <div className="single_popular">
        <Link to='/single_blog' >
          <img src={sidebar} alt="" />
        </Link>
        <h5>
          <Link to='/single_blog' >This is the only read you would need before sitting down to prepare</Link>
        </h5>
      </div>
    </div>

              {/* Popular Tags Sidebar */}
              <div className="sidebar-post">
                <div className="tag">
                  <div className="sidebar_title">
                    <h4>Popular Tag</h4>
                  </div>
                  <a href="#">Education</a>
                  <a href="#">Course</a>
                  <a href="#">Event</a>
                  <a href="#">Copywriting</a>
                  <a href="#">Graphic</a>
                  <a href="#">Clean Design</a>
                  <a href="#">Digital Marketing</a>
                  <a href="#">Online Training</a>
                  <a href="#">UI/UX</a>
                  <a href="#">Tech</a>
                </div>
              </div>

              {/* Phần Follow Us */}
    <div className="sidebar-post">
      <div className="sidebar_title">
        <h4>Follow Us</h4>
      </div>
      <div className="single_social">
        <ul>
          <li>
            <div className="social_item b_facebook">
              <a href="#" title="Facebook">
                <i className="fa fa-facebook"></i>
                <span className="item-list">150K Likes</span>
              </a>
            </div>
          </li>
          <li>
            <div className="social_item b_youtube">
              <a href="#" title="YouTube">
                <i className="fa fa-youtube"></i>
                <span className="item-list">90K Subscribers</span>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </div>

              {/* AD Banner Sidebar */}
              <div className="sidebar-post">
                <div className="sidebar_title">
                  <h4>Advertisement</h4>
                </div>
                <div className="ad-banner">
                  <img src={adbanner} className="img-fluid" alt="Ad Banner" />
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default SingleBlog;
