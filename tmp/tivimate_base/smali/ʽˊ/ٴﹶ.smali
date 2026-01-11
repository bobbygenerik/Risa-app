.class public final Lʽˊ/ٴﹶ;
.super Lʽˊ/ᵔﹳ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lcom/google/android/material/datepicker/ˉʿ;

.field public ʼᐧ:Landroid/view/accessibility/AccessibilityManager;

.field public final ˆʾ:Lʼⁱ/ٴﹳ;

.field public ˉʿ:Z

.field public ˉˆ:J

.field public final ˑﹳ:I

.field public final ٴﹶ:Lʽˊ/ˆʾ;

.field public final ᵎﹶ:Landroid/animation/TimeInterpolator;

.field public ᵔʾ:Z

.field public ᵔᵢ:Landroid/widget/AutoCompleteTextView;

.field public ᵔﹳ:Landroid/animation/ValueAnimator;

.field public ﹳᐧ:Landroid/animation/ValueAnimator;

.field public ﾞʻ:Z

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lʽˊ/ʼᐧ;)V
    .locals 3

    invoke-direct {p0, p1}, Lʽˊ/ᵔﹳ;-><init>(Lʽˊ/ʼᐧ;)V

    new-instance v0, Lcom/google/android/material/datepicker/ˉʿ;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/datepicker/ˉʿ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʽˊ/ٴﹶ;->ʼˎ:Lcom/google/android/material/datepicker/ˉʿ;

    new-instance v0, Lʼⁱ/ٴﹳ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lʼⁱ/ٴﹳ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʽˊ/ٴﹶ;->ˆʾ:Lʼⁱ/ٴﹳ;

    new-instance v0, Lʽˊ/ˆʾ;

    invoke-direct {v0, p0}, Lʽˊ/ˆʾ;-><init>(Lʽˊ/ٴﹶ;)V

    iput-object v0, p0, Lʽˊ/ٴﹶ;->ٴﹶ:Lʽˊ/ˆʾ;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lʽˊ/ٴﹶ;->ˉˆ:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x43

    const v2, 0x7f040458

    invoke-static {v0, v2, v1}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lʽˊ/ٴﹶ;->ﾞᴵ:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v0, v2, v1}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lʽˊ/ٴﹶ;->ˑﹳ:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f040461

    sget-object v1, Lˑˏ/ﹳٴ;->ﹳٴ:Landroid/view/animation/LinearInterpolator;

    invoke-static {p1, v0, v1}, Lﹳˋ/ʽʽ;->ـˆ(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lʽˊ/ٴﹶ;->ᵎﹶ:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public final ʼˎ(I)Z
    .locals 0

    .prologue
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ʽ()I
    .locals 1

    const v0, 0x7f1300c7

    return v0
.end method

.method public final ˈ()I
    .locals 1

    const v0, 0x7f0801d9

    return v0
.end method

.method public final ˉʿ(Lˊˋ/ᵔᵢ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lˈˊ/ᵔʾ;->יـ(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lˊˋ/ᵔᵢ;->ˆʾ(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lˊˋ/ᵔᵢ;->ᵔᵢ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lˊˋ/ᵔᵢ;->ᵔʾ(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final ˏי()V
    .locals 6

    .prologue
    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lʽˊ/ٴﹶ;->ˉˆ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    const-wide/16 v4, 0x12c

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    :cond_1
    iput-boolean v3, p0, Lʽˊ/ٴﹶ;->ˉʿ:Z

    :cond_2
    iget-boolean v0, p0, Lʽˊ/ٴﹶ;->ˉʿ:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lʽˊ/ٴﹶ;->ᵔʾ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lʽˊ/ٴﹶ;->יـ(Z)V

    iget-boolean v0, p0, Lʽˊ/ٴﹶ;->ᵔʾ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void

    :cond_3
    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void

    :cond_4
    iput-boolean v3, p0, Lʽˊ/ٴﹶ;->ˉʿ:Z

    return-void
.end method

.method public final ˑﹳ()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ˆʾ:Lʼⁱ/ٴﹳ;

    return-object v0
.end method

.method public final יـ(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʽˊ/ٴﹶ;->ᵔʾ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lʽˊ/ٴﹶ;->ᵔʾ:Z

    iget-object p1, p0, Lʽˊ/ٴﹶ;->ﹳᐧ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lʽˊ/ٴﹶ;->ᵔﹳ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final ٴﹶ()Z
    .locals 1

    iget-boolean v0, p0, Lʽˊ/ٴﹶ;->ᵔʾ:Z

    return v0
.end method

.method public final ᵔʾ(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ٴﹶ;->ʼᐧ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lˈˊ/ᵔʾ;->יـ(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lʽˊ/ٴﹶ;->ᵔʾ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    if-eq p1, v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lʽˊ/ٴﹶ;->ˏי()V

    iput-boolean v2, p0, Lʽˊ/ٴﹶ;->ˉʿ:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lʽˊ/ٴﹶ;->ˉˆ:J

    :cond_4
    :goto_1
    return-void
.end method

.method public final ᵔᵢ()Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 1

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ٴﹶ:Lʽˊ/ˆʾ;

    return-object v0
.end method

.method public final ᵔﹳ()V
    .locals 5

    .prologue
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lʽˊ/ٴﹶ;->ᵎﹶ:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lʽˊ/ٴﹶ;->ﾞᴵ:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroidx/leanback/widget/ʻˋ;

    invoke-direct {v3, v0, p0}, Landroidx/leanback/widget/ʻˋ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lʽˊ/ٴﹶ;->ﹳᐧ:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lʽˊ/ٴﹶ;->ˑﹳ:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/leanback/widget/ʻˋ;

    invoke-direct {v2, v0, p0}, Landroidx/leanback/widget/ʻˋ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lʽˊ/ٴﹶ;->ᵔﹳ:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/leanback/widget/ᵔٴ;

    invoke-direct {v2, v0, p0}, Landroidx/leanback/widget/ᵔٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lʽˊ/ᵔﹳ;->ʽ:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lʽˊ/ٴﹶ;->ʼᐧ:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ٴﹶ;->ʼᐧ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lˈˊ/ᵔʾ;->יـ(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʽˊ/ᵔﹳ;->ˈ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Landroidx/lifecycle/ᵎⁱ;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ﹳᐧ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public final ﾞʻ(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lʽˊ/ᵔᵢ;

    invoke-direct {v1, p0}, Lʽˊ/ᵔᵢ;-><init>(Lʽˊ/ٴﹶ;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lʽˊ/ʼˎ;

    invoke-direct {v1, p0}, Lʽˊ/ʼˎ;-><init>(Lʽˊ/ٴﹶ;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lʽˊ/ᵔﹳ;->ﹳٴ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lʽˊ/ٴﹶ;->ʼᐧ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lʽˊ/ᵔﹳ;->ˈ:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﾞᴵ()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lʽˊ/ٴﹶ;->ʼˎ:Lcom/google/android/material/datepicker/ˉʿ;

    return-object v0
.end method
