.class public final Lʽˊ/ʼᐧ;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public ʼˈ:Landroid/widget/EditText;

.field public final ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

.field public final ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

.field public ˆﾞ:I

.field public ˈʿ:Landroid/view/View$OnLongClickListener;

.field public ˈٴ:Landroid/content/res/ColorStateList;

.field public final ˈⁱ:Lʽˊ/ˉʿ;

.field public final ˉٴ:Lʻˆ/ﾞᴵ;

.field public ˊʻ:Landroid/view/View$OnLongClickListener;

.field public ˊˋ:Z

.field public final ˋᵔ:Lˉˆ/ᐧﾞ;

.field public ˑٴ:Ljava/lang/CharSequence;

.field public final ـˏ:Landroid/view/accessibility/AccessibilityManager;

.field public final ٴʼ:Ljava/util/LinkedHashSet;

.field public final ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

.field public final ᴵˊ:Landroid/widget/FrameLayout;

.field public ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

.field public ᵎˊ:Landroid/content/res/ColorStateList;

.field public ᵎⁱ:I

.field public ᵔי:Landroid/graphics/PorterDuff$Mode;

.field public ᵔٴ:Landroid/widget/ImageView$ScaleType;

.field public ﹳـ:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Lcom/parse/ٴʼ;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput v3, v0, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, Lʽˊ/ʼᐧ;->ٴʼ:Ljava/util/LinkedHashSet;

    new-instance v4, Lʽˊ/ˉʿ;

    invoke-direct {v4, v0}, Lʽˊ/ˉʿ;-><init>(Lʽˊ/ʼᐧ;)V

    iput-object v4, v0, Lʽˊ/ʼᐧ;->ˈⁱ:Lʽˊ/ˉʿ;

    new-instance v4, Lʽˊ/ᵔʾ;

    invoke-direct {v4, v0}, Lʽˊ/ᵔʾ;-><init>(Lʽˊ/ʼᐧ;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, v0, Lʽˊ/ʼᐧ;->ـˏ:Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const v7, 0x800005

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v6, v8, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lʽˊ/ʼᐧ;->ᴵˊ:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f0b039d

    invoke-virtual {v0, v0, v7, v10}, Lʽˊ/ʼᐧ;->ﹳٴ(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v10

    iput-object v10, v0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    const v11, 0x7f0b039c

    invoke-virtual {v0, v6, v7, v11}, Lʽˊ/ʼᐧ;->ﹳٴ(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v7

    iput-object v7, v0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v11, Lʻˆ/ﾞᴵ;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v11, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    iput-object v0, v11, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    iget-object v12, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v12, Landroid/content/res/TypedArray;

    const/16 v13, 0x1c

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v11, Lʻˆ/ﾞᴵ;->ʾˋ:I

    const/16 v13, 0x35

    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v11, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    iput-object v11, v0, Lʽˊ/ʼᐧ;->ˉٴ:Lʻˆ/ﾞᴵ;

    new-instance v11, Lˉˆ/ᐧﾞ;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v11, v0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    iget-object v12, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v12, Landroid/content/res/TypedArray;

    const/16 v14, 0x26

    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v2, v14}, Lˉᵎ/ⁱˊ;->יـ(Landroid/content/Context;Lcom/parse/ٴʼ;I)Landroid/content/res/ColorStateList;

    move-result-object v14

    iput-object v14, v0, Lʽˊ/ʼᐧ;->ˈٴ:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 v14, 0x27

    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v12, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-static {v14, v13}, Lˈᐧ/ٴﹶ;->ﾞᴵ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v14

    iput-object v14, v0, Lʽˊ/ʼᐧ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    const/16 v14, 0x25

    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v2, v14}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v0, v14}, Lʽˊ/ʼᐧ;->ˆʾ(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f130091

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    const/16 v14, 0x36

    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-nez v15, :cond_4

    const/16 v15, 0x20

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2, v15}, Lˉᵎ/ⁱˊ;->יـ(Landroid/content/Context;Lcom/parse/ٴʼ;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    :cond_3
    const/16 v8, 0x21

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v13}, Lˈᐧ/ٴﹶ;->ﾞᴵ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    :cond_4
    const/16 v8, 0x1e

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    const/4 v5, 0x1

    if-eqz v15, :cond_6

    invoke-virtual {v12, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lʽˊ/ʼᐧ;->ᵔᵢ(I)V

    const/16 v8, 0x1b

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Lʽˊ/ʼᐧ;->ᵎﹶ(Ljava/lang/CharSequence;)V

    :cond_5
    const/16 v8, 0x1a

    invoke-virtual {v12, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x37

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v2, v8}, Lˉᵎ/ⁱˊ;->יـ(Landroid/content/Context;Lcom/parse/ٴʼ;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    :cond_7
    const/16 v8, 0x38

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v13}, Lˈᐧ/ٴﹶ;->ﾞᴵ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    :cond_8
    invoke-virtual {v12, v14, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v0, v8}, Lʽˊ/ʼᐧ;->ᵔᵢ(I)V

    const/16 v8, 0x34

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Lʽˊ/ʼᐧ;->ᵎﹶ(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f0704eb

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v14, 0x1d

    invoke-virtual {v12, v14, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    if-ltz v8, :cond_f

    iget v14, v0, Lʽˊ/ʼᐧ;->ˆﾞ:I

    if-eq v8, v14, :cond_a

    iput v8, v0, Lʽˊ/ʼᐧ;->ˆﾞ:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_a
    const/16 v8, 0x1f

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8}, Lˑˊ/ﹳٴ;->ⁱˊ(I)Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    iput-object v8, v0, Lʽˊ/ʼᐧ;->ᵔٴ:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_b
    const/16 v8, 0x8

    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0b03a4

    invoke-virtual {v11, v8}, Landroid/view/View;->setId(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42a00000    # 80.0f

    const/4 v14, -0x2

    invoke-direct {v8, v14, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v5}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    const/16 v5, 0x49

    invoke-virtual {v12, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/16 v3, 0x4a

    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v2, v3}, Lcom/parse/ٴʼ;->ˈʿ(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_c
    const/16 v2, 0x48

    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_1

    :cond_d
    move-object v13, v2

    :goto_1
    iput-object v13, v0, Lʽˊ/ʼᐧ;->ˑٴ:Ljava/lang/CharSequence;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lʽˊ/ʼᐧ;->ˉˆ()V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lʽˊ/ﾞʻ;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lʽˊ/ﾞʻ;-><init>(Lʽˊ/ʼᐧ;I)V

    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setOnFocusableChangedListener(Lˈᐧ/ﹳٴ;)V

    new-instance v2, Lʽˊ/ﾞʻ;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lʽˊ/ﾞʻ;-><init>(Lʽˊ/ʼᐧ;I)V

    invoke-virtual {v7, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setOnFocusableChangedListener(Lˈᐧ/ﹳٴ;)V

    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->ʻᴵ:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-eqz v2, :cond_e

    invoke-virtual {v4, v1}, Lʽˊ/ᵔʾ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_e
    new-instance v1, Lʽˊ/ˉˆ;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lʽˊ/ˉˆ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "endIconSize cannot be less than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final ʼˎ(Z)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˈ()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ﾞʻ()V

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ᵔʾ()V

    iget-object p1, p0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->יـ()Z

    :cond_1
    return-void
.end method

.method public final ʽ()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˈ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget-object v2, p0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method public final ˆʾ(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˉʿ()V

    iget-object p1, p0, Lʽˊ/ʼᐧ;->ˈٴ:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lʽˊ/ʼᐧ;->ᴵᵔ:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, p0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2, v0, p1, v1}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final ˈ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ᴵˊ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉʿ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/google/android/material/textfield/TextInputLayout;->ᵎˊ:Lʽˊ/יـ;

    iget-boolean v1, v1, Lʽˊ/יـ;->ᵔﹳ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->ˉˆ()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ﾞʻ()V

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ᵔʾ()V

    iget v0, p0, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->יـ()Z

    return-void
.end method

.method public final ˉˆ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lʽˊ/ʼᐧ;->ˑٴ:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lʽˊ/ʼᐧ;->ˊˋ:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ⁱˊ()Lʽˊ/ᵔﹳ;

    move-result-object v1

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v1, v3}, Lʽˊ/ᵔﹳ;->ˉˆ(Z)V

    :cond_2
    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ﾞʻ()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->יـ()Z

    return-void
.end method

.method public final ˑﹳ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ʽʽ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ٴﹶ(Lʽˊ/ᵔﹳ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ʼˈ:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lʽˊ/ᵔﹳ;->ˑﹳ()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʽˊ/ʼᐧ;->ʼˈ:Landroid/widget/EditText;

    invoke-virtual {p1}, Lʽˊ/ᵔﹳ;->ˑﹳ()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Lʽˊ/ᵔﹳ;->ᵎﹶ()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lʽˊ/ᵔﹳ;->ᵎﹶ()Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ᵎﹶ(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lʽˊ/ʼᐧ;->ˈʿ:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, v1, p1}, Lˑˊ/ﹳٴ;->ﾞʻ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final ᵔʾ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˈ()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˑﹳ()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070468

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lʽˊ/ʼᐧ;->ˋᵔ:Lˉˆ/ᐧﾞ;

    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final ᵔᵢ(I)V
    .locals 8

    .prologue
    iget v0, p0, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ⁱˊ()Lʽˊ/ᵔﹳ;

    move-result-object v0

    iget-object v1, p0, Lʽˊ/ʼᐧ;->ﹳـ:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    iget-object v2, p0, Lʽˊ/ʼᐧ;->ـˏ:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lʽˊ/ʼᐧ;->ﹳـ:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0}, Lʽˊ/ᵔﹳ;->ﹳᐧ()V

    iput p1, p0, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    iget-object v0, p0, Lʽˊ/ʼᐧ;->ٴʼ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lʽˊ/ʼᐧ;->ʼˎ(Z)V

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ⁱˊ()Lʽˊ/ᵔﹳ;

    move-result-object v3

    iget-object v4, p0, Lʽˊ/ʼᐧ;->ˉٴ:Lʻˆ/ﾞᴵ;

    iget v4, v4, Lʻˆ/ﾞᴵ;->ʾˋ:I

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lʽˊ/ᵔﹳ;->ˈ()I

    move-result v4

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    iget-object v5, p0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5, v4}, Lˉˆ/ʾᵎ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    iget-object v7, p0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v5, v4, v7}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    invoke-static {v6, v5, v4}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_5
    invoke-virtual {v3}, Lʽˊ/ᵔﹳ;->ˆʾ()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lʽˊ/ᵔﹳ;->ʼˎ(I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lʽˊ/ᵔﹳ;->ᵔﹳ()V

    invoke-virtual {v3}, Lʽˊ/ᵔﹳ;->ᵔᵢ()Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    move-result-object p1

    iput-object p1, p0, Lʽˊ/ʼᐧ;->ﹳـ:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lʽˊ/ʼᐧ;->ﹳـ:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_6
    invoke-virtual {v3}, Lʽˊ/ᵔﹳ;->ﾞᴵ()Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v2, p0, Lʽˊ/ʼᐧ;->ˈʿ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v5, v2}, Lˑˊ/ﹳٴ;->ʼˎ(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v3}, Lʽˊ/ᵔﹳ;->ʽ()I

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_7
    invoke-virtual {p0, v1}, Lʽˊ/ʼᐧ;->ᵎﹶ(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lʽˊ/ʼᐧ;->ʼˈ:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    invoke-virtual {v3, p1}, Lʽˊ/ᵔﹳ;->ﾞʻ(Landroid/widget/EditText;)V

    invoke-virtual {p0, v3}, Lʽˊ/ʼᐧ;->ٴﹶ(Lʽˊ/ᵔﹳ;)V

    :cond_8
    iget-object p1, p0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lʽˊ/ʼᐧ;->ᵔי:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v5, p1, v1}, Lˑˊ/ﹳٴ;->ﹳٴ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lʽˊ/ʼᐧ;->ﾞᴵ(Z)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current box background mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported by the end icon mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {v0}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ⁱˊ()Lʽˊ/ᵔﹳ;
    .locals 5

    .prologue
    iget v0, p0, Lʽˊ/ʼᐧ;->ᵎⁱ:I

    iget-object v1, p0, Lʽˊ/ʼᐧ;->ˉٴ:Lʻˆ/ﾞᴵ;

    iget-object v2, v1, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽˊ/ᵔﹳ;

    if-nez v3, :cond_5

    iget-object v3, v1, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lʽˊ/ʼᐧ;

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v1, Lʽˊ/ٴﹶ;

    invoke-direct {v1, v3}, Lʽˊ/ٴﹶ;-><init>(Lʽˊ/ʼᐧ;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid end icon mode: "

    invoke-static {v0, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lʽˊ/ʽ;

    invoke-direct {v1, v3}, Lʽˊ/ʽ;-><init>(Lʽˊ/ʼᐧ;)V

    goto :goto_0

    :cond_2
    new-instance v4, Lʽˊ/ـˆ;

    iget v1, v1, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    invoke-direct {v4, v3, v1}, Lʽˊ/ـˆ;-><init>(Lʽˊ/ʼᐧ;I)V

    move-object v1, v4

    goto :goto_0

    :cond_3
    new-instance v1, Lʽˊ/ˈ;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lʽˊ/ˈ;-><init>(Lʽˊ/ʼᐧ;I)V

    goto :goto_0

    :cond_4
    new-instance v1, Lʽˊ/ˈ;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lʽˊ/ˈ;-><init>(Lʽˊ/ʼᐧ;I)V

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v1

    :cond_5
    return-object v3
.end method

.method public final ﹳٴ(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 2

    .prologue
    const v0, 0x7f0e0034

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ᴵᵔ(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_0
    return-object p1
.end method

.method public final ﾞʻ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˑﹳ()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lʽˊ/ʼᐧ;->ᴵˊ:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lʽˊ/ʼᐧ;->ˑٴ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lʽˊ/ʼᐧ;->ˊˋ:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˈ()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ˑﹳ()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final ﾞᴵ(Z)V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lʽˊ/ʼᐧ;->ⁱˊ()Lʽˊ/ᵔﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lʽˊ/ᵔﹳ;->ˆʾ()Z

    move-result v1

    iget-object v2, p0, Lʽˊ/ʼᐧ;->ٴᵢ:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v2, Lcom/google/android/material/internal/CheckableImageButton;->ˈٴ:Z

    invoke-virtual {v0}, Lʽˊ/ᵔﹳ;->ٴﹶ()Z

    move-result v4

    if-eq v1, v4, :cond_0

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of v4, v0, Lʽˊ/ٴﹶ;

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    move-result v4

    check-cast v0, Lʽˊ/ٴﹶ;

    iget-boolean v0, v0, Lʽˊ/ٴﹶ;->ﾞʻ:Z

    if-eq v4, v0, :cond_1

    xor-int/lit8 v0, v4, 0x1

    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez p1, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    iget-object p1, p0, Lʽˊ/ʼᐧ;->ʾˋ:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lʽˊ/ʼᐧ;->ᵎˊ:Landroid/content/res/ColorStateList;

    invoke-static {p1, v2, v0}, Lˑˊ/ﹳٴ;->ᵎﹶ(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method
