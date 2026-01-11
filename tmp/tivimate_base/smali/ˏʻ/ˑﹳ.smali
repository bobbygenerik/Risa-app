.class public final Lˏʻ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:Z

.field public final ⁱˊ:Lᐧˎ/ﹳᐧ;

.field public final ﹳٴ:Landroidx/leanback/widget/ـˆ;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ـˆ;

    invoke-direct {v0}, Landroidx/leanback/widget/ـˆ;-><init>()V

    iput-object v0, p0, Lˏʻ/ˑﹳ;->ﹳٴ:Landroidx/leanback/widget/ـˆ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lᐧˎ/ﹳᐧ;-><init>(I[B)V

    iput-object v0, p0, Lˏʻ/ˑﹳ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    const/4 v0, -0x1

    iput v0, p0, Lˏʻ/ˑﹳ;->ʽ:I

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lˊﾞ/ʼᐧ;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-boolean v2, p0, Lˏʻ/ˑﹳ;->ˑﹳ:Z

    iget-object v3, p0, Lˏʻ/ˑﹳ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lˏʻ/ˑﹳ;->ˑﹳ:Z

    invoke-virtual {v3, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lˏʻ/ˑﹳ;->ˑﹳ:Z

    if-nez v2, :cond_9

    iget v2, p0, Lˏʻ/ˑﹳ;->ʽ:I

    iget-object v4, p0, Lˏʻ/ˑﹳ;->ﹳٴ:Landroidx/leanback/widget/ـˆ;

    if-gez v2, :cond_5

    const-wide/16 v5, -0x1

    invoke-virtual {v4, p1, v5, v6}, Landroidx/leanback/widget/ـˆ;->ˑﹳ(Lˊﾞ/ʼᐧ;J)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4, p1, v0}, Landroidx/leanback/widget/ـˆ;->ˈ(Lˊﾞ/ʼᐧ;Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget v2, v4, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iget v5, v4, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_3

    iget v5, v3, Lᐧˎ/ﹳᐧ;->ʽ:I

    if-nez v5, :cond_3

    invoke-virtual {p0, v1}, Lˏʻ/ˑﹳ;->ﹳٴ(I)I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Lˏʻ/ˑﹳ;->ˈ:I

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    :try_start_0
    invoke-interface {p1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v5, p0, Lˏʻ/ˑﹳ;->ʽ:I

    goto :goto_4

    :catch_0
    :cond_4
    :goto_3
    return v1

    :cond_5
    :goto_4
    iget v2, p0, Lˏʻ/ˑﹳ;->ʽ:I

    invoke-virtual {p0, v2}, Lˏʻ/ˑﹳ;->ﹳٴ(I)I

    move-result v2

    iget v5, p0, Lˏʻ/ˑﹳ;->ʽ:I

    iget v6, p0, Lˏʻ/ˑﹳ;->ˈ:I

    add-int/2addr v5, v6

    if-lez v2, :cond_7

    iget v6, v3, Lᐧˎ/ﹳᐧ;->ʽ:I

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Lᐧˎ/ﹳᐧ;->ʽ(I)V

    iget-object v6, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v7, v3, Lᐧˎ/ﹳᐧ;->ʽ:I

    :try_start_1
    invoke-interface {p1, v6, v7, v2}, Lˊﾞ/ʼᐧ;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    iget v6, v3, Lᐧˎ/ﹳᐧ;->ʽ:I

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    iget-object v2, v4, Landroidx/leanback/widget/ـˆ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, [I

    add-int/lit8 v6, v5, -0x1

    aget v2, v2, v6

    const/16 v6, 0xff

    if-eq v2, v6, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lˏʻ/ˑﹳ;->ˑﹳ:Z

    goto :goto_6

    :catch_1
    return v1

    :cond_7
    :goto_6
    iget v2, v4, Landroidx/leanback/widget/ـˆ;->ʽ:I

    if-ne v5, v2, :cond_8

    const/4 v5, -0x1

    :cond_8
    iput v5, p0, Lˏʻ/ˑﹳ;->ʽ:I

    goto :goto_1

    :cond_9
    return v0
.end method

.method public final ﹳٴ(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lˏʻ/ˑﹳ;->ˈ:I

    :cond_0
    iget v1, p0, Lˏʻ/ˑﹳ;->ˈ:I

    add-int v2, p1, v1

    iget-object v3, p0, Lˏʻ/ˑﹳ;->ﹳٴ:Landroidx/leanback/widget/ـˆ;

    iget v4, v3, Landroidx/leanback/widget/ـˆ;->ʽ:I

    if-ge v2, v4, :cond_1

    iget-object v3, v3, Landroidx/leanback/widget/ـˆ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v3, [I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lˏʻ/ˑﹳ;->ˈ:I

    aget v1, v3, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method
