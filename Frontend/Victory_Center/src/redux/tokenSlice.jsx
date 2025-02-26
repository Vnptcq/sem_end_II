

import { createSlice } from '@reduxjs/toolkit';

const tokenSlice = createSlice({
  name: 'token',
  initialState: {
    token: sessionStorage.getItem('token') || null,  // Lấy token từ session nếu có
  },
  reducers: {
    setToken: (state, action) => {
      state.token = action.payload;
      sessionStorage.setItem('token', action.payload);  // Lưu token vào sessionStorage
    },
    clearToken: (state) => {
      state.token = null;
      sessionStorage.removeItem('token');  // Xóa token khỏi sessionStorage
    },
  },
});

export const { setToken, clearToken } = tokenSlice.actions;

export default tokenSlice.reducer;
