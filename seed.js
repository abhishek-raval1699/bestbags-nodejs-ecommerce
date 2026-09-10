require("dotenv").config();
const mongoose = require("mongoose");
const Category = require("./models/category");
const connectDB = require("./config/db");

const seedCategories = async () => {
  try {
    await connectDB();

    // Clear existing categories
    await Category.deleteMany({});

    // Add sample categories
    const categories = [
      { title: "Electronics" },
      { title: "Fashion" },
      { title: "Home & Garden" },
    ];

    await Category.insertMany(categories);
    console.log("Database seeded with categories!");
    process.exit(0);
  } catch (error) {
    console.error("Error seeding database:", error);
    process.exit(1);
  }
};

seedCategories();
