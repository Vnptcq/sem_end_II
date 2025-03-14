import { createSlice } from '@reduxjs/toolkit';

const userSlice = createSlice({
    name: 'user',
    initialState: {
        profile: null,
        isLoading: false,
        error: null,
    },
    reducers: {
        getUserStart: (state) => {
            state.isLoading = true;
        },
        getUserSuccess: (state, action) => {
            state.isLoading = false;
            state.profile = action.payload; // Update state with user profile data
        },
        getUserFailed: (state) => {
            state.isLoading = false;
            state.error = 'Failed to fetch user profile';
        },
        logoutUser:(state)=>{
            state.profile=null;
        }
    },
});

export const { getUserStart, getUserSuccess, getUserFailed ,logoutUser} = userSlice.actions;
export default userSlice.reducer;
