import React from 'react';
import { Link } from 'react-router-dom';
import cartImage from '../assets/images/blog/2.png';

const Blog = () => {
  return (
    <>
      {/* START SECTION TOP */}
      <section className="section-top">
        <div className="container">
          <div className="col-lg-10 offset-lg-1 text-center">
            <div
              className="section-top-title wow fadeInRight"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              data-wow-offset="0"
            >
              <h1>Latest Blog</h1>
              <ul>
                <li><a href="index-2.html">Home</a></li>
                <li> / Blog</li>
              </ul>
            </div>
          </div>
        </div>
      </section>
      {/* END SECTION TOP */}

      {/* START BLOG */}
      <section className="blog_area_bg section-padding">
        <div className="container">
          <div className="row">
            <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s" data-wow-offset="0">
              <div className="single_blog">
                <div className="content_box">
                  <span>August 25, 2023 | <Link to='/single_blog'>Design</Link></span>
                  <h2><Link to='/single_blog' >Professional Mobile Painting and Sculpting</Link></h2>
                  <Link to='/single_blog' className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </Link>
                </div>
              </div>
              <div className="single_blog">
                <div className="content_box">
                  <span>August 25, 2023 | <Link to='/single_blog'>Design</Link></span>
                  <h2><Link to='/single_blog' >Professional Mobile Painting and Sculpting</Link></h2>
                  <Link to='/single_blog' className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </Link>
                </div>
              </div>
            </div>

            <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s" data-wow-offset="0">
              <div className="single_blog">
                <img src={cartImage} className="img-fluid" alt="image" />
                <div className="content_box">
                  <span>August 26, 2023 | <Link to='/single_blog'>Education</Link></span>
                  <h2><Link to='/single_blog'>Professional Ceramic Moulding for Beginner</Link></h2>
                  <Link to='/single_blog' className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </Link>
                </div>
              </div>
            </div>

            <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
              <div className="single_blog">
              <img src={cartImage} className="img-fluid" alt="image" />
                <div className="content_box">
                  <span>August 28, 2023 | <Link to='/single_blog'>Programming</Link></span>
                  <h2><Link to='/single_blog'>Education Is About Create Leaders For Tomorrow</Link></h2>
                  <Link to='/single_blog' className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </Link>
                </div>
              </div>
            </div>

            <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s" data-wow-offset="0">
              <div className="single_blog">
              <img src={cartImage} className="img-fluid" alt="image" />
                <div className="content_box">
                  <span>August 26, 2023 | <Link to='/single_blog'>Education</Link></span>
                  <h2><Link to='/single_blog'>Professional Ceramic Moulding for Beginner</Link></h2>
                  <Link to='/single_blog' className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </Link>
                </div>
              </div>
            </div>

            <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
              <div className="single_blog">
              <img src={cartImage} className="img-fluid" alt="image" />
                <div className="content_box">
                  <span>August 28, 2023 | <Link to='/single_blog'>Programming</Link></span>
                  <h2><Link to='/single_blog'>Education Is About Create Leaders For Tomorrow</Link></h2>
                  <Link to='/single_blog' className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </Link>
                </div>
              </div>
            </div>

            <div className="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s" data-wow-offset="0">
              <div className="single_blog">
                <div className="content_box">
                  <span>August 25, 2023 | <Link to='/single_blog'>Design</Link></span>
                  <h2><Link to='/single_blog' >Professional Mobile Painting and Sculpting</Link></h2>
                  <Link to='/single_blog' className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </Link>
                </div>
              </div>
              <div className="single_blog">
                <div className="content_box">
                  <span>August 25, 2023 | <Link to='/single_blog'>Design</Link></span>
                  <h2><Link to='/single_blog' >Professional Mobile Painting and Sculpting</Link></h2>
                  <Link to='/single_blog' className="cta">
                    <span>READ MORE</span>
                    <svg width="13px" height="10px" viewBox="0 0 13 10">
                      <path d="M1,5 L11,5"></path>
                      <polyline points="8 1 12 5 8 9"></polyline>
                    </svg>
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      {/* END BLOG */}
    </>
  );
}

export default Blog;
