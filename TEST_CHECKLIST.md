# Pre-Store Submission Test Checklist

## ✅ Testing Permission Changes

### iOS Testing (iPhone 15 Pro Max)
- [ ] App launches successfully
- [ ] Location permission prompt appears when needed
- [ ] Permission prompt text is clear and mentions "Temple of Solomon"
- [ ] Permission states "only when app is open" / "While Using the App"
- [ ] After granting permission, compass works correctly
- [ ] Direction calculation is accurate
- [ ] Video plays correctly
- [ ] App doesn't crash when rotating device
- [ ] Check Settings > Privacy > Location > Solomon Prayers Compass
  - [ ] Should show "While Using" (NOT "Always")
  - [ ] Should NOT have "Always" as an option

### Android Testing
- [ ] App launches successfully
- [ ] Location permission prompt appears when needed
- [ ] Permission prompt does NOT mention "background" or "always"
- [ ] Permission prompt only asks for "precise location"
- [ ] After granting permission, compass works correctly
- [ ] Direction calculation is accurate
- [ ] Video plays correctly
- [ ] Check Settings > Apps > Solomon Prayers Compass > Permissions
  - [ ] Location should be "Allow only while using the app"
  - [ ] Should NOT show "Allow all the time"

---

## ✅ Functional Testing

### Core Features
- [ ] Splash screen displays properly
- [ ] Smooth transition from splash to main screen
- [ ] Compass needle moves smoothly when device rotates
- [ ] Direction arrow points correctly toward Jerusalem/Temple
- [ ] Video player controls work (play/pause/replay)
- [ ] Refresh functionality works (pull to refresh)

### Edge Cases
- [ ] Location services disabled - shows appropriate message
- [ ] Permission denied - shows appropriate message
- [ ] Permission permanently denied - offers to open settings
- [ ] No internet connection - app still calculates direction
- [ ] GPS signal weak/unavailable - handles gracefully

---

## ✅ UI/UX Testing

- [ ] All text is readable
- [ ] Colors and gradients display correctly
- [ ] No layout issues on different screen sizes
- [ ] Portrait orientation locked correctly
- [ ] Loading indicators appear when needed
- [ ] Error messages are clear and helpful

---

## ✅ Performance Testing

- [ ] App launches quickly (< 3 seconds to main screen)
- [ ] No lag when rotating device
- [ ] Video loads and plays smoothly
- [ ] Compass updates in real-time (< 100ms delay)
- [ ] No memory leaks after extended use
- [ ] Battery drain is reasonable

---

## 🚫 Things That Should NOT Happen

- [ ] ❌ No "background location" permission request
- [ ] ❌ No "always allow" location option
- [ ] ❌ App doesn't request location when in background
- [ ] ❌ No crashes or freezes
- [ ] ❌ No blank/black screens

---

## Notes Section

### iOS Test Notes:
(Add your observations here)


### Android Test Notes:
(Add your observations here)


### Issues Found:
(List any issues discovered during testing)


---

## Final Approval

- [ ] All critical issues resolved
- [ ] App ready for iOS App Store submission
- [ ] App ready for Google Play Store submission

Date Tested: _____________
Tester: _____________

