.class public final Lˋⁱ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋⁱ/ˈ;


# instance fields
.field public final ﹳٴ:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˋⁱ/ʽ;->ﹳٴ:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˋⁱ/ʽ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lˋⁱ/ʽ;

    iget v1, p0, Lˋⁱ/ʽ;->ﹳٴ:F

    iget p1, p1, Lˋⁱ/ʽ;->ﹳٴ:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lˋⁱ/ʽ;->ﹳٴ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final ﹳٴ(Landroid/graphics/RectF;)F
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lˋⁱ/ʽ;->ﹳٴ:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    return v1

    :cond_0
    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    return p1

    :cond_1
    return v0
.end method
