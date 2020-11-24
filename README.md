# Histopathologic-Cancer-Detection

## Project Goal

* Project understanding
* Data understanding
* Data visualization
* Baseline model (Fastai v1)
* Validation and analysis
* Metrics
* Prediction and activation visualizations
* ROC & AUC
* Submit

## Data understanding provided by [Kaggle](https://www.kaggle.com/c/histopathologic-cancer-detection/data)
In this dataset, you are provided with a large number of small pathology images to classify. Files are named with an image id. The `train_labels.csv` file provides the ground truth for the images in the train folder. You are predicting the labels for the images in the test folder. ***A positive label indicates that the center `32x32px` region of a patch contains at least one pixel of tumor tissue.*** Tumor tissue in the outer region of the patch ***does not*** influence the label. This outer region is provided to enable fully-convolutional models that do not use zero-padding, to ensure consistent behavior when applied to a whole-slide image.
![scanned tissues](./plots/Histopathologic-scans-of-lymph-node-sections.png)

## First Steps for Learning
It is often a good idea to evaluate a simple model's performance over the given dataset to set boundaries.
Here I created and fit a simple CNN model with only ***8000*** parameters. the model performance was acceptable with an accuracy rate of ***0.8336%*** on train set and ***0.8307%*** on validation set, after 50 epochs.
![Simpel cnn model acc plot](./plots/Simple_CNN_16x16_200K/acc.png)
![Simpel cnn model loss plot](./plots/Simple_CNN_16x16_200K/loss.png)
The model doesn't have enough parameters to fit perfectly on the train set, although it is fed with ***200K 16x16*** uncropped images. To enhance the performance, I have increased number of fully connected layers and added `L2` regulation terms to them to prevent the model from overfitting.
By only adding few more layers, the accuracy rate increased to ***0.8754%*** over train set and ***0.8733%*** over test set.
![Simpel cnn model acc plot](./plots/Simple_CNN_16x16_200K_Tuned/acc.png)
![Simpel cnn model loss plot](./plots/Simple_CNN_16x16_200K_Tuned/loss.png)
The models performance is good. However, it's not good enough.

## ToDo List:

- [x] Create README.md file.
- [x] Visualize data
- [x] Data preparation
- [x] Create a bash file for submitting results to Kaggle
- [x] Prepare a initial working model
- [ ] Hyperparameter tuning
- [ ] Find best Learning rate
- [ ] Plotting loss and accuracy plots
- [ ] Tensorboard logs


## How to run
Using `submit_csv.sh` file you can submit your `submission.csv` file to kaggle.
*Note:* Please make sure that your `api_key` exists in `~/.kaggle/`. For more information visit [kaggle](https://www.kaggle.com/docs/api).

```bash
chmod +x submit_csv.sh

./submit_csv.sh `comment`
```

## Credits

## Refrences

