.class public final Lʻˆ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public final ˆʾ:Lʽⁱ/ﹳᐧ;

.field public ˈ:Lʻˆ/ـˆ;

.field public ˉʿ:Z

.field public ˑﹳ:Lʻˆ/ʼˎ;

.field public final ٴﹶ:Lᐧˎ/ﹳᐧ;

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public final ⁱˊ:Lʻˆ/ʻٴ;

.field public final ﹳٴ:Lˊﾞ/ٴᵢ;

.field public final ﾞʻ:Lᐧˎ/ﹳᐧ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˊﾞ/ٴᵢ;Lʻˆ/ـˆ;Lʻˆ/ʼˎ;Lʽⁱ/ﹳᐧ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻˆ/ﾞʻ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    iput-object p2, p0, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iput-object p3, p0, Lʻˆ/ﾞʻ;->ˑﹳ:Lʻˆ/ʼˎ;

    iput-object p4, p0, Lʻˆ/ﾞʻ;->ˆʾ:Lʽⁱ/ﹳᐧ;

    new-instance v0, Lʻˆ/ʻٴ;

    invoke-direct {v0}, Lʻˆ/ʻٴ;-><init>()V

    iput-object v0, p0, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    invoke-direct {v0}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object v0, p0, Lʻˆ/ﾞʻ;->ʽ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lʻˆ/ﾞʻ;->ٴﹶ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    invoke-direct {v0}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object v0, p0, Lʻˆ/ﾞʻ;->ﾞʻ:Lᐧˎ/ﹳᐧ;

    iput-object p2, p0, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iput-object p3, p0, Lʻˆ/ﾞʻ;->ˑﹳ:Lʻˆ/ʼˎ;

    invoke-interface {p1, p4}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    invoke-virtual {p0}, Lʻˆ/ﾞʻ;->ˑﹳ()V

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 5

    .prologue
    iget v0, p0, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    iget-boolean v0, p0, Lʻˆ/ﾞʻ;->ˉʿ:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lʻˆ/ﾞʻ;->ᵎﹶ:I

    add-int/2addr v0, v1

    iput v0, p0, Lʻˆ/ﾞʻ;->ᵎﹶ:I

    iget-object v3, p0, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget-object v3, v3, Lʻˆ/ʻٴ;->ᵎﹶ:[I

    iget v4, p0, Lʻˆ/ﾞʻ;->ᵔᵢ:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lʻˆ/ﾞʻ;->ᵔᵢ:I

    iput v2, p0, Lʻˆ/ﾞʻ;->ᵎﹶ:I

    return v2

    :cond_1
    return v1
.end method

.method public final ˈ(II)I
    .locals 11

    .prologue
    invoke-virtual {p0}, Lʻˆ/ﾞʻ;->ⁱˊ()Lʻˆ/ʽﹳ;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lʻˆ/ʽﹳ;->ˈ:I

    iget-object v3, p0, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    if-eqz v2, :cond_1

    iget-object v0, v3, Lʻˆ/ʻٴ;->ᵔʾ:Lᐧˎ/ﹳᐧ;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lʻˆ/ʽﹳ;->ˑﹳ:[B

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    array-length v2, v0

    iget-object v4, p0, Lʻˆ/ﾞʻ;->ﾞʻ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v4, v2, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    array-length v2, v0

    move-object v0, v4

    :goto_0
    iget v4, p0, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    iget-boolean v5, v3, Lʻˆ/ʻٴ;->ٴﹶ:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v3, Lʻˆ/ʻٴ;->ﾞʻ:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-nez v4, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v6

    :goto_3
    iget-object v7, p0, Lʻˆ/ﾞʻ;->ٴﹶ:Lᐧˎ/ﹳᐧ;

    iget-object v8, v7, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    if-eqz v5, :cond_5

    const/16 v9, 0x80

    goto :goto_4

    :cond_5
    move v9, v1

    :goto_4
    or-int/2addr v9, v2

    int-to-byte v9, v9

    aput-byte v9, v8, v1

    invoke-virtual {v7, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v8, p0, Lʻˆ/ﾞʻ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    invoke-interface {v8, v7, v6, v6}, Lˊﾞ/ٴᵢ;->ⁱˊ(Lᐧˎ/ﹳᐧ;II)V

    invoke-interface {v8, v0, v2, v6}, Lˊﾞ/ٴᵢ;->ⁱˊ(Lᐧˎ/ﹳᐧ;II)V

    if-nez v5, :cond_6

    add-int/2addr v2, v6

    return v2

    :cond_6
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v7, 0x2

    iget-object v9, p0, Lʻˆ/ﾞʻ;->ʽ:Lᐧˎ/ﹳᐧ;

    const/16 v10, 0x8

    if-nez v4, :cond_7

    invoke-virtual {v9, v10}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v3, v9, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aput-byte v1, v3, v1

    aput-byte v6, v3, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v7

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v3, v5

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v3, p2

    invoke-interface {v8, v9, v10, v6}, Lˊﾞ/ٴᵢ;->ⁱˊ(Lᐧˎ/ﹳᐧ;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_7
    iget-object p1, v3, Lʻˆ/ʻٴ;->ᵔʾ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v3

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    mul-int/2addr v3, v0

    add-int/2addr v3, v7

    if-eqz p2, :cond_8

    invoke-virtual {v9, v3}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v0, v9, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v0, v1, v3}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    aget-byte p1, v0, v7

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v10

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, v7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    goto :goto_5

    :cond_8
    move-object v9, p1

    :goto_5
    invoke-interface {v8, v9, v3, v6}, Lˊﾞ/ٴᵢ;->ⁱˊ(Lᐧˎ/ﹳᐧ;II)V

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    return v2
.end method

.method public final ˑﹳ()V
    .locals 4

    iget-object v0, p0, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    const/4 v1, 0x0

    iput v1, v0, Lʻˆ/ʻٴ;->ˈ:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lʻˆ/ʻٴ;->ʼᐧ:J

    iput-boolean v1, v0, Lʻˆ/ʻٴ;->ᵔﹳ:Z

    iput-boolean v1, v0, Lʻˆ/ʻٴ;->ٴﹶ:Z

    iput-boolean v1, v0, Lʻˆ/ʻٴ;->ˉˆ:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lʻˆ/ʻٴ;->ˉʿ:Lʻˆ/ʽﹳ;

    iput v1, p0, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    iput v1, p0, Lʻˆ/ﾞʻ;->ᵔᵢ:I

    iput v1, p0, Lʻˆ/ﾞʻ;->ᵎﹶ:I

    iput v1, p0, Lʻˆ/ﾞʻ;->ʼˎ:I

    iput-boolean v1, p0, Lʻˆ/ﾞʻ;->ˉʿ:Z

    return-void
.end method

.method public final ⁱˊ()Lʻˆ/ʽﹳ;
    .locals 4

    .prologue
    iget-boolean v0, p0, Lʻˆ/ﾞʻ;->ˉʿ:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget-object v2, v0, Lʻˆ/ʻٴ;->ﹳٴ:Lʻˆ/ʼˎ;

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget v2, v2, Lʻˆ/ʼˎ;->ﹳٴ:I

    iget-object v0, v0, Lʻˆ/ʻٴ;->ˉʿ:Lʻˆ/ʽﹳ;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v0, v0, Lʻˆ/ـˆ;->ﹳٴ:Lʻˆ/ˏי;

    iget-object v0, v0, Lʻˆ/ˏי;->ﾞʻ:[Lʻˆ/ʽﹳ;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lʻˆ/ʽﹳ;->ﹳٴ:Z

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final ﹳٴ()I
    .locals 2

    .prologue
    iget-boolean v0, p0, Lʻˆ/ﾞʻ;->ˉʿ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lʻˆ/ﾞʻ;->ˈ:Lʻˆ/ـˆ;

    iget-object v0, v0, Lʻˆ/ـˆ;->ᵎﹶ:[I

    iget v1, p0, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʻˆ/ﾞʻ;->ⁱˊ:Lʻˆ/ʻٴ;

    iget-object v0, v0, Lʻˆ/ʻٴ;->ˆʾ:[Z

    iget v1, p0, Lʻˆ/ﾞʻ;->ﾞᴵ:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lʻˆ/ﾞʻ;->ⁱˊ()Lʻˆ/ʽﹳ;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method
