import React from 'react';

import CartIn from './CartIn';



const Cart = () => {

  return (
    
    <div>
      {/* START SECTION TOP */}
      <section className="section-top">
        <div className="container">
          <div className="col-lg-10 offset-lg-1 text-center">
            <div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
              <h1>Cart</h1>
              <ul>
                <li><a href="index-2.html">Home</a></li>
                <li> / Cart</li>
              </ul>
            </div>
          </div>
        </div>
      </section>
      {/* END SECTION TOP */}

      {/* Shopping Cart */}
        <CartIn/>
      {/* End Cart */}
    </div>
  );
}

export default Cart;
