.class public abstract Landroidx/leanback/widget/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:Z

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:[Lˋˋ/ʽʽ;

.field public ⁱˊ:Landroidx/leanback/widget/ˉˆ;

.field public final ﹳٴ:[Ljava/lang/Object;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ﹳٴ:[Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    iput v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iput v0, p0, Landroidx/leanback/widget/ˉʿ;->ʼˎ:I

    return-void
.end method


# virtual methods
.method public final ʼˎ(Z[I)I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/leanback/widget/ˉʿ;->ᵔᵢ(IZ[I)I

    move-result p1

    return p1
.end method

.method public final ʽ(I)Z
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/ˉʿ;->ʼˎ(Z[I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    add-int/2addr p1, v2

    if-gt v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ(Z[I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    sub-int/2addr p1, v2

    if-lt v0, p1, :cond_2

    :goto_0
    return v3

    :cond_2
    :goto_1
    return v1
.end method

.method public abstract ˆʾ(II)[Lˋˋ/ʽʽ;
.end method

.method public final ˈ(I)Z
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ(Z[I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    sub-int/2addr p1, v2

    if-lt v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/ˉʿ;->ʼˎ(Z[I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/ˉʿ;->ˈ:I

    add-int/2addr p1, v2

    if-gt v0, p1, :cond_2

    :goto_0
    return v3

    :cond_2
    :goto_1
    return v1
.end method

.method public abstract ˉʿ(IZ)Z
.end method

.method public ˑﹳ(IILˋˋ/ʽʽ;)V
    .locals 0

    return-void
.end method

.method public abstract ٴﹶ(I)Landroidx/leanback/widget/ﾞʻ;
.end method

.method public final ᵎﹶ(Z[I)I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ(IZ[I)I

    move-result p1

    return p1
.end method

.method public final ᵔʾ(I)V
    .locals 2

    .prologue
    if-lez p1, :cond_2

    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    new-array p1, p1, [Lˋˋ/ʽʽ;

    iput-object p1, p0, Landroidx/leanback/widget/ˉʿ;->ᵔᵢ:[Lˋˋ/ʽʽ;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ˑﹳ:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵔᵢ:[Lˋˋ/ʽʽ;

    new-instance v1, Lˋˋ/ʽʽ;

    invoke-direct {v1}, Lˋˋ/ʽʽ;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public abstract ᵔᵢ(IZ[I)I
.end method

.method public abstract ⁱˊ(IZ)Z
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/ˉʿ;->ʽ:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/ˉʿ;->ⁱˊ(IZ)Z

    move-result v0

    return v0
.end method

.method public ﾞʻ(I)V
    .locals 2

    .prologue
    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iget v1, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-ge v0, v1, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/ˉʿ;->ᵎﹶ:I

    iput v0, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    :cond_3
    iget v0, p0, Landroidx/leanback/widget/ˉʿ;->ﾞᴵ:I

    if-gez v0, :cond_4

    iput p1, p0, Landroidx/leanback/widget/ˉʿ;->ʼˎ:I

    :cond_4
    :goto_0
    return-void
.end method

.method public abstract ﾞᴵ(IZ[I)I
.end method
