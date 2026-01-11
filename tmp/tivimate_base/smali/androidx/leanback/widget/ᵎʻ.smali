.class public final Landroidx/leanback/widget/ᵎʻ;
.super Landroidx/leanback/widget/ˉʿ;
.source "SourceFile"


# instance fields
.field public final ˆʾ:Landroidx/leanback/widget/ﾞʻ;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/leanback/widget/ˉʿ;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ﾞʻ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/ﾞʻ;-><init>(II)V

    iput-object v0, p0, Landroidx/leanback/widget/ᵎʻ;->ˆʾ:Landroidx/leanback/widget/ﾞʻ;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ˉʿ;->ᵔʾ(I)V

    return-void
.end method


# virtual methods
.method public final ˆʾ(II)[Lˋˋ/ʽʽ;
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵔᵢ:[Lˋˋ/ʽʽ;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v2, v0, Lˋˋ/ʽʽ;->ⁱˊ:I

    iput v2, v0, Lˋˋ/ʽʽ;->ʽ:I

    invoke-virtual {v0, p1}, Lˋˋ/ʽʽ;->ﹳٴ(I)V

    iget-object p1, p0, Landroidx/leanback/widget/ˉʿ;->ᵔᵢ:[Lˋˋ/ʽʽ;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lˋˋ/ʽʽ;->ﹳٴ(I)V

    iget-object p1, p0, Landroidx/leanback/widget/ˉʿ;->ᵔᵢ:[Lˋˋ/ʽʽ;

    return-object p1
.end method

.method public final ˉʿ(IZ)Z
    .locals 9

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ˉˆ;->ᵔﹳ()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ˉʿ;->ˈ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget-object v0, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ـˆ:I

    invoke-virtual {p0}, Landroidx/leanback/widget/ᵎʻ;->ˉˆ()I

    move-result v2

    move v5, v2

    move v2, v1

    :goto_1
    if-lt v5, v0, :cond_7

    iget-object v2, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget-object v3, p0, Landroidx/leanback/widget/ˉʿ;->ﹳٴ:[Ljava/lang/Object;

    invoke-virtual {v2, v5, v1, v3, v1}, Landroidx/leanback/widget/ˉˆ;->ﾞʻ(IZ[Ljava/lang/Object;Z)I

    move-result v6

    iget v2, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    if-gez v2, :cond_2

    goto :goto_4

    :cond_2
    iget-boolean v2, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v4}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v2

    iget v4, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    add-int/2addr v2, v4

    add-int/2addr v2, v6

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v4}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v2

    iget v4, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    :goto_2
    iput v5, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    :goto_3
    move v8, v2

    move-object v2, v3

    goto :goto_6

    :cond_4
    :goto_4
    iget-boolean v2, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v2, :cond_5

    const/high16 v2, -0x80000000

    goto :goto_5

    :cond_5
    const v2, 0x7fffffff

    :goto_5
    iput v5, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iput v5, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    goto :goto_3

    :goto_6
    iget-object v3, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    aget-object v4, v2, v1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/leanback/widget/ˉˆ;->ˆʾ(Ljava/lang/Object;IIII)V

    const/4 v2, 0x1

    if-nez p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ˉʿ;->ˈ(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_7
    :goto_7
    return v2
.end method

.method public final ˉˆ()I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ʼˎ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v1}, Landroidx/leanback/widget/ˉˆ;->ᵔﹳ()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ˉˆ;->ᵔﹳ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final ˑﹳ(IILˋˋ/ʽʽ;)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_3

    goto :goto_0

    :cond_0
    if-gez p2, :cond_3

    :goto_0
    iget p2, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/ᵎʻ;->ˉˆ()I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget v1, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v0

    iget-boolean v1, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    goto :goto_1

    :cond_2
    iget v1, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    neg-int v1, v1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_4

    :cond_3
    iget p2, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ˉˆ;->ᵔﹳ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_4

    :goto_2
    return-void

    :cond_4
    iget p2, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    if-ltz p2, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    iget p2, p0, Landroidx/leanback/widget/ˉʿ;->ʼˎ:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ˉˆ;->ᵔﹳ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget v1, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ˉˆ;->ʽﹳ(I)I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget v2, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v1

    iget-boolean v2, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v2, :cond_7

    neg-int v0, v0

    :cond_7
    add-int/2addr v0, v1

    :goto_4
    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Lˋˋ/ʽʽ;->ⁱˊ(II)V

    return-void
.end method

.method public final ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;
    .locals 0

    iget-object p1, p0, Landroidx/leanback/widget/ᵎʻ;->ˆʾ:Landroidx/leanback/widget/ﾞʻ;

    return-object p1
.end method

.method public final ᵔᵢ(IZ[I)I
    .locals 0

    .prologue
    if-eqz p3, :cond_0

    const/4 p2, 0x0

    aput p2, p3, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    :cond_0
    iget-boolean p2, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result p2

    iget-object p3, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {p3, p1}, Landroidx/leanback/widget/ˉˆ;->ʽﹳ(I)I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    iget-object p2, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result p1

    return p1
.end method

.method public final ⁱˊ(IZ)Z
    .locals 9

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ˉˆ;->ᵔﹳ()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ˉʿ;->ʽ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    const/4 v2, 0x1

    if-ltz v0, :cond_2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ʼˎ:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v3, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v3}, Landroidx/leanback/widget/ˉˆ;->ᵔﹳ()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    move v5, v0

    move v0, v1

    :goto_2
    iget-object v3, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v3}, Landroidx/leanback/widget/ˉˆ;->ᵔﹳ()I

    move-result v3

    if-ge v5, v3, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    iget-object v3, p0, Landroidx/leanback/widget/ˉʿ;->ﹳٴ:[Ljava/lang/Object;

    invoke-virtual {v0, v5, v2, v3, v1}, Landroidx/leanback/widget/ˉˆ;->ﾞʻ(IZ[Ljava/lang/Object;Z)I

    move-result v6

    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    if-gez v0, :cond_4

    goto :goto_5

    :cond_4
    iget-boolean v0, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v0

    iget-object v7, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v7, v4}, Landroidx/leanback/widget/ˉˆ;->ʽﹳ(I)I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    sub-int/2addr v0, v4

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result v0

    iget-object v7, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v7, v4}, Landroidx/leanback/widget/ˉˆ;->ʽﹳ(I)I

    move-result v4

    add-int/2addr v4, v0

    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    add-int/2addr v0, v4

    :goto_3
    iput v5, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    :goto_4
    move v8, v0

    move-object v0, v3

    goto :goto_7

    :cond_6
    :goto_5
    iget-boolean v0, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v0, :cond_7

    const v0, 0x7fffffff

    goto :goto_6

    :cond_7
    const/high16 v0, -0x80000000

    :goto_6
    iput v5, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iput v5, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    goto :goto_4

    :goto_7
    iget-object v3, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    aget-object v4, v0, v1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroidx/leanback/widget/ˉˆ;->ˆʾ(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ˉʿ;->ʽ(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v5, v5, 0x1

    move v0, v2

    goto :goto_2

    :cond_9
    :goto_8
    return v2

    :cond_a
    return v0
.end method

.method public final ﾞᴵ(IZ[I)I
    .locals 0

    .prologue
    if-eqz p3, :cond_0

    const/4 p2, 0x0

    aput p2, p3, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    :cond_0
    iget-boolean p2, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result p1

    return p1

    :cond_1
    iget-object p2, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ˉˆ;->יـ(I)I

    move-result p2

    iget-object p3, p0, Landroidx/leanback/widget/ˉʿ;->ⁱˊ:Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {p3, p1}, Landroidx/leanback/widget/ˉˆ;->ʽﹳ(I)I

    move-result p1

    add-int/2addr p1, p2

    return p1
.end method
