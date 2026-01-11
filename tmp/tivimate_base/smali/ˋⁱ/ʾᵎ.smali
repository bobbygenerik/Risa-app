.class public final Lˋⁱ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:F

.field public ˈ:F

.field public ˑﹳ:F

.field public final ᵎﹶ:Ljava/util/ArrayList;

.field public ⁱˊ:F

.field public ﹳٴ:F

.field public final ﾞᴵ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˋⁱ/ʾᵎ;->ﾞᴵ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˋⁱ/ʾᵎ;->ᵎﹶ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p0, v0, v1, v0}, Lˋⁱ/ʾᵎ;->ˈ(FFF)V

    return-void
.end method


# virtual methods
.method public final ʽ(FF)V
    .locals 4

    new-instance v0, Lˋⁱ/ʽﹳ;

    invoke-direct {v0}, Lˋⁱ/ʻٴ;-><init>()V

    iput p1, v0, Lˋⁱ/ʽﹳ;->ⁱˊ:F

    iput p2, v0, Lˋⁱ/ʽﹳ;->ʽ:F

    iget-object v1, p0, Lˋⁱ/ʾᵎ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lˋⁱ/יـ;

    iget v2, p0, Lˋⁱ/ʾᵎ;->ⁱˊ:F

    iget v3, p0, Lˋⁱ/ʾᵎ;->ʽ:F

    invoke-direct {v1, v0, v2, v3}, Lˋⁱ/יـ;-><init>(Lˋⁱ/ʽﹳ;FF)V

    invoke-virtual {v1}, Lˋⁱ/יـ;->ⁱˊ()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lˋⁱ/יـ;->ⁱˊ()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {p0, v0}, Lˋⁱ/ʾᵎ;->ﹳٴ(F)V

    iget-object v0, p0, Lˋⁱ/ʾᵎ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lˋⁱ/ʾᵎ;->ˈ:F

    iput p1, p0, Lˋⁱ/ʾᵎ;->ⁱˊ:F

    iput p2, p0, Lˋⁱ/ʾᵎ;->ʽ:F

    return-void
.end method

.method public final ˈ(FFF)V
    .locals 1

    iput p1, p0, Lˋⁱ/ʾᵎ;->ﹳٴ:F

    const/4 v0, 0x0

    iput v0, p0, Lˋⁱ/ʾᵎ;->ⁱˊ:F

    iput p1, p0, Lˋⁱ/ʾᵎ;->ʽ:F

    iput p2, p0, Lˋⁱ/ʾᵎ;->ˈ:F

    add-float/2addr p2, p3

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p2, p1

    iput p2, p0, Lˋⁱ/ʾᵎ;->ˑﹳ:F

    iget-object p1, p0, Lˋⁱ/ʾᵎ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lˋⁱ/ʾᵎ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final ⁱˊ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋⁱ/ʾᵎ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˋⁱ/ʻٴ;

    invoke-virtual {v3, p1, p2}, Lˋⁱ/ʻٴ;->ﹳٴ(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ﹳٴ(F)V
    .locals 4

    .prologue
    iget v0, p0, Lˋⁱ/ʾᵎ;->ˈ:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lˋⁱ/ˏי;

    iget v2, p0, Lˋⁱ/ʾᵎ;->ⁱˊ:F

    iget v3, p0, Lˋⁱ/ʾᵎ;->ʽ:F

    invoke-direct {v1, v2, v3, v2, v3}, Lˋⁱ/ˏי;-><init>(FFFF)V

    iget v2, p0, Lˋⁱ/ʾᵎ;->ˈ:F

    iput v2, v1, Lˋⁱ/ˏי;->ﾞᴵ:F

    iput v0, v1, Lˋⁱ/ˏי;->ᵎﹶ:F

    new-instance v0, Lˋⁱ/ﹳᐧ;

    invoke-direct {v0, v1}, Lˋⁱ/ﹳᐧ;-><init>(Lˋⁱ/ˏי;)V

    iget-object v1, p0, Lˋⁱ/ʾᵎ;->ᵎﹶ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p1, p0, Lˋⁱ/ʾᵎ;->ˈ:F

    return-void
.end method
