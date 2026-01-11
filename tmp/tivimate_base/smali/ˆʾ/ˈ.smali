.class public final Lˆʾ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public ʽ:I

.field public ⁱˊ:I

.field public ﹳٴ:[I


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    .prologue
    iget v0, p0, Lˆʾ/ˈ;->ʽ:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lˆʾ/ˈ;->ⁱˊ:I

    iget-object v1, p0, Lˆʾ/ˈ;->ﹳٴ:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, v1, v2

    if-lt p1, v3, :cond_0

    sub-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v2, v0, :cond_1

    int-to-float p1, p1

    iget v1, p0, Lˆʾ/ˈ;->ʽ:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    return v1
.end method
