# Generating `.ipa` Files for iOS Security Audit  

## Prerequisites  
Before starting, ensure you have the following:  
- **A Mac with Xcode installed**  
- **Apple Developer account** (your client may provide access)  
- **Access to the app’s source code**  
- **A valid provisioning profile** (Development, Ad Hoc, or Distribution)  
- **A working iOS app build** (via `react-native run-ios` or Xcode)  

---  

## Step 1: Archive the App in Xcode  
1. **Open the iOS project** in Xcode.  
2. **Select a physical device** (not a simulator) from the top device dropdown.  
3. **Set Build Configuration to `Release`.**  
4. From the menu, navigate to:  
   `Product > Archive`  
5. Wait for Xcode to complete the build and archiving process.  

---  

## Step 2: Export the `.ipa` File  
1. After archiving, the **Organizer window** will open automatically.  
   - If it doesn’t, manually open it via:  
     `Window > Organizer`  
2. In the Organizer:  
   - Select your app archive.  
   - Click **`Distribute App`**.  
3. Choose the appropriate option:  
   - **Development** (for debugging)  
   - **Ad Hoc/Distribution** (for release testing)  
4. Follow the export steps and click **`Next`** until prompted.  
5. Click **`Export`** and save the `.ipa` file.  

---  

## Step 3: Share the `.ipa` with the Auditor  
After exporting, the folder will contain:  
- `MyApp.ipa` – the app binary
- `DistributionSummary.plist` – export metadata
- `ExportOptions.plist` – export configuration
- `Packaging.log` – build process log  

### Uploading Instructions:  
- **Upload the `.ipa` to secure cloud storage** (e.g., Google Drive, Dropbox, OneDrive).  
- **Avoid random file-sharing links**—ensure sharing permissions are set to:  
  - **`Anyone with the link can view/download`**  
- Optionally, **password-protect the folder or link** if sensitive.

---  

> **Note:** For security, avoid sending `.ipa` files via email or unencrypted channels.  