import cartImage from '../assets/images/shop/cart1.jpg';
import cartImage2 from '../assets/images/shop/cart2.jpg';
import "../assets/css/shop.css";
const CartIn = ()=>{
    return (
        <>
        <div className="shopping-cart section">
        <div className="container">
          <div className="row">
            <div className="col-12">
              {/* Shopping Summery */}
              <table className="table shopping-summery">
                <thead>
                  <tr className="main-hading">
                    <th>PRODUCT</th>
                    <th>NAME</th>
                    <th className="text-center">UNIT PRICE</th>
                    <th className="text-center">QUANTITY</th>
                    <th className="text-center">TOTAL</th>
                    <th className="text-center"><i className="ti-trash remove-icon"></i></th>
                  </tr>
                </thead>
                <tbody>
                  {/* Cart Item 1 */}
                  <tr>
                    <td className="image" data-title="No"><img src={cartImage} alt="#" /></td>
                    <td className="product-des" data-title="Description">
                      <p className="product-name"><a href="#">Top Selling Book</a></p>
                      <p className="product-des">Maboriosam in a tonto nesciung eget distingy magndapibus.</p>
                    </td>
                    <td className="price" data-title="Price"><span>$110.00</span></td>
                    <td className="qty" data-title="Qty">
                      {/* Input Order */}
                      <div className="input-group">
                        <div className="button minus">
                          <button type="button" className="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                            <i className="ti-minus"></i>
                          </button>
                        </div>
                        <input type="text" name="quant[1]" className="input-number" data-min="1" data-max="100" defaultValue="1" />
                        <div className="button plus">
                          <button type="button" className="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
                            <i className="ti-plus"></i>
                          </button>
                        </div>
                      </div>
                    </td>
                    <td className="total-amount" data-title="Total"><span>$220.88</span></td>
                    <td className="action" data-title="Remove"><a href="#"><i className="ti-trash remove-icon"></i></a></td>
                  </tr>
                  {/* Cart Item 2 */}
                  <tr>
                    <td className="image" data-title="No"><img src={cartImage2} alt="#" /></td>
                    <td className="product-des" data-title="Description">
                      <p className="product-name"><a href="#">Best Seller</a></p>
                      <p className="product-des">Maboriosam in a tonto nesciung eget distingy magndapibus.</p>
                    </td>
                    <td className="price" data-title="Price"><span>$110.00</span></td>
                    <td className="qty" data-title="Qty">
                      {/* Input Order */}
                      <div className="input-group">
                        <div className="button minus">
                          <button type="button" className="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[2]">
                            <i className="ti-minus"></i>
                          </button>
                        </div>
                        <input type="text" name="quant[2]" className="input-number" data-min="1" data-max="100" defaultValue="2" />
                        <div className="button plus">
                          <button type="button" className="btn btn-primary btn-number" data-type="plus" data-field="quant[2]">
                            <i className="ti-plus"></i>
                          </button>
                        </div>
                      </div>
                    </td>
                    <td className="total-amount" data-title="Total"><span>$220.88</span></td>
                    <td className="action" data-title="Remove"><a href="#"><i className="ti-trash remove-icon"></i></a></td>
                  </tr>
                  {/* Cart Item 3 */}
                  <tr>
                    <td className="image" data-title="No"><img src="assets/images/shop/cart3.jpg" alt="#" /></td>
                    <td className="product-des" data-title="Description">
                      <p className="product-name"><a href="#">Most Wanted</a></p>
                      <p className="product-des">Maboriosam in a tonto nesciung eget distingy magndapibus.</p>
                    </td>
                    <td className="price" data-title="Price"><span>$110.00</span></td>
                    <td className="qty" data-title="Qty">
                      {/* Input Order */}
                      <div className="input-group">
                        <div className="button minus">
                          <button type="button" className="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[3]">
                            <i className="ti-minus"></i>
                          </button>
                        </div>
                        <input type="text" name="quant[3]" className="input-number" data-min="1" data-max="100" defaultValue="3" />
                        <div className="button plus">
                          <button type="button" className="btn btn-primary btn-number" data-type="plus" data-field="quant[3]">
                            <i className="ti-plus"></i>
                          </button>
                        </div>
                      </div>
                    </td>
                    <td className="total-amount" data-title="Total"><span>$220.88</span></td>
                    <td className="action" data-title="Remove"><a href="#"><i className="ti-trash remove-icon"></i></a></td>
                  </tr>
                </tbody>
              </table>
              {/* / End Shopping Summery */}
            </div>
          </div>

          <div className="row">
            <div className="col-12">
              {/* Total Amount */}
              <div className="total-amount">
                <div className="row">
                  <div className="col-lg-8 col-md-5 col-12">
                    <div className="left">
                      <div className="coupon">
                        <form action="#" target="_blank">
                          <input name="Coupon" placeholder="Enter Your Coupon" />
                          <button className="btn">Apply</button>
                        </form>
                      </div>
                      <div className="checkbox">
                        <label className="checkbox-inline" htmlFor="2"><input name="news" id="2" type="checkbox" /> Shipping (+10$)</label>
                      </div>
                    </div>
                  </div>
                  <div className="col-lg-4 col-md-7 col-12">
                    <div className="right">
                      <ul>
                        <li>Cart Subtotal<span>$330.00</span></li>
                        <li>Shipping<span>Free</span></li>
                        <li>You Save<span>$20.00</span></li>
                        <li className="last">You Pay<span>$310.00</span></li>
                      </ul>
                      <div className="button5">
                        <a href="checkout.html" className="btn">Checkout</a>
                        <a href="#" className="btn">Continue shopping</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              {/* / End Total Amount */}
            </div>
          </div>
        </div>
      </div>
      {/* Start Shop Services Area */}
      <section className="shop-services section home">
        <div className="container">
          <div className="row">
            <div className="col-lg-3 col-md-6 col-12">
              <div className="single-service">
                <i className="ti-rocket"></i>
                <h4>Free Shipping</h4>
                <p>Orders over $100</p>
              </div>
            </div>
            <div className="col-lg-3 col-md-6 col-12">
              <div className="single-service">
                <i className="ti-reload"></i>
                <h4>Free Return</h4>
                <p>Within 30 days returns</p>
              </div>
            </div>
            <div className="col-lg-3 col-md-6 col-12">
              <div className="single-service">
                <i className="ti-lock"></i>
                <h4>Secure Payment</h4>
                <p>100% secure payment</p>
              </div>
            </div>
            <div className="col-lg-3 col-md-6 col-12">
              <div className="single-service">
                <i className="ti-tag"></i>
                <h4>Best Price</h4>
                <p>Guaranteed price</p>
              </div>
            </div>
          </div>
        </div>
      </section>
      {/* End Shop Services */}
        </>
    );
}
export default CartIn;