.class public Lˉˆ/ᐧﾞ;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lﹳـ/ﾞʻ;


# instance fields
.field public final ʽʽ:Lˉˆ/ʾˋ;

.field public final ʾˋ:Lʻᴵ/ʼʼ;

.field public ˈٴ:Lˉˆ/ـˆ;

.field public ˊʻ:Lˉˆ/ʿ;

.field public ٴᵢ:Ljava/util/concurrent/Future;

.field public final ᴵˊ:Lˉˆ/ᴵˑ;

.field public ᴵᵔ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lˉˆ/ᐧﾞ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lˉˆ/ﹳᵢ;->ﹳٴ(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˉˆ/ᐧﾞ;->ᴵᵔ:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lˉˆ/ᐧﾞ;->ˊʻ:Lˉˆ/ʿ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lʻᴵ/ʼʼ;

    invoke-direct {p1, p0}, Lʻᴵ/ʼʼ;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lˉˆ/ᐧﾞ;->ʾˋ:Lʻᴵ/ʼʼ;

    invoke-virtual {p1, p2, p3}, Lʻᴵ/ʼʼ;->ˉʿ(Landroid/util/AttributeSet;I)V

    new-instance p1, Lˉˆ/ᴵˑ;

    invoke-direct {p1, p0}, Lˉˆ/ᴵˑ;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {p1, p2, p3}, Lˉˆ/ᴵˑ;->ﾞᴵ(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    new-instance p1, Lˉˆ/ʾˋ;

    invoke-direct {p1}, Lˉˆ/ʾˋ;-><init>()V

    iput-object p0, p1, Lˉˆ/ʾˋ;->ⁱˊ:Landroid/view/View;

    iput-object p1, p0, Lˉˆ/ᐧﾞ;->ʽʽ:Lˉˆ/ʾˋ;

    invoke-direct {p0}, Lˉˆ/ᐧﾞ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lˉˆ/ـˆ;->ⁱˊ(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEmojiTextViewHelper()Lˉˆ/ـˆ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ˈٴ:Lˉˆ/ـˆ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ـˆ;

    invoke-direct {v0, p0}, Lˉˆ/ـˆ;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lˉˆ/ᐧﾞ;->ˈٴ:Lˉˆ/ـˆ;

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ˈٴ:Lˉˆ/ـˆ;

    return-object v0
.end method

.method public static synthetic ˈ(Lˉˆ/ᐧﾞ;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void
.end method

.method public static synthetic ˑﹳ(Lˉˆ/ᐧﾞ;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    return-void
.end method

.method public static synthetic ﾞᴵ(Lˉˆ/ᐧﾞ;IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineHeight(IF)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ⁱˊ()V

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget v0, v0, Lˉˆ/ˊᵔ;->ˑﹳ:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget v0, v0, Lˉˆ/ˊᵔ;->ˈ:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget v0, v0, Lˉˆ/ˊᵔ;->ʽ:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget-object v0, v0, Lˉˆ/ˊᵔ;->ﾞᴵ:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget v0, v0, Lˉˆ/ˊᵔ;->ﹳٴ:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-static {v0}, Lﹳٴ/ﹳٴ;->ᴵˑ(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSuperCaller()Lˉˆ/ˉـ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ˊʻ:Lˉˆ/ʿ;

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Lˉˆ/ᵎᵔ;

    invoke-direct {v0, p0}, Lˉˆ/ᵎᵔ;-><init>(Lˉˆ/ᐧﾞ;)V

    iput-object v0, p0, Lˉˆ/ᐧﾞ;->ˊʻ:Lˉˆ/ʿ;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, Lˉˆ/ʿᵢ;

    invoke-direct {v0, p0}, Lˉˆ/ʿᵢ;-><init>(Lˉˆ/ᐧﾞ;)V

    iput-object v0, p0, Lˉˆ/ᐧﾞ;->ˊʻ:Lˉˆ/ʿ;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    new-instance v0, Lˉˆ/ʿ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lˉˆ/ᐧﾞ;->ˊʻ:Lˉˆ/ʿ;

    :cond_2
    :goto_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ˊʻ:Lˉˆ/ʿ;

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ʾˋ:Lʻᴵ/ʼʼ;

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
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʻᴵ/ʼʼ;->ٴﹶ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˈ()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ˑﹳ()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ٴᵢ:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lˉˆ/ᐧﾞ;->ٴᵢ:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    throw v1

    :cond_1
    invoke-static {p0}, Lﹳٴ/ﹳٴ;->ᵢˏ(Lˉˆ/ᐧﾞ;)Lˈʿ/ʽ;

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ʽʽ:Lˉˆ/ʾˋ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lˉˆ/ʾˋ;->ʽ:Ljava/lang/Object;

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_1

    iget-object v0, v0, Lˉˆ/ʾˋ;->ⁱˊ:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lˉˆ/ˋᵔ;->ﹳٴ(Landroid/widget/TextView;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParamsCompat()Lˈʿ/ʽ;
    .locals 1

    invoke-static {p0}, Lﹳٴ/ﹳٴ;->ᵢˏ(Lˉˆ/ᐧﾞ;)Lˈʿ/ʽ;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p0}, Lˉˆ/ᴵˑ;->ᵔᵢ(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ʼʼ(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object p2, p1, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p2, :cond_0

    sget-boolean p3, Lˉˆ/ˆˎ;->ʽ:Z

    if-nez p3, :cond_0

    iget-object p2, p2, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    invoke-virtual {p2}, Lˉˆ/ˊᵔ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ٴᵢ:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lˉˆ/ᐧﾞ;->ٴᵢ:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    throw v1

    :cond_1
    invoke-static {p0}, Lﹳٴ/ﹳٴ;->ᵢˏ(Lˉˆ/ᐧﾞ;)Lˈʿ/ʽ;

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    sget-boolean p2, Lˉˆ/ˆˎ;->ʽ:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lˉˆ/ˊᵔ;->ﾞᴵ()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lˉˆ/ˊᵔ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Lˉˆ/ᐧﾞ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ʽ(Z)V

    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lˉˆ/ᴵˑ;->ʼˎ(IIII)V

    :cond_1
    return-void
.end method

.method public final setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lˉˆ/ᴵˑ;->ˆʾ([II)V

    :cond_1
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ٴﹶ(I)V

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᐧﾞ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʻᴵ/ʼʼ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʼᐧ(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {v0, p3}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    invoke-static {v0, p4}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lˉˆ/ᐧﾞ;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_4
    return-void
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {v0, p3}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    invoke-static {v0, p4}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lˉˆ/ᐧﾞ;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_4
    return-void
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p1, p0}, Lﹳٴ/ﹳٴ;->ˉـ(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lˉˆ/ᐧﾞ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ˈ(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Lˉˆ/ᐧﾞ;->getEmojiTextViewHelper()Lˉˆ/ـˆ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lˉˆ/ـˆ;->ﹳٴ([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    invoke-interface {v0, p1}, Lˉˆ/ˉـ;->ᴵˊ(I)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lﹳٴ/ﹳٴ;->ᵔٴ(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    invoke-interface {v0, p1}, Lˉˆ/ˉـ;->ٴﹶ(I)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lﹳٴ/ﹳٴ;->ˈʿ(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    invoke-static {p0, p1}, Lﹳٴ/ﹳٴ;->ˑٴ(Landroid/widget/TextView;I)V

    return-void
.end method

.method public final setLineHeight(IF)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lˉˆ/ˉـ;->ᵎⁱ(IF)V

    return-void

    :cond_0
    if-lt v0, v1, :cond_1

    invoke-static {p0, p1, p2}, Lˊˋ/ﾞᴵ;->ʼˎ(Landroid/widget/TextView;IF)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p1}, Lﹳٴ/ﹳٴ;->ˑٴ(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setPrecomputedText(Lˈʿ/ˈ;)V
    .locals 2

    .prologue
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    throw v1

    :cond_0
    invoke-static {p0}, Lﹳٴ/ﹳٴ;->ᵢˏ(Lˉˆ/ᐧﾞ;)Lˈʿ/ʽ;

    throw v1
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ـˆ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ʾˋ:Lʻᴵ/ʼʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʻᴵ/ʼʼ;->ʾᵎ(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ﾞʻ(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    invoke-virtual {v0, p1}, Lˉˆ/ᴵˑ;->ˉʿ(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Lˉˆ/ᴵˑ;->ⁱˊ()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lˉˆ/ᴵˑ;->ᵎﹶ(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lˉˆ/ᐧﾞ;->ʽʽ:Lˉˆ/ʾˋ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lˉˆ/ʾˋ;->ʽ:Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lˉˆ/ᐧﾞ;->getSuperCaller()Lˉˆ/ˉـ;

    move-result-object v0

    check-cast v0, Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ᐧﾞ;

    invoke-super {v0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "L\u02c8\u02bf/\u02c8;",
            ">;)V"
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lˉˆ/ᐧﾞ;->ٴᵢ:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTextMetricsParamsCompat(Lˈʿ/ʽ;)V
    .locals 5

    .prologue
    iget-object v0, p1, Lˈʿ/ʽ;->ⁱˊ:Landroid/text/TextDirectionHeuristic;

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v4, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v4, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne v0, v4, :cond_5

    const/4 v2, 0x5

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_6

    const/4 v2, 0x6

    goto :goto_0

    :cond_6
    if-ne v0, v1, :cond_7

    const/4 v2, 0x7

    :cond_7
    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p1, Lˈʿ/ʽ;->ﹳٴ:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget v0, p1, Lˈʿ/ʽ;->ʽ:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    iget p1, p1, Lˈʿ/ʽ;->ˈ:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    return-void
.end method

.method public final setTextSize(IF)V
    .locals 2

    .prologue
    sget-boolean v0, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    iget-object v1, p0, Lˉˆ/ᐧﾞ;->ᴵˊ:Lˉˆ/ᴵˑ;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lˉˆ/ˊᵔ;->ﾞᴵ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1, p2}, Lˉˆ/ˊᵔ;->ᵎﹶ(IF)V

    :cond_1
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;I)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˉˆ/ᐧﾞ;->ᴵᵔ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lˉˆ/ᐧﾞ;->ᴵᵔ:Z

    if-eqz v0, :cond_3

    move-object p1, v0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lˉˆ/ᐧﾞ;->ᴵᵔ:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lˉˆ/ᐧﾞ;->ᴵᵔ:Z

    throw p1
.end method
