.class public final Lיי/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיי/ʼˎ;


# instance fields
.field public ʼˎ:I

.field public final ʽ:Ljava/lang/String;

.field public ˆʾ:Z

.field public final ˈ:I

.field public ˉʿ:I

.field public final ˑﹳ:Ljava/lang/String;

.field public ٴﹶ:Z

.field public ᵎﹶ:Ljava/lang/String;

.field public ᵔʾ:J

.field public ᵔᵢ:I

.field public final ⁱˊ:Lˊﾞ/ʼʼ;

.field public final ﹳٴ:Lᐧˎ/ﹳᐧ;

.field public ﾞʻ:J

.field public ﾞᴵ:Lˊﾞ/ٴᵢ;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lיי/ʽﹳ;->ᵔᵢ:I

    new-instance v1, Lᐧˎ/ﹳᐧ;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v1, p0, Lיי/ʽﹳ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    iget-object v1, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Lˊﾞ/ʼʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lיי/ʽﹳ;->ⁱˊ:Lˊﾞ/ʼʼ;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ʽﹳ;->ᵔʾ:J

    iput-object p2, p0, Lיי/ʽﹳ;->ʽ:Ljava/lang/String;

    iput p1, p0, Lיי/ʽﹳ;->ˈ:I

    iput-object p3, p0, Lיי/ʽﹳ;->ˑﹳ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;)V
    .locals 12

    .prologue
    iget-object v0, p0, Lיי/ʽﹳ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-lez v0, :cond_c

    iget v0, p0, Lיי/ʽﹳ;->ᵔᵢ:I

    iget-object v1, p0, Lיי/ʽﹳ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    iget v1, p0, Lיי/ʽﹳ;->ˉʿ:I

    iget v3, p0, Lיי/ʽﹳ;->ʼˎ:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lיי/ʽﹳ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-interface {v1, v0, p1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v1, p0, Lיי/ʽﹳ;->ʼˎ:I

    add-int/2addr v1, v0

    iput v1, p0, Lיי/ʽﹳ;->ʼˎ:I

    iget v0, p0, Lיי/ʽﹳ;->ˉʿ:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lיי/ʽﹳ;->ᵔʾ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v5, p0, Lיי/ʽﹳ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    iget-wide v6, p0, Lיי/ʽﹳ;->ᵔʾ:J

    iget v9, p0, Lיי/ʽﹳ;->ˉʿ:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget-wide v0, p0, Lיי/ʽﹳ;->ᵔʾ:J

    iget-wide v3, p0, Lיי/ʽﹳ;->ﾞʻ:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lיי/ʽﹳ;->ᵔʾ:J

    iput v2, p0, Lיי/ʽﹳ;->ʼˎ:I

    iput v2, p0, Lיי/ʽﹳ;->ᵔᵢ:I

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    iget v5, p0, Lיי/ʽﹳ;->ʼˎ:I

    const/4 v6, 0x4

    rsub-int/lit8 v5, v5, 0x4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v5, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v7, p0, Lיי/ʽﹳ;->ʼˎ:I

    invoke-virtual {p1, v5, v7, v0}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget v5, p0, Lיי/ʽﹳ;->ʼˎ:I

    add-int/2addr v5, v0

    iput v5, p0, Lיי/ʽﹳ;->ʼˎ:I

    if-ge v5, v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v0

    iget-object v5, p0, Lיי/ʽﹳ;->ⁱˊ:Lˊﾞ/ʼʼ;

    invoke-virtual {v5, v0}, Lˊﾞ/ʼʼ;->ﹳٴ(I)Z

    move-result v0

    if-nez v0, :cond_5

    iput v2, p0, Lיי/ʽﹳ;->ʼˎ:I

    iput v4, p0, Lיי/ʽﹳ;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_5
    iget v0, v5, Lˊﾞ/ʼʼ;->ⁱˊ:I

    iput v0, p0, Lיי/ʽﹳ;->ˉʿ:I

    iget-boolean v0, p0, Lיי/ʽﹳ;->ˆʾ:Z

    if-nez v0, :cond_6

    iget v0, v5, Lˊﾞ/ʼʼ;->ﾞᴵ:I

    int-to-long v7, v0

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    iget v0, v5, Lˊﾞ/ʼʼ;->ʽ:I

    int-to-long v9, v0

    div-long/2addr v7, v9

    iput-wide v7, p0, Lיי/ʽﹳ;->ﾞʻ:J

    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    iget-object v7, p0, Lיי/ʽﹳ;->ᵎﹶ:Ljava/lang/String;

    iput-object v7, v0, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v7, p0, Lיי/ʽﹳ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v7}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    iget-object v7, v5, Lˊﾞ/ʼʼ;->ᵎﹶ:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    const/16 v7, 0x1000

    iput v7, v0, Lʽⁱ/ᵔﹳ;->ᵔʾ:I

    iget v7, v5, Lˊﾞ/ʼʼ;->ˈ:I

    iput v7, v0, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iget v5, v5, Lˊﾞ/ʼʼ;->ʽ:I

    iput v5, v0, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iget-object v5, p0, Lיי/ʽﹳ;->ʽ:Ljava/lang/String;

    iput-object v5, v0, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v5, p0, Lיי/ʽﹳ;->ˈ:I

    iput v5, v0, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    new-instance v5, Lʽⁱ/ﹳᐧ;

    invoke-direct {v5, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-object v0, p0, Lיי/ʽﹳ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-interface {v0, v5}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    iput-boolean v4, p0, Lיי/ʽﹳ;->ˆʾ:Z

    :cond_6
    invoke-virtual {v1, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v0, p0, Lיי/ʽﹳ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-interface {v0, v6, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iput v3, p0, Lיי/ʽﹳ;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v5, p1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v6, p1, Lᐧˎ/ﹳᐧ;->ʽ:I

    :goto_2
    if-ge v5, v6, :cond_b

    aget-byte v7, v0, v5

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_8

    move v8, v4

    goto :goto_3

    :cond_8
    move v8, v2

    :goto_3
    iget-boolean v9, p0, Lיי/ʽﹳ;->ٴﹶ:Z

    if-eqz v9, :cond_9

    and-int/lit16 v7, v7, 0xe0

    const/16 v9, 0xe0

    if-ne v7, v9, :cond_9

    move v7, v4

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    iput-boolean v8, p0, Lיי/ʽﹳ;->ٴﹶ:Z

    if-eqz v7, :cond_a

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iput-boolean v2, p0, Lיי/ʽﹳ;->ٴﹶ:Z

    iget-object v1, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aget-byte v0, v0, v5

    aput-byte v0, v1, v4

    iput v3, p0, Lיי/ʽﹳ;->ʼˎ:I

    iput v4, p0, Lיי/ʽﹳ;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final ˈ(Z)V
    .locals 0

    return-void
.end method

.method public final ˑﹳ(IJ)V
    .locals 0

    iput-wide p2, p0, Lיי/ʽﹳ;->ᵔʾ:J

    return-void
.end method

.method public final ⁱˊ()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lיי/ʽﹳ;->ᵔᵢ:I

    iput v0, p0, Lיי/ʽﹳ;->ʼˎ:I

    iput-boolean v0, p0, Lיי/ʽﹳ;->ٴﹶ:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ʽﹳ;->ᵔʾ:J

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V
    .locals 1

    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object v0, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object v0, p0, Lיי/ʽﹳ;->ᵎﹶ:Ljava/lang/String;

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget p2, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lיי/ʽﹳ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    return-void
.end method
