# Puja Details Page - Scrolling & Sticky Tabs Implementation Guide

## Overview

This document explains how smooth scrolling and sticky tabs are implemented in the Puja Details Page. The implementation uses Flutter's `CustomScrollView`, `SliverPersistentHeader`, `ScrollController`, and `GlobalKey` to create a seamless user experience similar to anchor links on websites.

## Table of Contents

1. [Architecture Overview](#architecture-overview)
2. [Key Components](#key-components)
3. [Sticky Tabs Implementation](#sticky-tabs-implementation)
4. [Smooth Scrolling to Sections](#smooth-scrolling-to-sections)
5. [Active Tab Detection](#active-tab-detection)
6. [Complete Flow Example](#complete-flow-example)
7. [Code Walkthrough](#code-walkthrough)

---

## Architecture Overview

The puja details page uses a **single scrollable view** with all sections stacked vertically. Instead of switching between tabs (like `TabBarView`), users scroll through all content, and tabs act as **navigation anchors** that smoothly scroll to their respective sections.

```
┌─────────────────────────┐
│   AppBar (Header)       │  ← Fixed at top
├─────────────────────────┤
│   Image Carousel        │  ← Scrollable
│   Description           │  ← Scrollable
├─────────────────────────┤
│   Sticky Tabs           │  ← Pinned (stays visible)
├─────────────────────────┤
│   Packages Section      │  ← Scrollable
│   Benefits Section      │  ← Scrollable
│   Reviews Section       │  ← Scrollable
│   FAQs Section          │  ← Scrollable
└─────────────────────────┘
```

---

## Key Components

### 1. CustomScrollView

`CustomScrollView` is used instead of `SingleChildScrollView` because it provides better performance and supports slivers (flexible scrolling widgets).

**Why CustomScrollView?**
- Supports `SliverPersistentHeader` for sticky elements
- Better performance with large lists
- More control over scroll behavior

```dart
CustomScrollView(
  controller: _scrollController,
  slivers: [
    // All content as slivers
  ],
)
```

### 2. ScrollController

`ScrollController` manages scroll position and allows us to:
- Track scroll position
- Programmatically scroll to positions
- Listen to scroll changes

```dart
late ScrollController _scrollController;

@override
void initState() {
  super.initState();
  _scrollController = ScrollController();
  _scrollController.addListener(_onScroll);
}

void _onScroll() {
  // Called every time user scrolls
  _updateActiveTab();
}
```

### 3. GlobalKey for Sections

Each section has a `GlobalKey` that allows us to:
- Get the section's position in the scroll view
- Scroll to that section programmatically

```dart
final GlobalKey _packagesKey = GlobalKey();
final GlobalKey _benefitsKey = GlobalKey();
final GlobalKey _reviewsKey = GlobalKey();
final GlobalKey _faqsKey = GlobalKey();

// Attach key to widget
Container(
  key: _packagesKey,
  child: PackageSelectionButtonsWidget(...),
)
```

### 4. SliverPersistentHeader

Creates a sticky header that remains visible while scrolling.

```dart
SliverPersistentHeader(
  pinned: true,  // Keeps it visible at top
  delegate: _StickyTabsDelegate(
    child: PujaTabsWidget(...),
  ),
)
```

---

## Sticky Tabs Implementation

### How It Works

The tabs are wrapped in a `SliverPersistentHeader` with `pinned: true`. This means:
- When user scrolls down, tabs stay at the top
- When user scrolls up past tabs, they reappear at the top
- Tabs are always visible (unless scrolled above them)

### Implementation

```dart
// In puja_details_page.dart
SliverPersistentHeader(
  pinned: true,  // This makes it sticky!
  delegate: _StickyTabsDelegate(
    child: PujaTabsWidget(
      activeTabIndex: activeTabIndex,
      onTabTapped: _scrollToSection,
    ),
  ),
)
```

### Custom Delegate

The `_StickyTabsDelegate` controls the sticky header behavior:

```dart
class _StickyTabsDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyTabsDelegate({required this.child});

  @override
  double get minExtent => 60;  // Minimum height when collapsed

  @override
  double get maxExtent => 60;  // Maximum height when expanded

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;  // Always show the tabs widget
  }

  @override
  bool shouldRebuild(_StickyTabsDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
```

**Key Points:**
- `minExtent` and `maxExtent` are the same (60) = fixed height
- `pinned: true` keeps it visible at top
- `shrinkOffset` tells us how much it's been scrolled (0 = fully visible)

---

## Smooth Scrolling to Sections

### How It Works

When a user taps a tab, we:
1. Find the target section using its `GlobalKey`
2. Use `Scrollable.ensureVisible()` to smoothly scroll to it
3. Update the active tab indicator

### Implementation

```dart
void _scrollToSection(int index) {
  GlobalKey? targetKey;
  
  // Map tab index to section key
  switch (index) {
    case 0: targetKey = _packagesKey; break;
    case 1: targetKey = _benefitsKey; break;
    case 2: targetKey = _reviewsKey; break;
    case 3: targetKey = _faqsKey; break;
  }
  
  // Scroll to section if key exists
  if (targetKey?.currentContext != null) {
    Scrollable.ensureVisible(
      targetKey!.currentContext!,
      duration: const Duration(milliseconds: 500),  // Animation duration
      curve: Curves.easeInOut,                       // Animation curve
      alignment: 0.1,                                // Position (0.0 = top, 1.0 = bottom)
    );
    
    // Update active tab in BLoC
    context.read<PujaDetailsBloc>().add(
      PujaDetailsEvent.tabChanged(index: index),
    );
  }
}
```

### Scrollable.ensureVisible Parameters

- **`targetKey.currentContext!`**: The widget to scroll to
- **`duration`**: How long the animation takes (500ms = smooth)
- **`curve`**: Animation style (`easeInOut` = smooth start and end)
- **`alignment`**: Where to position the widget (0.1 = slightly below top)

**Alignment Values:**
- `0.0` = Scroll to top of viewport
- `0.5` = Scroll to center of viewport
- `1.0` = Scroll to bottom of viewport
- `0.1` = Scroll to near top (accounts for sticky tabs)

---

## Active Tab Detection

### How It Works

As the user scrolls, we:
1. Calculate the scroll position
2. Get each section's position in the scroll view
3. Determine which section is currently in the viewport
4. Update the active tab indicator

### Implementation

```dart
void _updateActiveTab() {
  if (!_scrollController.hasClients) return;

  final scrollPosition = _scrollController.offset;  // Current scroll position
  final appBarHeight = 56.0;
  final stickyTabsHeight = 60.0;
  final threshold = appBarHeight + stickyTabsHeight + 50.0;  // Offset for detection

  // Get positions of each section
  final benefitsPosition = _getSectionScrollPosition(_benefitsKey);
  final reviewsPosition = _getSectionScrollPosition(_reviewsKey);
  final faqsPosition = _getSectionScrollPosition(_faqsKey);

  int newActiveTab = 0;

  // Check from bottom to top (most specific first)
  if (faqsPosition != null && scrollPosition + threshold >= faqsPosition) {
    newActiveTab = 3;  // FAQs
  } else if (reviewsPosition != null && scrollPosition + threshold >= reviewsPosition) {
    newActiveTab = 2;  // Reviews
  } else if (benefitsPosition != null && scrollPosition + threshold >= benefitsPosition) {
    newActiveTab = 1;  // Benefits
  } else {
    newActiveTab = 0;  // Packages (default)
  }

  // Update BLoC if tab changed
  final currentState = context.read<PujaDetailsBloc>().state;
  currentState.whenOrNull(
    loaded: (_, __, ___, activeTabIndex, ____, ______, _______) {
      if (newActiveTab != activeTabIndex) {
        context.read<PujaDetailsBloc>().add(
          PujaDetailsEvent.tabChanged(index: newActiveTab),
        );
      }
    },
  );
}
```

### Section Position Calculation

```dart
double? _getSectionScrollPosition(GlobalKey key) {
  final context = key.currentContext;
  if (context == null) return null;
  
  final RenderBox? renderBox = context.findRenderObject() as RenderBox?;
  if (renderBox == null) return null;

  // Get section's position in global coordinate system
  final position = renderBox.localToGlobal(Offset.zero);

  // Get scrollable's position
  final scrollableContext = _scrollController.position.context.storageContext;
  final scrollableBox = scrollableContext.findRenderObject() as RenderBox?;
  if (scrollableBox == null) return null;

  final scrollablePosition = scrollableBox.localToGlobal(Offset.zero);
  
  // Calculate position relative to scroll view's top
  return position.dy - scrollablePosition.dy + _scrollController.offset;
}
```

**How It Works:**
1. Get the section's widget context from `GlobalKey`
2. Get its `RenderBox` (layout information)
3. Convert local position to global coordinates
4. Subtract scrollable's position to get relative position
5. Add scroll offset to get absolute position in scroll view

---

## Complete Flow Example

### Scenario: User Taps "Benefits" Tab

```
Step 1: User taps "Benefits" tab
   ↓
Step 2: onTabTapped(1) is called
   ↓
Step 3: _scrollToSection(1) is called
   ↓
Step 4: targetKey = _benefitsKey
   ↓
Step 5: Scrollable.ensureVisible() animates scroll
   ↓
Step 6: Benefits section scrolls into view (500ms animation)
   ↓
Step 7: TabChanged event dispatched to BLoC
   ↓
Step 8: BLoC updates activeTabIndex = 1
   ↓
Step 9: UI rebuilds with "Benefits" tab highlighted
```

### Scenario: User Scrolls Manually

```
Step 1: User scrolls down the page
   ↓
Step 2: ScrollController listener fires (_onScroll)
   ↓
Step 3: _updateActiveTab() calculates which section is visible
   ↓
Step 4: Compares scroll position with section positions
   ↓
Step 5: Determines Benefits section is in viewport
   ↓
Step 6: Dispatches TabChanged event if tab changed
   ↓
Step 7: BLoC updates activeTabIndex
   ↓
Step 8: UI rebuilds with correct tab highlighted
```

---

## Code Walkthrough

### 1. Initialization

```dart
class _PujaDetailsPageState extends State<PujaDetailsPage> {
  late ScrollController _scrollController;
  final GlobalKey _packagesKey = GlobalKey();
  final GlobalKey _benefitsKey = GlobalKey();
  final GlobalKey _reviewsKey = GlobalKey();
  final GlobalKey _faqsKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);  // Listen to scroll changes
  }
}
```

**What happens:**
- ScrollController is created
- Listener is attached to detect scroll changes
- GlobalKeys are ready to be attached to sections

### 2. Building the Scrollable View

```dart
CustomScrollView(
  controller: _scrollController,  // Connect controller
  slivers: [
    // Image carousel
    SliverToBoxAdapter(
      child: PujaImageCarouselWidget(...),
    ),
    
    // Description
    SliverToBoxAdapter(
      child: PujaDescriptionWidget(...),
    ),
    
    // Sticky Tabs (THIS IS THE KEY!)
    SliverPersistentHeader(
      pinned: true,  // Makes it sticky
      delegate: _StickyTabsDelegate(...),
    ),
    
    // Packages Section with key
    SliverToBoxAdapter(
      child: Container(
        key: _packagesKey,  // Attach key for scrolling
        child: PackageSelectionButtonsWidget(...),
      ),
    ),
    
    // Other sections...
  ],
)
```

**Key Points:**
- `SliverToBoxAdapter` wraps regular widgets to make them slivers
- `key: _packagesKey` attaches the GlobalKey to the section
- `pinned: true` makes tabs sticky

### 3. Tab Widget Implementation

```dart
// In puja_tabs_widget.dart
class PujaTabsWidget extends StatelessWidget {
  final int activeTabIndex;
  final Function(int) onTabTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: tabs.map((tabName, index) {
        final isActive = activeTabIndex == index;
        
        return Expanded(
          child: InkWell(
            onTap: () => onTabTapped(index),  // Trigger scroll
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isActive 
                      ? context.colorScheme.primary  // Orange underline
                      : Colors.transparent,
                    width: 2.h,
                  ),
                ),
              ),
              child: Text(tabName),
            ),
          ),
        );
      }).toList(),
    );
  }
}
```

**What happens:**
- Each tab is clickable (`InkWell`)
- Tapping calls `onTabTapped(index)`
- Active tab shows orange underline
- Inactive tabs show transparent underline

---

## Visual Representation

### Scroll Position Detection Logic

```
Viewport (what user sees)
┌─────────────────────────┐
│   AppBar (56px)         │  ← Fixed
├─────────────────────────┤
│   Sticky Tabs (60px)    │  ← Pinned
├─────────────────────────┤ ← threshold = 56 + 60 + 50 = 166px
│                         │
│   Packages Section      │  ← Scroll position here
│   [Content...]          │
│                         │
│   Benefits Section      │  ← If scrollPosition + 166 >= this position
│   [Content...]          │     → Active tab = Benefits
│                         │
│   Reviews Section       │
│   [Content...]          │
│                         │
│   FAQs Section          │
│   [Content...]          │
└─────────────────────────┘
```

### Threshold Calculation

```dart
final threshold = appBarHeight + stickyTabsHeight + 50.0;
// threshold = 56 + 60 + 50 = 166 pixels

// When scrollPosition + threshold >= sectionPosition
// → That section is considered "active"
```

**Why add threshold?**
- Accounts for AppBar height (56px)
- Accounts for sticky tabs height (60px)
- Adds buffer (50px) so tab changes before section fully visible
- Creates smooth transition between tabs

---

## Common Patterns & Best Practices

### 1. Always Check Context Exists

```dart
if (targetKey?.currentContext != null) {
  // Safe to use context
  Scrollable.ensureVisible(targetKey!.currentContext!);
}
```

**Why:** Context might be null if widget hasn't been built yet.

### 2. Use whenOrNull for State Handling

```dart
state.whenOrNull(
  loaded: (puja, packages, faqs, activeTabIndex, ...) {
    // Handle loaded state
  },
  // No need for orElse - returns null if not loaded
);
```

**Why:** More concise than `maybeWhen` with `orElse`.

### 3. Debounce Scroll Updates (Optional)

For better performance, you can debounce scroll updates:

```dart
Timer? _scrollDebounce;

void _onScroll() {
  _scrollDebounce?.cancel();
  _scrollDebounce = Timer(const Duration(milliseconds: 100), () {
    _updateActiveTab();
  });
}
```

**Why:** Prevents excessive state updates during fast scrolling.

---

## Troubleshooting

### Issue: Tabs don't stay sticky

**Solution:** Ensure `pinned: true` is set:
```dart
SliverPersistentHeader(
  pinned: true,  // ← Must be true!
  delegate: _StickyTabsDelegate(...),
)
```

### Issue: Scroll doesn't work

**Solution:** Check that:
1. `GlobalKey` is attached to the widget
2. `currentContext` is not null
3. Widget is actually in the scroll view

### Issue: Active tab doesn't update

**Solution:** Verify:
1. Scroll listener is attached: `_scrollController.addListener(_onScroll)`
2. `_updateActiveTab()` is being called
3. BLoC event is being dispatched
4. State is being updated correctly

### Issue: Smooth scroll is jerky

**Solution:** Adjust animation parameters:
```dart
Scrollable.ensureVisible(
  targetKey.currentContext!,
  duration: const Duration(milliseconds: 500),  // Increase for slower
  curve: Curves.easeInOut,                        // Try Curves.easeOut
  alignment: 0.1,                                 // Adjust position
);
```

---

## Performance Considerations

### 1. Scroll Listener Efficiency

The scroll listener fires on **every pixel** of scroll. To optimize:

```dart
void _onScroll() {
  // Only update every 50 pixels
  if (_scrollController.offset % 50 < 1) {
    _updateActiveTab();
  }
}
```

### 2. Position Calculation Caching

Cache section positions to avoid recalculating:

```dart
Map<GlobalKey, double>? _cachedPositions;

double? _getSectionScrollPosition(GlobalKey key) {
  // Return cached if available
  if (_cachedPositions?.containsKey(key) == true) {
    return _cachedPositions![key];
  }
  
  // Calculate and cache
  final position = /* calculation */;
  _cachedPositions ??= {};
  _cachedPositions![key] = position;
  return position;
}
```

---

## Summary

The scrolling and sticky tabs implementation uses:

1. **CustomScrollView** - For flexible scrolling with slivers
2. **SliverPersistentHeader** - For sticky tabs that stay visible
3. **ScrollController** - To track and control scroll position
4. **GlobalKey** - To identify and scroll to specific sections
5. **Scrollable.ensureVisible()** - For smooth animated scrolling
6. **BLoC Pattern** - To manage state without setState

This creates a smooth, website-like navigation experience where:
- ✅ All content is in one scrollable view
- ✅ Tabs act as navigation anchors
- ✅ Smooth scrolling when tabs are tapped
- ✅ Active tab updates automatically as user scrolls
- ✅ Tabs remain visible (sticky) while scrolling

---

## Additional Resources

- [Flutter CustomScrollView Documentation](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html)
- [SliverPersistentHeader Documentation](https://api.flutter.dev/flutter/widgets/SliverPersistentHeader-class.html)
- [ScrollController Documentation](https://api.flutter.dev/flutter/widgets/ScrollController-class.html)
- [GlobalKey Documentation](https://api.flutter.dev/flutter/foundation/GlobalKey-class.html)

