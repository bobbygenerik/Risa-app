.class public final Lـˏ/ʽ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:Lـˏ/ˈ;

.field public final ᴵˊ:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lـˏ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـˏ/ʽ;->ʽʽ:Lـˏ/ˈ;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lـˏ/ʽ;->ᴵˊ:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final ʽⁱ(Lˋᵔ/ʿᵢ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lـˏ/ʽ;->ʽʽ:Lـˏ/ˈ;

    iget-object v0, v0, Lـˏ/ˈ;->ⁱˊ:Ljava/util/ArrayList;

    iget-object p1, p1, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    invoke-virtual {p1}, Lˋᵔ/ʿ;->ˈ()I

    move-result p1

    and-int/lit16 p1, p1, 0x207

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lـˏ/ﹳٴ;

    iget v2, v1, Lـˏ/ﹳٴ;->ʽ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lـˏ/ﹳٴ;->ʽ:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʾﾞ(Lˋᵔ/ᐧﹶ;Ljava/util/List;)Lˋᵔ/ᐧﹶ;
    .locals 6

    .prologue
    iget-object v0, p0, Lـˏ/ʽ;->ʽʽ:Lـˏ/ˈ;

    iget-object v0, v0, Lـˏ/ˈ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˋᵔ/ʿᵢ;

    iget-object v4, p0, Lـˏ/ʽ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v3, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    invoke-virtual {v3}, Lˋᵔ/ʿ;->ﹳٴ()F

    move-result v3

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    iput v3, v1, Landroid/graphics/RectF;->left:F

    :cond_0
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    iput v3, v1, Landroid/graphics/RectF;->top:F

    :cond_1
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    :cond_2
    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    const/16 p2, 0x207

    iget-object v1, p1, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v1, p2}, Lˋᵔ/ᵎʻ;->ﾞᴵ(I)Lᵎⁱ/ⁱˊ;

    move-result-object p2

    const/16 v1, 0x40

    iget-object v2, p1, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v2, v1}, Lˋᵔ/ᵎʻ;->ﾞᴵ(I)Lᵎⁱ/ⁱˊ;

    move-result-object v1

    invoke-static {p2, v1}, Lᵎⁱ/ⁱˊ;->ⁱˊ(Lᵎⁱ/ⁱˊ;Lᵎⁱ/ⁱˊ;)Lᵎⁱ/ⁱˊ;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lـˏ/ﹳٴ;

    iget-object v1, v1, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_5

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    invoke-static {v2, v1}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_6
    return-object p1
.end method

.method public final יﹳ(Lˋᵔ/ʿᵢ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lـˏ/ʽ;->ʽʽ:Lـˏ/ˈ;

    iget-object v0, v0, Lـˏ/ˈ;->ⁱˊ:Ljava/util/ArrayList;

    iget-object v1, p1, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    invoke-virtual {v1}, Lˋᵔ/ʿ;->ˈ()I

    move-result v1

    and-int/lit16 v1, v1, 0x207

    if-eqz v1, :cond_3

    iget-object v1, p0, Lـˏ/ʽ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lـˏ/ﹳٴ;

    iget v3, v2, Lـˏ/ﹳٴ;->ʽ:I

    if-lez v3, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lـˏ/ﹳٴ;->ʽ:I

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    iget-object v2, v2, Lـˏ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v3, v2}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final ⁱˉ(Lˋᵔ/ʿᵢ;Lﹶﾞ/ⁱי;)Lﹶﾞ/ⁱי;
    .locals 5

    .prologue
    iget-object v0, p1, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    invoke-virtual {v0}, Lˋᵔ/ʿ;->ˈ()I

    move-result v0

    and-int/lit16 v0, v0, 0x207

    if-eqz v0, :cond_4

    iget-object v0, p2, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵎⁱ/ⁱˊ;

    iget-object v1, p2, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lᵎⁱ/ⁱˊ;

    iget v2, v0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget v3, v1, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    iget v4, v1, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    if-eq v3, v4, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget v3, v0, Lᵎⁱ/ⁱˊ;->ʽ:I

    iget v4, v1, Lᵎⁱ/ⁱˊ;->ʽ:I

    if-eq v3, v4, :cond_2

    or-int/lit8 v2, v2, 0x4

    :cond_2
    iget v0, v0, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget v1, v1, Lᵎⁱ/ⁱˊ;->ˈ:I

    if-eq v0, v1, :cond_3

    or-int/lit8 v2, v2, 0x8

    :cond_3
    iget-object v0, p0, Lـˏ/ʽ;->ᴵˊ:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p2
.end method
