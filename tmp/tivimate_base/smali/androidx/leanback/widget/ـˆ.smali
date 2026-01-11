.class public final Landroidx/leanback/widget/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:Ljava/lang/Object;

.field public ⁱˊ:J

.field public ﹳٴ:I

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/leanback/widget/ـˆ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v1, Lᐧˎ/ﹳᐧ;

    invoke-direct {v1, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/widget/ـˆ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/ـˆ;->ʽ:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iput v0, p0, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    iput-object p1, p0, Landroidx/leanback/widget/ـˆ;->ﾞᴵ:Ljava/lang/Object;

    const/16 p1, 0x70

    iput p1, p0, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    return-void
.end method


# virtual methods
.method public ʽ(Z)V
    .locals 3

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    const/4 v1, 0x1

    not-int v2, v1

    and-int/2addr v0, v2

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    iget p1, p0, Landroidx/leanback/widget/ـˆ;->ʽ:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Editable actions cannot also be checked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ˈ(Lˊﾞ/ʼᐧ;Z)Z
    .locals 7

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ـˆ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    iput v1, p0, Landroidx/leanback/widget/ـˆ;->ʽ:I

    iput v1, p0, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iput v1, p0, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    iget-object v2, p0, Landroidx/leanback/widget/ـˆ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v2, Lᐧˎ/ﹳᐧ;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v4, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    :try_start_0
    invoke-interface {p1, v4, v1, v3, p2}, Lˊﾞ/ʼᐧ;->ʻٴ([BIIZ)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    if-eqz p2, :cond_7

    move v3, v1

    :goto_0
    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v3

    const-wide/32 v5, 0x4f676753

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_3

    :cond_1
    const-string p1, "unsupported bit stream revision"

    invoke-static {p1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    iput v3, p0, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᵔʾ()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼᐧ()J

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼᐧ()J

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼᐧ()J

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    iput v3, p0, Landroidx/leanback/widget/ـˆ;->ʽ:I

    add-int/lit8 v4, v3, 0x1b

    iput v4, p0, Landroidx/leanback/widget/ـˆ;->ˈ:I

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v4, p0, Landroidx/leanback/widget/ـˆ;->ʽ:I

    :try_start_1
    invoke-interface {p1, v3, v1, v4, p2}, Lˊﾞ/ʼᐧ;->ʻٴ([BIIZ)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    if-eqz p2, :cond_5

    move p1, v1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    iget p1, p0, Landroidx/leanback/widget/ـˆ;->ʽ:I

    if-ge v1, p1, :cond_4

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result p1

    aput p1, v0, v1

    iget p2, p0, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    throw p1

    :cond_6
    :goto_3
    return v1

    :cond_7
    throw v3
.end method

.method public ˑﹳ(Lˊﾞ/ʼᐧ;J)Z
    .locals 9

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ـˆ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﹳᐧ;

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v1

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ʾᵎ()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    cmp-long v5, v5, p2

    if-gez v5, :cond_3

    :cond_1
    iget-object v5, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    :try_start_0
    invoke-interface {p1, v5, v2, v1, v3}, Lˊﾞ/ʼᐧ;->ʻٴ([BIIZ)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v5, v2

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    return v3

    :cond_2
    invoke-interface {p1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    goto :goto_1

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_5

    :cond_4
    invoke-interface {p1, v3}, Lˊﾞ/ʼᐧ;->ˈ(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    return v2
.end method

.method public ⁱˊ(I)V
    .locals 1

    .prologue
    iput p1, p0, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    iget p1, p0, Landroidx/leanback/widget/ـˆ;->ʽ:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Editable actions cannot also be in check sets"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ﹳٴ()Landroidx/leanback/widget/ʾᵎ;
    .locals 3

    new-instance v0, Landroidx/leanback/widget/ʾᵎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    iput-wide v1, v0, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ:J

    iget-object v1, p0, Landroidx/leanback/widget/ـˆ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/leanback/widget/ʾᵎ;->ﾞᴵ:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/leanback/widget/ʾᵎ;->ᵎﹶ:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroidx/leanback/widget/ـˆ;->ʽ:I

    iput v1, v0, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    const v1, 0x80001

    iput v1, v0, Landroidx/leanback/widget/ʾᵎ;->ʼˎ:I

    iput v1, v0, Landroidx/leanback/widget/ʾᵎ;->ˆʾ:I

    const/4 v1, 0x1

    iput v1, v0, Landroidx/leanback/widget/ʾᵎ;->ٴﹶ:I

    iget v1, p0, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iput v1, v0, Landroidx/leanback/widget/ʾᵎ;->ﾞʻ:I

    iget v1, p0, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    iput v1, v0, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    iget v1, p0, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    iput v1, v0, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    return-object v0
.end method

.method public ﾞᴵ(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ـˆ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/ـˆ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method
