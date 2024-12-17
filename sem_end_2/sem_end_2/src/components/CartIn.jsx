import cartImage from '../assets/images/shop/cart1.jpg';
import cartImage2 from '../assets/images/shop/cart2.jpg';
import { useSelector } from 'react-redux';
import { useDispatch } from 'react-redux';
import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import "../assets/css/shop.css";
import { deleteCartItem, getCart } from '../redux/apiRequest';
import { removeItem } from '../redux/cartSlide';

const CartIn = ()=>{
    const dispatch = useDispatch();
    const TOKEN = useSelector(state => state.auth.login.token);
    const initialCartItems = useSelector(state => state.cart.items?.courses || []);
    const isLoading = useSelector(state => state.cart.isLoading);
    const error = useSelector(state => state.cart.error);
    const [cartItems, setCartItems] = useState(initialCartItems);
    const [loadingId, setLoadingId] = useState(null);

    // Fetch cart items on mount
    useEffect(() => {
        if (TOKEN) {
            getCart(TOKEN, dispatch);
        }
    }, [TOKEN, dispatch]);

    // Update local state when Redux state changes
    useEffect(() => {
        setCartItems(initialCartItems);
    }, [initialCartItems]);

    const calculateTotal = (items) => {
        return items.reduce((total, item) => total + item.price, 0);
    };
     const totalAmount = calculateTotal(cartItems);  
    const handleDelete = async (itemId) => {
        const updatedCartItems = cartItems.filter(item => item.courseId !== itemId);
        setCartItems(updatedCartItems);
        setLoadingId(itemId);

        try {
            await deleteCartItem(itemId, TOKEN);
            dispatch(removeItem(itemId)); // Update Redux state
        } catch (err) {
            console.error(err.message);
            setCartItems(cartItems); // Revert state on error
        } finally {
            setLoadingId(null);
        }
    };

   



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
                <th>COURSE</th>
                <th>NAME</th>
                <th className="text-center">UNIT PRICE</th>
                {/* <th className="text-center">QUANTITY</th> */}
                {/* <th className="text-center">TOTAL</th> */}
                <th className="text-center" id='delete' ><i className="ti-trash remove-icon"></i></th>
              </tr>
            </thead>
            <tbody>
              {/* Cart Item 1 */}
              
              {cartItems.length === 0 ? (
                                <tr>
                                    <td colSpan="4" className="text-center">Your cart is empty.</td>
                                </tr>
                            ) : (
                                cartItems.map((cartItem, index) => (
                                    <tr key={index}>
                                        <td className="image" data-title="No"><img src={cartItem.img2} alt="#" /></td>
                                        <td className="product-des" data-title="Description">
                                            <p className="product-name"><a href="#">{cartItem.title}</a></p>
                                            <p className="product-des">{cartItem.description}</p>
                                        </td>
                                        <td className="total-amount" data-title="Total"><span>{cartItem.price}</span></td>
                                        <td className="action" data-title="Remove"><button
                                                        onClick={() => handleDelete(cartItem.courseId)}
                                                        className="ti-trash remove-icon"
                                                        style={{ background: 'none', border: 'none', cursor: 'pointer' }}
                                                        aria-label="Remove item"
                                                        disabled={loadingId === cartItem.courseId} // Disable while loading
                                                    >
                                                        {loadingId === cartItem.courseId ? 'Deleting...' : ''}
                                                    </button></td>
                                    </tr>
                                ))
                            )}
              
              {/* Cart Item 2 */}
              {/* <tr>
                <td className="image" data-title="No"><img src={cartImage2} alt="#" /></td>
                <td className="product-des" data-title="Description">
                  <p className="product-name"><a href="#">Best Seller</a></p>
                  <p className="product-des">Maboriosam in a tonto nesciung eget distingy magndapibus.</p>
                </td>
                <td className="price" data-title="Price"><span>$110.00</span></td>
                <td className="qty" data-title="Qty">
                  {/* Input Order *
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
              </tr> */}
              
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
                  {/* <div className="checkbox">
                    <label className="checkbox-inline" htmlFor="2"><input name="news" id="2" type="checkbox" /> Shipping (+10$)</label>
                  </div> */}
                </div>
              </div>
              <div className="col-lg-4 col-md-7 col-12">
                <div className="right">
                  <ul>
                    <li>Cart Subtotal<span>${totalAmount.toFixed(2)}</span></li>
                    <li>Tax<span>Free</span></li>
                    <li>You Save<span>$0</span></li>
                    <li className="last">You Pay<span>${totalAmount.toFixed(2)}</span></li>
                  </ul>
                  <div className="button5">
                    <Link to="/check_out" className="btn">Checkout</Link>
                    <Link to="/all_course" className="btn">Continue shopping</Link>
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