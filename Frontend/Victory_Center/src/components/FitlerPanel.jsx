import React from "react";

const FilterPanel = ({ onFilterChange }) => {
  return (
    <div
      style={{
        display: "flex",
        gap: "20px",
        marginBottom: "20px",
        background: "#1e1e1e",
        padding: "15px",
        borderRadius: "8px",
        color: "#fff",
      }}
    >
      <div>
        <label style={{ marginBottom: "5px", display: "block" }}>Level</label>
        <select
          style={{
            padding: "10px",
            borderRadius: "5px",
            border: "1px solid #007bff",
            background: "#1e1e1e",
            color: "#fff",
          }}
          onChange={(e) => onFilterChange("level", e.target.value)}
        >
          <option value="">All Levels</option>
          <option value="beginner">Beginner</option>
          <option value="intermediate">Intermediate</option>
          <option value="advanced">Advanced</option>
        </select>
      </div>
      <div>
        <label style={{ marginBottom: "5px", display: "block" }}>Category</label>
        <select
          style={{
            padding: "10px",
            borderRadius: "5px",
            border: "1px solid #007bff",
            background: "#1e1e1e",
            color: "#fff",
          }}
          onChange={(e) => onFilterChange("category", e.target.value)}
        >
          <option value="">All Categories</option>
          <option value="kids">Kids</option>
          <option value="teenages">Teenages</option>
          <option value="adults">Adults</option>
          <option value="ielts">IELTS</option>
          <option value="toeic">TOEIC</option>
        </select>
      </div>
    </div>
  );
};

export default FilterPanel;
