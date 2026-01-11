.class public final Lˉˆ/ˑٴ;
.super Landroid/widget/Spinner;
.source "SourceFile"


# static fields
.field public static final ᵎⁱ:[I


# instance fields
.field public final ʽʽ:Lˉˆ/ٴᵢ;

.field public final ʾˋ:Lʻᴵ/ʼʼ;

.field public ˈٴ:Landroid/widget/SpinnerAdapter;

.field public final ˉٴ:Landroid/graphics/Rect;

.field public final ˊʻ:Lˉˆ/ˈʿ;

.field public ٴᵢ:I

.field public final ᴵˊ:Landroid/content/Context;

.field public final ᴵᵔ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10102f1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lˉˆ/ˑٴ;->ᵎⁱ:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    const v0, 0x7f04059d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lˉˆ/ˑٴ;->ˉٴ:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    const/4 v1, 0x0

    sget-object v2, Lᵎﹶ/ﹳٴ;->ʽﹳ:[I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object v3

    iget-object v4, v3, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/TypedArray;

    new-instance v5, Lʻᴵ/ʼʼ;

    invoke-direct {v5, p0}, Lʻᴵ/ʼʼ;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v6, Lˉʿ/ʽ;

    invoke-direct {v6, p1, v5}, Lˉʿ/ʽ;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lˉˆ/ˑٴ;->ᴵˊ:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lˉˆ/ˑٴ;->ᴵˊ:Landroid/content/Context;

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Lˉˆ/ˑٴ;->ᵎⁱ:[I

    invoke-virtual {p1, p2, v7, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v6, v7

    goto/16 :goto_5

    :catch_0
    move-exception v8

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception v8

    move-object v7, v6

    :goto_2
    :try_start_2
    const-string v9, "AppCompatSpinner"

    const-string v10, "Could not read android:spinnerMode"

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    goto :goto_4

    :cond_3
    new-instance v5, Lˉˆ/ˆﾞ;

    iget-object v9, p0, Lˉˆ/ˑٴ;->ᴵˊ:Landroid/content/Context;

    invoke-direct {v5, p0, v9, p2}, Lˉˆ/ˆﾞ;-><init>(Lˉˆ/ˑٴ;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v9, p0, Lˉˆ/ˑٴ;->ᴵˊ:Landroid/content/Context;

    invoke-static {v0, v1, v9, p2, v2}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object v2

    iget-object v9, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v9, Landroid/content/res/TypedArray;

    const/4 v10, 0x3

    const/4 v11, -0x2

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v9

    iput v9, p0, Lˉˆ/ˑٴ;->ٴᵢ:I

    invoke-virtual {v2, v8}, Lcom/parse/ٴʼ;->ˑٴ(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Lˉˆ/ʿـ;->ʼˎ(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lˉˆ/ˆﾞ;->ˏᵢ:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    iput-object v5, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    new-instance v2, Lˉˆ/ٴᵢ;

    invoke-direct {v2, p0, p0, v5}, Lˉˆ/ٴᵢ;-><init>(Lˉˆ/ˑٴ;Lˉˆ/ˑٴ;Lˉˆ/ˆﾞ;)V

    iput-object v2, p0, Lˉˆ/ˑٴ;->ʽʽ:Lˉˆ/ٴᵢ;

    goto :goto_4

    :cond_4
    new-instance v2, Lˉˆ/ٴʼ;

    invoke-direct {v2, p0}, Lˉˆ/ٴʼ;-><init>(Lˉˆ/ˑٴ;)V

    iput-object v2, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lˉˆ/ٴʼ;->ʽʽ:Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v2, p1, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x7f0e0137

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v2}, Lˉˆ/ˑٴ;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    invoke-virtual {v3}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    iput-boolean v8, p0, Lˉˆ/ˑٴ;->ᴵᵔ:Z

    iget-object p1, p0, Lˉˆ/ˑٴ;->ˈٴ:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lˉˆ/ˑٴ;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iput-object v6, p0, Lˉˆ/ˑٴ;->ˈٴ:Landroid/widget/SpinnerAdapter;

    :cond_6
    iget-object p1, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    invoke-virtual {p1, p2, v0}, Lʻᴵ/ʼʼ;->ˉʿ(Landroid/util/AttributeSet;I)V

    return-void

    :goto_5
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    throw p1
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    iget-object v0, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lˉˆ/ˈʿ;->ⁱˊ()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lˉˆ/ˈʿ;->ᵔʾ()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    iget v0, p0, Lˉˆ/ˑٴ;->ٴᵢ:I

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public final getInternalPopup()Lˉˆ/ˈʿ;
    .locals 1

    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lˉˆ/ˈʿ;->ʽ()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lˉˆ/ˑٴ;->ᴵˊ:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lˉˆ/ˈʿ;->ˉˆ()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ˆʾ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ٴﹶ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lˉˆ/ˈʿ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lˉˆ/ˈʿ;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lˉˆ/ˑٴ;->ﹳٴ(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    check-cast p1, Lˉˆ/ᵔٴ;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lˉˆ/ᵔٴ;->ʾˋ:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lˉˆ/ˉٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lˉˆ/ˉٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    new-instance v0, Lˉˆ/ᵔٴ;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lˉˆ/ˈʿ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lˉˆ/ᵔٴ;->ʾˋ:Z

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ʽʽ:Lˉˆ/ٴᵢ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lˉˆ/ˎᐧ;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final performClick()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lˉˆ/ˈʿ;->ﹳٴ()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lˉˆ/ˈʿ;->ˉʿ(II)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lˉˆ/ˑٴ;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lˉˆ/ˑٴ;->ᴵᵔ:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lˉˆ/ˑٴ;->ˈٴ:Landroid/widget/SpinnerAdapter;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lˉˆ/ˑٴ;->ᴵˊ:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :cond_1
    new-instance v2, Lˉˆ/ᵎˊ;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lˉˆ/ᵎˊ;->ﹳٴ:Landroid/widget/SpinnerAdapter;

    instance-of v3, p1, Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/widget/ListAdapter;

    iput-object v3, v2, Lˉˆ/ᵎˊ;->ⁱˊ:Landroid/widget/ListAdapter;

    :cond_2
    if-eqz v1, :cond_3

    instance-of v3, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v3, :cond_3

    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    invoke-static {p1, v1}, Lˉˆ/ᵎⁱ;->ﹳٴ(Landroid/widget/ThemedSpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    :cond_3
    invoke-interface {v0, v2}, Lˉˆ/ˈʿ;->ʼᐧ(Landroid/widget/ListAdapter;)V

    :cond_4
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʻᴵ/ʼʼ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    iget-object v0, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʼᐧ(I)V

    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lˉˆ/ˈʿ;->ٴﹶ(I)V

    invoke-interface {v0, p1}, Lˉˆ/ˈʿ;->ﾞʻ(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lˉˆ/ˈʿ;->ˆʾ(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    iput p1, p0, Lˉˆ/ˑٴ;->ٴᵢ:I

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lˉˆ/ˈʿ;->ʼˎ(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Lˉˆ/ˑٴ;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˉˆ/ˑٴ;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lˉˆ/ˈʿ;->ᵎﹶ(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ـˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ˑٴ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʾᵎ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final ﹳٴ(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v5

    move v3, v0

    :goto_0
    if-ge v6, v4, :cond_3

    invoke-interface {p1, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    :cond_1
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lˉˆ/ˑٴ;->ˉٴ:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    add-int/2addr p2, v3

    return p2

    :cond_4
    return v3
.end method
