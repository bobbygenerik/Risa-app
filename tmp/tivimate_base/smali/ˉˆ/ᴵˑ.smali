.class public final Lˉˆ/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lˉˆ/ˊᵔ;

.field public ʽ:Lˉˆ/ᵢˋ;

.field public ˆʾ:I

.field public ˈ:Lˉˆ/ᵢˋ;

.field public ˉʿ:Z

.field public ˑﹳ:Lˉˆ/ᵢˋ;

.field public ٴﹶ:I

.field public ᵎﹶ:Lˉˆ/ᵢˋ;

.field public ᵔᵢ:Lˉˆ/ᵢˋ;

.field public ⁱˊ:Lˉˆ/ᵢˋ;

.field public final ﹳٴ:Landroid/widget/TextView;

.field public ﾞʻ:Landroid/graphics/Typeface;

.field public ﾞᴵ:Lˉˆ/ᵢˋ;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    const/4 v0, -0x1

    iput v0, p0, Lˉˆ/ᴵˑ;->ٴﹶ:I

    iput-object p1, p0, Lˉˆ/ᴵˑ;->ﹳٴ:Landroid/widget/TextView;

    new-instance v0, Lˉˆ/ˊᵔ;

    invoke-direct {v0, p1}, Lˉˆ/ˊᵔ;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Lˉˆ/ˏי;I)Lˉˆ/ᵢˋ;
    .locals 1

    .prologue
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lˉˆ/ˏי;->ﹳٴ:Lˉˆ/ʼᵢ;

    invoke-virtual {v0, p0, p2}, Lˉˆ/ʼᵢ;->ʼˎ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz p0, :cond_0

    new-instance p1, Lˉˆ/ᵢˋ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lˉˆ/ᵢˋ;->ⁱˊ:Z

    iput-object p0, p1, Lˉˆ/ᵢˋ;->ʽ:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static ᵔᵢ(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .locals 10

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lʼˈ/ﹳٴ;->ﹳٴ(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lʼˈ/ﹳٴ;->ﹳٴ(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le p2, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-le p2, v0, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v1, :cond_c

    if-le p2, v0, :cond_4

    goto/16 :goto_5

    :cond_4
    iget v4, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v4, v4, 0xfff

    const/16 v5, 0x81

    if-eq v4, v5, :cond_b

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    goto/16 :goto_4

    :cond_5
    const/16 v3, 0x800

    if-gt v0, v3, :cond_6

    invoke-static {p0, p1, v1, p2}, Lʼˈ/ⁱˊ;->ʽ(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    :cond_6
    sub-int v0, p2, v1

    const/16 v3, 0x400

    if-le v0, v3, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v0

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p2

    rsub-int v5, v3, 0x800

    const-wide v6, 0x3fe999999999999aL    # 0.8

    int-to-double v8, v5

    mul-double/2addr v8, v6

    double-to-int v6, v8

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v5, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, -0x1

    :cond_8
    add-int v6, p2, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v4, v4, -0x1

    :cond_9
    add-int v6, v5, v3

    add-int v8, v6, v4

    if-eq v3, v0, :cond_a

    add-int v0, v1, v5

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    add-int/2addr v4, p2

    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    aput-object v0, p2, v2

    aput-object p1, p2, v7

    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    :cond_a
    add-int/2addr v8, v1

    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_3
    invoke-static {p0, p1, v5, v6}, Lʼˈ/ⁱˊ;->ʽ(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    :cond_b
    :goto_4
    invoke-static {p0, v3, v2, v2}, Lʼˈ/ⁱˊ;->ʽ(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    :cond_c
    :goto_5
    invoke-static {p0, v3, v2, v2}, Lʼˈ/ⁱˊ;->ʽ(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    :cond_d
    return-void
.end method


# virtual methods
.method public final ʼˎ(IIII)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ˆʾ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lˉˆ/ˊᵔ;->ˆʾ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lˉˆ/ˊᵔ;->ٴﹶ(FFF)V

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ᵔᵢ()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public final ˆʾ([II)V
    .locals 6

    .prologue
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ˆʾ()Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    new-array v3, v1, [I

    if-nez p2, :cond_0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lˉˆ/ˊᵔ;->ˆʾ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v3}, Lˉˆ/ˊᵔ;->ⁱˊ([I)[I

    move-result-object p2

    iput-object p2, v0, Lˉˆ/ˊᵔ;->ﾞᴵ:[I

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ʼˎ()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "None of the preset sizes is valid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    iput-boolean v2, v0, Lˉˆ/ˊᵔ;->ᵎﹶ:Z

    :goto_2
    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ᵔᵢ()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ﹳٴ()V

    :cond_4
    return-void
.end method

.method public final ˈ()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ᵔᵢ:Lˉˆ/ᵢˋ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˉˆ/ᵢˋ;->ʽ:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˉʿ(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ᵔᵢ:Lˉˆ/ᵢˋ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ᵢˋ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ᵔᵢ:Lˉˆ/ᵢˋ;

    :cond_0
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ᵔᵢ:Lˉˆ/ᵢˋ;

    iput-object p1, v0, Lˉˆ/ᵢˋ;->ˈ:Ljava/io/Serializable;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lˉˆ/ᵢˋ;->ﹳٴ:Z

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ⁱˊ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ʽ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ˈ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ˑﹳ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ﾞᴵ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ᵎﹶ:Lˉˆ/ᵢˋ;

    return-void
.end method

.method public final ˑﹳ()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ᵔᵢ:Lˉˆ/ᵢˋ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˉˆ/ᵢˋ;->ˈ:Ljava/io/Serializable;

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ٴﹶ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ˆʾ()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lˉˆ/ˊᵔ;->ˆʾ:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, v2}, Lˉˆ/ˊᵔ;->ٴﹶ(FFF)V

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ᵔᵢ()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lˉˆ/ˊᵔ;->ﹳٴ()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    iput p1, v0, Lˉˆ/ˊᵔ;->ﹳٴ:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lˉˆ/ˊᵔ;->ˈ:F

    iput v1, v0, Lˉˆ/ˊᵔ;->ˑﹳ:F

    iput v1, v0, Lˉˆ/ˊᵔ;->ʽ:F

    new-array v1, p1, [I

    iput-object v1, v0, Lˉˆ/ˊᵔ;->ﾞᴵ:[I

    iput-boolean p1, v0, Lˉˆ/ˊᵔ;->ⁱˊ:Z

    :cond_2
    return-void
.end method

.method public final ᵎﹶ(Landroid/content/Context;I)V
    .locals 5

    .prologue
    new-instance v0, Lcom/parse/ٴʼ;

    sget-object v1, Lᵎﹶ/ﹳٴ;->ـˆ:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/parse/ٴʼ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/16 v1, 0xe

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iget-object v3, p0, Lˉˆ/ᴵˑ;->ﹳٴ:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0, p1, v0}, Lˉˆ/ᴵˑ;->ᵔʾ(Landroid/content/Context;Lcom/parse/ٴʼ;)V

    const/16 p1, 0x1a

    if-lt v1, p1, :cond_2

    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v3, p1}, Lˉˆ/ﹳـ;->ˈ(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v0}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    iget-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget p2, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public final ᵔʾ(Landroid/content/Context;Lcom/parse/ٴʼ;)V
    .locals 11

    .prologue
    iget v0, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    iget-object v1, p2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/TypedArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, -0x1

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_0

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lˉˆ/ᴵˑ;->ٴﹶ:I

    if-eq v5, v3, :cond_0

    iget v5, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    and-int/2addr v5, v2

    iput v5, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    :cond_0
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_5

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v8, p0, Lˉˆ/ᴵˑ;->ˉʿ:Z

    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v9, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    return-void

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    return-void

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    return-void

    :cond_5
    :goto_0
    const/4 v6, 0x0

    iput-object v6, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v5, v7

    :cond_6
    iget v6, p0, Lˉˆ/ᴵˑ;->ٴﹶ:I

    iget v7, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lˉˆ/ᴵˑ;->ﹳٴ:Landroid/widget/TextView;

    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lˉˆ/ˊˋ;

    invoke-direct {v10, p0, v6, v7, p1}, Lˉˆ/ˊˋ;-><init>(Lˉˆ/ᴵˑ;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    invoke-virtual {p2, v5, p1, v10}, Lcom/parse/ٴʼ;->ʼˈ(IILˉˆ/ˊˋ;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_9

    if-lt v0, v4, :cond_8

    iget p2, p0, Lˉˆ/ᴵˑ;->ٴﹶ:I

    if-eq p2, v3, :cond_8

    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Lˉˆ/ᴵˑ;->ٴﹶ:I

    iget v0, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    move v0, v9

    goto :goto_1

    :cond_7
    move v0, v8

    :goto_1
    invoke-static {p1, p2, v0}, Lˉˆ/ˈⁱ;->ﹳٴ(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_8
    iput-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    :cond_9
    :goto_2
    iget-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    if-nez p1, :cond_a

    move p1, v9

    goto :goto_3

    :cond_a
    move p1, v8

    :goto_3
    iput-boolean p1, p0, Lˉˆ/ᴵˑ;->ˉʿ:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    iget-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    if-nez p1, :cond_e

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v4, :cond_d

    iget p2, p0, Lˉˆ/ᴵˑ;->ٴﹶ:I

    if-eq p2, v3, :cond_d

    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Lˉˆ/ᴵˑ;->ٴﹶ:I

    iget v0, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    move v8, v9

    :cond_c
    invoke-static {p1, p2, v8}, Lˉˆ/ˈⁱ;->ﹳٴ(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    goto :goto_4

    :cond_d
    iget p2, p0, Lˉˆ/ᴵˑ;->ˆʾ:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    :cond_e
    :goto_4
    return-void
.end method

.method public final ⁱˊ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ⁱˊ:Lˉˆ/ᵢˋ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lˉˆ/ᴵˑ;->ﹳٴ:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˉˆ/ᴵˑ;->ʽ:Lˉˆ/ᵢˋ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˉˆ/ᴵˑ;->ˈ:Lˉˆ/ᵢˋ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˉˆ/ᴵˑ;->ˑﹳ:Lˉˆ/ᵢˋ;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v4, v0, v2

    iget-object v5, p0, Lˉˆ/ᴵˑ;->ⁱˊ:Lˉˆ/ᵢˋ;

    invoke-virtual {p0, v4, v5}, Lˉˆ/ᴵˑ;->ﹳٴ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iget-object v5, p0, Lˉˆ/ᴵˑ;->ʽ:Lˉˆ/ᵢˋ;

    invoke-virtual {p0, v4, v5}, Lˉˆ/ᴵˑ;->ﹳٴ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;)V

    aget-object v4, v0, v1

    iget-object v5, p0, Lˉˆ/ᴵˑ;->ˈ:Lˉˆ/ᵢˋ;

    invoke-virtual {p0, v4, v5}, Lˉˆ/ᴵˑ;->ﹳٴ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;)V

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v4, p0, Lˉˆ/ᴵˑ;->ˑﹳ:Lˉˆ/ᵢˋ;

    invoke-virtual {p0, v0, v4}, Lˉˆ/ᴵˑ;->ﹳٴ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;)V

    :cond_1
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ﾞᴵ:Lˉˆ/ᵢˋ;

    if-nez v0, :cond_3

    iget-object v0, p0, Lˉˆ/ᴵˑ;->ᵎﹶ:Lˉˆ/ᵢˋ;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Lˉˆ/ᴵˑ;->ﾞᴵ:Lˉˆ/ᵢˋ;

    invoke-virtual {p0, v2, v3}, Lˉˆ/ᴵˑ;->ﹳٴ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Lˉˆ/ᴵˑ;->ᵎﹶ:Lˉˆ/ᵢˋ;

    invoke-virtual {p0, v0, v1}, Lˉˆ/ᴵˑ;->ﹳٴ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;)V

    return-void
.end method

.method public final ﹳٴ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lˉˆ/ᴵˑ;->ﹳٴ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lˉˆ/ˏי;->ˑﹳ(Landroid/graphics/drawable/Drawable;Lˉˆ/ᵢˋ;[I)V

    :cond_0
    return-void
.end method

.method public final ﾞʻ(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ᵔᵢ:Lˉˆ/ᵢˋ;

    if-nez v0, :cond_0

    new-instance v0, Lˉˆ/ᵢˋ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ᵔᵢ:Lˉˆ/ᵢˋ;

    :cond_0
    iget-object v0, p0, Lˉˆ/ᴵˑ;->ᵔᵢ:Lˉˆ/ᵢˋ;

    iput-object p1, v0, Lˉˆ/ᵢˋ;->ʽ:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lˉˆ/ᵢˋ;->ⁱˊ:Z

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ⁱˊ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ʽ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ˈ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ˑﹳ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ﾞᴵ:Lˉˆ/ᵢˋ;

    iput-object v0, p0, Lˉˆ/ᴵˑ;->ᵎﹶ:Lˉˆ/ᵢˋ;

    return-void
.end method

.method public final ﾞᴵ(Landroid/util/AttributeSet;I)V
    .locals 26

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    iget-object v1, v0, Lˉˆ/ᴵˑ;->ﹳٴ:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lˉˆ/ˏי;->ﹳٴ()Lˉˆ/ˏי;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v3, Lᵎﹶ/ﹳٴ;->ᵔᵢ:[I

    invoke-static {v6, v9, v7, v4, v3}, Lcom/parse/ٴʼ;->ʿᵢ(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/parse/ٴʼ;

    move-result-object v10

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v10, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/TypedArray;

    invoke-static/range {v1 .. v6}, Lˋᵔ/ᵎˊ;->ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    move-object v11, v1

    iget-object v1, v10, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/TypedArray;

    const/4 v12, -0x1

    invoke-virtual {v1, v9, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v13, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v7, v8, v3}, Lˉˆ/ᴵˑ;->ʽ(Landroid/content/Context;Lˉˆ/ˏי;I)Lˉˆ/ᵢˋ;

    move-result-object v3

    iput-object v3, v0, Lˉˆ/ᴵˑ;->ⁱˊ:Lˉˆ/ᵢˋ;

    :cond_0
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v14, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v7, v8, v3}, Lˉˆ/ᴵˑ;->ʽ(Landroid/content/Context;Lˉˆ/ˏי;I)Lˉˆ/ᵢˋ;

    move-result-object v3

    iput-object v3, v0, Lˉˆ/ᴵˑ;->ʽ:Lˉˆ/ᵢˋ;

    :cond_1
    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v15, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v7, v8, v3}, Lˉˆ/ᴵˑ;->ʽ(Landroid/content/Context;Lˉˆ/ˏי;I)Lˉˆ/ᵢˋ;

    move-result-object v3

    iput-object v3, v0, Lˉˆ/ᴵˑ;->ˈ:Lˉˆ/ᵢˋ;

    :cond_2
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v7, v8, v5}, Lˉˆ/ᴵˑ;->ʽ(Landroid/content/Context;Lˉˆ/ˏי;I)Lˉˆ/ᵢˋ;

    move-result-object v5

    iput-object v5, v0, Lˉˆ/ᴵˑ;->ˑﹳ:Lˉˆ/ᵢˋ;

    :cond_3
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v1, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v7, v8, v3}, Lˉˆ/ᴵˑ;->ʽ(Landroid/content/Context;Lˉˆ/ˏי;I)Lˉˆ/ᵢˋ;

    move-result-object v3

    iput-object v3, v0, Lˉˆ/ᴵˑ;->ﾞᴵ:Lˉˆ/ᵢˋ;

    :cond_4
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v7, v8, v1}, Lˉˆ/ᴵˑ;->ʽ(Landroid/content/Context;Lˉˆ/ˏי;I)Lˉˆ/ᵢˋ;

    move-result-object v1

    iput-object v1, v0, Lˉˆ/ᴵˑ;->ᵎﹶ:Lˉˆ/ᵢˋ;

    :cond_5
    invoke-virtual {v10}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    invoke-virtual {v11}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/16 v10, 0x1a

    sget-object v3, Lᵎﹶ/ﹳٴ;->ـˆ:[I

    const/16 v5, 0xe

    const/16 v13, 0xd

    const/16 v14, 0xf

    if-eq v2, v12, :cond_9

    new-instance v15, Lcom/parse/ٴʼ;

    invoke-virtual {v7, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v15, v7, v2}, Lcom/parse/ٴʼ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v1, :cond_6

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v22, v21

    const/16 v21, 0x1

    goto :goto_0

    :cond_6
    move/from16 v21, v9

    move/from16 v22, v21

    :goto_0
    invoke-virtual {v0, v7, v15}, Lˉˆ/ᴵˑ;->ᵔʾ(Landroid/content/Context;Lcom/parse/ٴʼ;)V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    :cond_7
    const/16 v23, 0x0

    :goto_1
    if-lt v12, v10, :cond_8

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v15}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    goto :goto_3

    :cond_9
    move/from16 v21, v9

    move/from16 v22, v21

    const/4 v2, 0x0

    const/16 v23, 0x0

    :goto_3
    new-instance v12, Lcom/parse/ٴʼ;

    invoke-virtual {v7, v4, v3, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-direct {v12, v7, v3}, Lcom/parse/ٴʼ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v1, :cond_a

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    const/16 v21, 0x1

    :cond_a
    move/from16 v5, v22

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_b
    move-object/from16 v14, v23

    if-lt v15, v10, :cond_c

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    const/16 v10, 0x1c

    if-lt v15, v10, :cond_d

    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    invoke-virtual {v11, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-virtual {v0, v7, v12}, Lˉˆ/ᴵˑ;->ᵔʾ(Landroid/content/Context;Lcom/parse/ٴʼ;)V

    invoke-virtual {v12}, Lcom/parse/ٴʼ;->ᐧᴵ()V

    if-nez v1, :cond_e

    if-eqz v21, :cond_e

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_e
    iget-object v1, v0, Lˉˆ/ᴵˑ;->ﾞʻ:Landroid/graphics/Typeface;

    if-eqz v1, :cond_10

    iget v3, v0, Lˉˆ/ᴵˑ;->ٴﹶ:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_f

    iget v3, v0, Lˉˆ/ᴵˑ;->ˆʾ:I

    invoke-virtual {v11, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    :cond_f
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_4
    if-eqz v2, :cond_11

    invoke-static {v11, v2}, Lˉˆ/ﹳـ;->ˈ(Landroid/widget/TextView;Ljava/lang/String;)Z

    :cond_11
    const/16 v10, 0x18

    if-eqz v14, :cond_13

    if-lt v15, v10, :cond_12

    invoke-static {v14}, Lˉˆ/ـˏ;->ﹳٴ(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v11, v1}, Lˉˆ/ـˏ;->ⁱˊ(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    goto :goto_5

    :cond_12
    const-string v1, ","

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-static {v1}, Lˉˆ/ʼˈ;->ﹳٴ(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    :cond_13
    :goto_5
    iget-object v12, v0, Lˉˆ/ᴵˑ;->ʼˎ:Lˉˆ/ˊᵔ;

    iget-object v14, v12, Lˉˆ/ˊᵔ;->ˆʾ:Landroid/content/Context;

    sget-object v3, Lᵎﹶ/ﹳٴ;->ʼˎ:[I

    invoke-virtual {v14, v4, v3, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    iget-object v1, v12, Lˉˆ/ˊᵔ;->ʼˎ:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v10, 0x5

    const/4 v15, 0x2

    invoke-static/range {v1 .. v6}, Lˋᵔ/ᵎˊ;->ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v5, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v12, Lˉˆ/ˊᵔ;->ﹳٴ:I

    :cond_14
    const/4 v1, 0x4

    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v2, :cond_15

    invoke-virtual {v5, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_6

    :cond_15
    move v1, v6

    :goto_6
    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v5, v15, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    :goto_7
    const/4 v10, 0x1

    goto :goto_8

    :cond_16
    move v2, v6

    goto :goto_7

    :goto_8
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_17

    invoke-virtual {v5, v10, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    :goto_9
    const/4 v10, 0x3

    goto :goto_a

    :cond_17
    move/from16 v20, v6

    goto :goto_9

    :goto_a
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    move/from16 p2, v6

    if-eqz v18, :cond_1a

    invoke-virtual {v5, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_1a

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    new-array v13, v10, [I

    if-lez v10, :cond_19

    :goto_b
    if-ge v9, v10, :cond_18

    const/4 v15, -0x1

    invoke-virtual {v6, v9, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    aput v25, v13, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x2

    goto :goto_b

    :cond_18
    invoke-static {v13}, Lˉˆ/ˊᵔ;->ⁱˊ([I)[I

    move-result-object v9

    iput-object v9, v12, Lˉˆ/ˊᵔ;->ﾞᴵ:[I

    invoke-virtual {v12}, Lˉˆ/ˊᵔ;->ʼˎ()Z

    :cond_19
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v12}, Lˉˆ/ˊᵔ;->ˆʾ()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget v5, v12, Lˉˆ/ˊᵔ;->ﹳٴ:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_20

    iget-boolean v5, v12, Lˉˆ/ˊᵔ;->ᵎﹶ:Z

    if-nez v5, :cond_1e

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    cmpl-float v6, v2, p2

    if-nez v6, :cond_1b

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v15, 0x2

    invoke-static {v15, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    goto :goto_c

    :cond_1b
    const/4 v15, 0x2

    :goto_c
    cmpl-float v6, v20, p2

    if-nez v6, :cond_1c

    const/high16 v6, 0x42e00000    # 112.0f

    invoke-static {v15, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    :cond_1c
    move/from16 v5, v20

    cmpl-float v6, v1, p2

    if-nez v6, :cond_1d

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1d
    invoke-virtual {v12, v2, v5, v1}, Lˉˆ/ˊᵔ;->ٴﹶ(FFF)V

    :cond_1e
    invoke-virtual {v12}, Lˉˆ/ˊᵔ;->ᵔᵢ()Z

    goto :goto_d

    :cond_1f
    const/4 v1, 0x0

    iput v1, v12, Lˉˆ/ˊᵔ;->ﹳٴ:I

    :cond_20
    :goto_d
    sget-boolean v1, Lˉˆ/ˆˎ;->ʽ:Z

    if-eqz v1, :cond_22

    iget v1, v12, Lˉˆ/ˊᵔ;->ﹳٴ:I

    if-eqz v1, :cond_22

    iget-object v1, v12, Lˉˆ/ˊᵔ;->ﾞᴵ:[I

    array-length v2, v1

    if-lez v2, :cond_22

    invoke-static {v11}, Lˉˆ/ﹳـ;->ﹳٴ(Landroid/widget/TextView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_21

    iget v1, v12, Lˉˆ/ˊᵔ;->ˈ:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v12, Lˉˆ/ˊᵔ;->ˑﹳ:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v12, Lˉˆ/ˊᵔ;->ʽ:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v11, v1, v2, v5, v6}, Lˉˆ/ﹳـ;->ⁱˊ(Landroid/widget/TextView;IIII)V

    goto :goto_e

    :cond_21
    const/4 v6, 0x0

    invoke-static {v11, v1, v6}, Lˉˆ/ﹳـ;->ʽ(Landroid/widget/TextView;[II)V

    :cond_22
    :goto_e
    invoke-virtual {v7, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v10, -0x1

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v10, :cond_23

    invoke-virtual {v8, v7, v2}, Lˉˆ/ˏי;->ⁱˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_f
    const/16 v3, 0xd

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    goto :goto_f

    :goto_10
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eq v3, v10, :cond_24

    invoke-virtual {v8, v7, v3}, Lˉˆ/ˏי;->ⁱˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_11

    :cond_24
    const/4 v3, 0x0

    :goto_11
    const/16 v4, 0x9

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eq v4, v10, :cond_25

    invoke-virtual {v8, v7, v4}, Lˉˆ/ˏי;->ⁱˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_12
    const/4 v5, 0x6

    goto :goto_13

    :cond_25
    const/4 v4, 0x0

    goto :goto_12

    :goto_13
    invoke-virtual {v1, v5, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v5, v10, :cond_26

    invoke-virtual {v8, v7, v5}, Lˉˆ/ˏי;->ⁱˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_14

    :cond_26
    const/4 v5, 0x0

    :goto_14
    const/16 v6, 0xa

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eq v6, v10, :cond_27

    invoke-virtual {v8, v7, v6}, Lˉˆ/ˏי;->ⁱˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_15

    :cond_27
    const/4 v6, 0x0

    :goto_15
    const/4 v9, 0x7

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eq v9, v10, :cond_28

    invoke-virtual {v8, v7, v9}, Lˉˆ/ˏי;->ⁱˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_16

    :cond_28
    const/4 v8, 0x0

    :goto_16
    if-nez v6, :cond_33

    if-eqz v8, :cond_29

    goto :goto_1f

    :cond_29
    if-nez v2, :cond_2a

    if-nez v3, :cond_2a

    if-nez v4, :cond_2a

    if-eqz v5, :cond_38

    :cond_2a
    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v23, 0x0

    aget-object v8, v6, v23

    if-nez v8, :cond_2b

    const/16 v24, 0x2

    aget-object v9, v6, v24

    if-eqz v9, :cond_2c

    :cond_2b
    const/16 v18, 0x3

    goto :goto_1b

    :cond_2c
    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v2, :cond_2d

    goto :goto_17

    :cond_2d
    aget-object v2, v6, v23

    :goto_17
    if-eqz v3, :cond_2e

    goto :goto_18

    :cond_2e
    const/16 v19, 0x1

    aget-object v3, v6, v19

    :goto_18
    if-eqz v4, :cond_2f

    goto :goto_19

    :cond_2f
    const/16 v24, 0x2

    aget-object v4, v6, v24

    :goto_19
    if-eqz v5, :cond_30

    goto :goto_1a

    :cond_30
    const/16 v18, 0x3

    aget-object v5, v6, v18

    :goto_1a
    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    :goto_1b
    if-eqz v3, :cond_31

    goto :goto_1c

    :cond_31
    const/16 v19, 0x1

    aget-object v3, v6, v19

    :goto_1c
    if-eqz v5, :cond_32

    :goto_1d
    const/16 v24, 0x2

    goto :goto_1e

    :cond_32
    aget-object v5, v6, v18

    goto :goto_1d

    :goto_1e
    aget-object v2, v6, v24

    invoke-virtual {v11, v8, v3, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    :cond_33
    :goto_1f
    invoke-virtual {v11}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v6, :cond_34

    goto :goto_20

    :cond_34
    const/16 v23, 0x0

    aget-object v6, v2, v23

    :goto_20
    if-eqz v3, :cond_35

    goto :goto_21

    :cond_35
    const/16 v19, 0x1

    aget-object v3, v2, v19

    :goto_21
    if-eqz v8, :cond_36

    goto :goto_22

    :cond_36
    const/16 v24, 0x2

    aget-object v8, v2, v24

    :goto_22
    if-eqz v5, :cond_37

    goto :goto_23

    :cond_37
    const/16 v18, 0x3

    aget-object v5, v2, v18

    :goto_23
    invoke-virtual {v11, v6, v3, v8, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_38
    :goto_24
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v7, v3}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_39

    goto :goto_25

    :cond_39
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_25
    invoke-static {v11, v3}, Lﹳٴ/ﹳٴ;->ˆﾞ(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_3a
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v10, -0x1

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lˉˆ/ٴﹳ;->ʽ(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3b

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_26

    :cond_3b
    instance-of v3, v11, Lﹳـ/ﾞʻ;

    if-eqz v3, :cond_3c

    move-object v3, v11

    check-cast v3, Lﹳـ/ﾞʻ;

    invoke-interface {v3, v2}, Lﹳـ/ﾞʻ;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_3c
    :goto_26
    const/16 v2, 0xf

    const/4 v10, -0x1

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_3d

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x5

    if-ne v6, v10, :cond_3d

    iget v4, v5, Landroid/util/TypedValue;->data:I

    and-int/lit8 v10, v4, 0xf

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    move v5, v10

    const/4 v10, -0x1

    goto :goto_28

    :cond_3d
    const/4 v10, -0x1

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    :goto_27
    move v5, v10

    goto :goto_28

    :cond_3e
    const/4 v10, -0x1

    move/from16 v4, p2

    goto :goto_27

    :goto_28
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v2, v10, :cond_3f

    invoke-static {v11, v2}, Lﹳٴ/ﹳٴ;->ᵔٴ(Landroid/widget/TextView;I)V

    :cond_3f
    if-eq v3, v10, :cond_40

    invoke-static {v11, v3}, Lﹳٴ/ﹳٴ;->ˈʿ(Landroid/widget/TextView;I)V

    :cond_40
    cmpl-float v1, v4, p2

    if-eqz v1, :cond_43

    if-ne v5, v10, :cond_41

    float-to-int v1, v4

    invoke-static {v11, v1}, Lﹳٴ/ﹳٴ;->ˑٴ(Landroid/widget/TextView;I)V

    return-void

    :cond_41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_42

    invoke-static {v11, v5, v4}, Lˊˋ/ﾞᴵ;->ʼˎ(Landroid/widget/TextView;IF)V

    return-void

    :cond_42
    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v11, v1}, Lﹳٴ/ﹳٴ;->ˑٴ(Landroid/widget/TextView;I)V

    :cond_43
    return-void
.end method
