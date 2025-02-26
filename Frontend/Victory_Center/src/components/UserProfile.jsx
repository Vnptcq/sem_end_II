import React, { useState,useEffect } from "react";
import { useSelector } from 'react-redux';
import { useDispatch } from 'react-redux';
import { getUser } from '../redux/apiRequest';
import "../assets/css/UserProfile.css";
import { use } from "react";

const UserProfile = () => {
    const dispatch = useDispatch();
    const TOKEN = localStorage.getItem('jwt_token');
    const user = useSelector((state) => state.user.profile);






  const [editingField, setEditingField] = useState(null);
  const [fieldValue, setFieldValue] = useState("");

  const handleEdit = (field) => {
    setEditingField(field);
    setFieldValue(userInfo[field]);
  };

  const handleSave = () => {
    setUserInfo({ ...userInfo, [editingField]: fieldValue });
    setEditingField(null);
  };

  const handleCancel = () => {
    setEditingField(null);
  };

  return (
    <>
    <section className="section-top">
		<div className="container">
			<div className="col-lg-10 offset-lg-1 text-center">
				<div className="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s"
					data-wow-offset="0">
					<h1>User Profile</h1>
					<ul>
						<li><a href="index-2.html">Home</a></li>
						<li> / User Profile</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
    <div className="profile-container">
      <div className="profile-sidebar">
        <div className="profile-picture">
          <img src="https://static.vecteezy.com/system/resources/previews/000/439/863/non_2x/vector-users-icon.jpg" alt="Profile" />
        </div>
        <h3>{user.username}</h3>
        <p>{user.role.roleName}</p>
        <p>{user.createdAt}</p>
        <div className="profile-buttons">
          <button>Follow</button>
          <button>Message</button>
        </div>

      </div>
      <div className="profile-main">
        <h4>User Details</h4>

            <div className="profile-detail">
                <div className="profile-detail-row">Username</div>
                <input type="text" value={user.username} />
            </div>
            <div className="profile-detail">
                <div className="profile-detail-row">Email</div>
                <input type="text" value={user.email} />
            </div>
            <div className="profile-detail-buttons">
                <button>Save Information</button>
            </div>

      </div>
    </div>
    </>
  );
};

export default UserProfile;
