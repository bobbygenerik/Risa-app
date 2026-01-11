.class public Lˑʿ/ᵔי;
.super Lˈˊ/ᵔʾ;
.source "SourceFile"


# static fields
.field public static ʼˎ:Z = true

.field public static ˆʾ:Z = true

.field public static ٴﹶ:Z = true

.field public static ﾞʻ:Z = true


# virtual methods
.method public ʾˋ(Landroid/view/View;I)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lˈˊ/ᵔʾ;->ʾˋ(Landroid/view/View;I)V

    return-void

    :cond_0
    sget-boolean v0, Lˑʿ/ᵔי;->ﾞʻ:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Lˑʿ/ᵎˊ;->ﹳٴ(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lˑʿ/ᵔי;->ﾞʻ:Z

    :cond_1
    return-void
.end method

.method public ˈⁱ(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    sget-boolean v0, Lˑʿ/ᵔי;->ٴﹶ:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lˑʿ/ٴʼ;->ﹳٴ(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lˑʿ/ᵔי;->ٴﹶ:Z

    :cond_0
    return-void
.end method

.method public ˉـ(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    sget-boolean v0, Lˑʿ/ᵔי;->ˆʾ:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lˑʿ/ᵎⁱ;->ʽ(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lˑʿ/ᵔי;->ˆʾ:Z

    :cond_0
    return-void
.end method

.method public ᴵˑ(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    sget-boolean v0, Lˑʿ/ᵔי;->ʼˎ:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Lˑʿ/ᵎⁱ;->ⁱˊ(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lˑʿ/ᵔי;->ʼˎ:Z

    :cond_0
    return-void
.end method
