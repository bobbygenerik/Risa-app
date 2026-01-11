.class public final Lʽˊ/ʽ;
.super Lʽˊ/ᵔﹳ;
.source "SourceFile"


# instance fields
.field public ʼˎ:Landroid/widget/EditText;

.field public final ˆʾ:Lcom/google/android/material/datepicker/ˉʿ;

.field public ˉʿ:Landroid/animation/ValueAnimator;

.field public final ˑﹳ:I

.field public final ٴﹶ:Lʼⁱ/ٴﹳ;

.field public final ᵎﹶ:Landroid/animation/TimeInterpolator;

.field public final ᵔᵢ:Landroid/animation/TimeInterpolator;

.field public ﾞʻ:Landroid/animation/AnimatorSet;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lʽˊ/ʼᐧ;)V
    .locals 3

    invoke-direct {p0, p1}, Lʽˊ/ᵔﹳ;-><init>(Lʽˊ/ʼᐧ;)V

    new-instance v0, Lcom/google/android/material/datepicker/ˉʿ;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/datepicker/ˉʿ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʽˊ/ʽ;->ˆʾ:Lcom/google/android/material/datepicker/ˉʿ;

    new-instance v0, Lʼⁱ/ٴﹳ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lʼⁱ/ٴﹳ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʽˊ/ʽ;->ٴﹶ:Lʼⁱ/ٴﹳ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x64

    const v2, 0x7f040458

    invoke-static {v0, v2, v1}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lʽˊ/ʽ;->ˑﹳ:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x96

    invoke-static {v0, v2, v1}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lʽˊ/ʽ;->ﾞᴵ:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040461

    sget-object v2, Lˑˏ/ﹳٴ;->ﹳٴ:Landroid/view/animation/LinearInterpolator;

    invoke-static {v0, v1, v2}, Lﹳˋ/ʽʽ;->ـˆ(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lʽˊ/ʽ;->ᵎﹶ:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f04045f

    sget-object v1, Lˑˏ/ﹳٴ;->ˈ:Lᵎʻ/ﹳٴ;

    invoke-static {p1, v0, v1}, Lﹳˋ/ʽʽ;->ـˆ(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lʽˊ/ʽ;->ᵔᵢ:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public final ʽ()I
    .locals 1

    const v0, 0x7f13003e

    return v0
.end method

.method public final ˈ()I
    .locals 1

    const v0, 0x7f0801dc

    return v0
.end method

.method public final ˉˆ(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʽˊ/ᵔﹳ;->ⁱˊ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˑٴ:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lʽˊ/ʽ;->יـ(Z)V

    return-void
.end method

.method public final ˏי()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʽˊ/ʽ;->ʼˎ:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽˊ/ᵔﹳ;->ˈ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lʽˊ/ʽ;->ʼˎ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ˑﹳ()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lʽˊ/ʽ;->ٴﹶ:Lʼⁱ/ٴﹳ;

    return-object v0
.end method

.method public final יـ(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ᵔﹳ;->ⁱˊ:Lʽˊ/ʼᐧ;

    invoke-virtual {v0}, Lʽˊ/ʼᐧ;->ˈ()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lʽˊ/ʽ;->ﾞʻ:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lʽˊ/ʽ;->ˉʿ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lʽˊ/ʽ;->ﾞʻ:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lʽˊ/ʽ;->ﾞʻ:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lʽˊ/ʽ;->ﾞʻ:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lʽˊ/ʽ;->ˉʿ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lʽˊ/ʽ;->ˉʿ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    return-void
.end method

.method public final ᵎﹶ()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lʽˊ/ʽ;->ٴﹶ:Lʼⁱ/ٴﹳ;

    return-object v0
.end method

.method public final ᵔﹳ()V
    .locals 9

    .prologue
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lʽˊ/ʽ;->ᵔᵢ:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lʽˊ/ʽ;->ﾞᴵ:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lʽˊ/ﹳٴ;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lʽˊ/ﹳٴ;-><init>(Lʽˊ/ʽ;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v4, p0, Lʽˊ/ʽ;->ᵎﹶ:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lʽˊ/ʽ;->ˑﹳ:I

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lʽˊ/ﹳٴ;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lʽˊ/ﹳٴ;-><init>(Lʽˊ/ʽ;I)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lʽˊ/ʽ;->ﾞʻ:Landroid/animation/AnimatorSet;

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v1, v8, v7

    aput-object v2, v8, v3

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lʽˊ/ʽ;->ﾞʻ:Landroid/animation/AnimatorSet;

    new-instance v2, Lʽˊ/ⁱˊ;

    invoke-direct {v2, p0, v7}, Lʽˊ/ⁱˊ;-><init>(Lʽˊ/ʽ;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lʽˊ/ﹳٴ;

    invoke-direct {v1, p0, v7}, Lʽˊ/ﹳٴ;-><init>(Lʽˊ/ʽ;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lʽˊ/ʽ;->ˉʿ:Landroid/animation/ValueAnimator;

    new-instance v1, Lʽˊ/ⁱˊ;

    invoke-direct {v1, p0, v3}, Lʽˊ/ⁱˊ;-><init>(Lʽˊ/ʽ;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final ﹳٴ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʽˊ/ᵔﹳ;->ⁱˊ:Lʽˊ/ʼᐧ;

    iget-object v0, v0, Lʽˊ/ʼᐧ;->ˑٴ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lʽˊ/ʽ;->ˏי()Z

    move-result v0

    invoke-virtual {p0, v0}, Lʽˊ/ʽ;->יـ(Z)V

    return-void
.end method

.method public final ﹳᐧ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˊ/ʽ;->ʼˎ:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/lifecycle/ᵎⁱ;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ﾞʻ(Landroid/widget/EditText;)V
    .locals 1

    iput-object p1, p0, Lʽˊ/ʽ;->ʼˎ:Landroid/widget/EditText;

    iget-object p1, p0, Lʽˊ/ᵔﹳ;->ﹳٴ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lʽˊ/ʽ;->ˏי()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method

.method public final ﾞᴵ()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lʽˊ/ʽ;->ˆʾ:Lcom/google/android/material/datepicker/ˉʿ;

    return-object v0
.end method
