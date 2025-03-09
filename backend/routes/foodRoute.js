import express from "express";
import multer from "multer";
import {
  addFood,
  listAllFood,
  listFood,
  removeFood,
} from "../controllers/foodControllers.js";

const foodRouter = express.Router();

// Image Storage engine
const Storage = multer.diskStorage({
  destination: "uploads",
  filename: (req, file, cb) => {
    return cb(null, `${Date.now()}${file.originalname}`);
  },
});

const upload = multer({ storage: Storage });

foodRouter.post("/add", upload.single("image"), addFood);
foodRouter.get("/list", listFood);
foodRouter.post("/remove", removeFood);
foodRouter.get("/allfoods", listAllFood);

export default foodRouter;
