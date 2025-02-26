import { createSlice } from "@reduxjs/toolkit";

const cartSlice = createSlice({
  name: "cart",
  initialState: {
    items: [], // Changed to an empty array
    totalAmount: 0,
    isLoading: false,
    error: null,
  },
  reducers: {
    getCartStart: (state) => {
      state.isLoading = true;
      state.error = null; // Reset error on new fetch
    },
    getCartSuccess: (state, action) => {
      state.isLoading = false;
      state.items = action.payload;
    },
    getCartFailed: (state) => {
      state.isLoading = false;
      state.error = "Failed to fetch cart items";
    },
    removeItem: (state, action) => {
      state.items.courses = state.items.courses.filter(
        (item) => item.courseId !== action.payload
      );
    },
    cartLogout:(state)=>{
      state.items=[];
    },
  },
});

export const {
  getCartStart,
  getCartSuccess,
  getCartFailed,
  removeItem,
  cartLogout
} = cartSlice.actions;
export default cartSlice.reducer;
