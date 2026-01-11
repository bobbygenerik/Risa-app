.class public final Lˏʻ/ʽ;
.super Lˏʻ/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public ˉˆ:Lʻˆ/ʽ;

.field public ᵔʾ:Lˊﾞ/ˏי;


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;JLﹶﾞ/ⁱי;)Z
    .locals 21

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget-object v4, v0, Lˏʻ/ʽ;->ᵔʾ:Lˊﾞ/ˏי;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    new-instance v4, Lˊﾞ/ˏי;

    const/16 v6, 0x11

    invoke-direct {v4, v6, v3}, Lˊﾞ/ˏי;-><init>(I[B)V

    iput-object v4, v0, Lˏʻ/ʽ;->ᵔʾ:Lˊﾞ/ˏי;

    const/16 v6, 0x9

    iget v1, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-static {v3, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Lˊﾞ/ˏי;->ʽ([BLʽⁱ/ٴᵢ;)Lʽⁱ/ﹳᐧ;

    move-result-object v1

    invoke-virtual {v1}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v1

    const-string v3, "audio/ogg"

    invoke-static {v3}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    new-instance v3, Lʽⁱ/ﹳᐧ;

    invoke-direct {v3, v1}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object v3, v2, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    return v5

    :cond_0
    const/4 v6, 0x0

    aget-byte v3, v3, v6

    and-int/lit8 v7, v3, 0x7f

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-static {v1}, Lˊﾞ/ﹳٴ;->ʾᵎ(Lᐧˎ/ﹳᐧ;)Lﹶﾞ/ⁱי;

    move-result-object v19

    new-instance v9, Lˊﾞ/ˏי;

    iget v10, v4, Lˊﾞ/ˏי;->ﹳٴ:I

    iget v11, v4, Lˊﾞ/ˏי;->ⁱˊ:I

    iget v12, v4, Lˊﾞ/ˏי;->ʽ:I

    iget v13, v4, Lˊﾞ/ˏי;->ˈ:I

    iget v14, v4, Lˊﾞ/ˏי;->ˑﹳ:I

    iget v15, v4, Lˊﾞ/ˏי;->ᵎﹶ:I

    iget v1, v4, Lˊﾞ/ˏי;->ᵔᵢ:I

    iget-wide v2, v4, Lˊﾞ/ˏי;->ˆʾ:J

    iget-object v4, v4, Lˊﾞ/ˏי;->ﾞʻ:Lʽⁱ/ٴᵢ;

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-object/from16 v20, v4

    invoke-direct/range {v9 .. v20}, Lˊﾞ/ˏי;-><init>(IIIIIIIJLﹶﾞ/ⁱי;Lʽⁱ/ٴᵢ;)V

    move-object/from16 v1, v19

    iput-object v9, v0, Lˏʻ/ʽ;->ᵔʾ:Lˊﾞ/ˏי;

    new-instance v2, Lʻˆ/ʽ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v9, v2, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v2, Lʻˆ/ʽ;->ˈٴ:Ljava/lang/Object;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lʻˆ/ʽ;->ʾˋ:J

    iput-wide v3, v2, Lʻˆ/ʽ;->ᴵˊ:J

    iput-object v2, v0, Lˏʻ/ʽ;->ˉˆ:Lʻˆ/ʽ;

    return v5

    :cond_1
    const/4 v1, -0x1

    if-ne v3, v1, :cond_3

    iget-object v1, v0, Lˏʻ/ʽ;->ˉˆ:Lʻˆ/ʽ;

    if-eqz v1, :cond_2

    move-wide/from16 v3, p2

    iput-wide v3, v1, Lʻˆ/ʽ;->ʾˋ:J

    iput-object v1, v2, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    :cond_2
    iget-object v1, v2, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʽⁱ/ﹳᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v6

    :cond_3
    return v5
.end method

.method public final ˈ(Z)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Lˏʻ/ᵔᵢ;->ˈ(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lˏʻ/ʽ;->ᵔʾ:Lˊﾞ/ˏי;

    iput-object p1, p0, Lˏʻ/ʽ;->ˉˆ:Lʻˆ/ʽ;

    :cond_0
    return-void
.end method

.method public final ⁱˊ(Lᐧˎ/ﹳᐧ;)J
    .locals 4

    .prologue
    iget-object v0, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    shr-int/2addr v0, v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ˊʻ()J

    :cond_1
    invoke-static {v0, p1}, Lˊﾞ/ﹳٴ;->ـˆ(ILᐧˎ/ﹳᐧ;)I

    move-result v0

    invoke-virtual {p1, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method
