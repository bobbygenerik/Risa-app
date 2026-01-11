.class public final Lˆˑ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʼˎ:Lˊﾞ/ˏי;

.field public final ʽ:Z

.field public ˆʾ:I

.field public final ˈ:Lʽⁱ/ˏי;

.field public ˉʿ:I

.field public ˑﹳ:Lˊﾞ/ᵔﹳ;

.field public ٴﹶ:I

.field public ᵎﹶ:I

.field public ᵔʾ:J

.field public ᵔᵢ:Lʽⁱ/ٴᵢ;

.field public final ⁱˊ:Lᐧˎ/ﹳᐧ;

.field public final ﹳٴ:[B

.field public ﾞʻ:Lˆˑ/ﹳٴ;

.field public ﾞᴵ:Lˊﾞ/ٴᵢ;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lˆˑ/ⁱˊ;->ﹳٴ:[B

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lᐧˎ/ﹳᐧ;-><init>(I[B)V

    iput-object v0, p0, Lˆˑ/ⁱˊ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    iput-boolean v2, p0, Lˆˑ/ⁱˊ;->ʽ:Z

    new-instance v0, Lʽⁱ/ˏי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˆˑ/ⁱˊ;->ˈ:Lʽⁱ/ˏי;

    iput v2, p0, Lˆˑ/ⁱˊ;->ᵎﹶ:I

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 2

    iput-object p1, p0, Lˆˑ/ⁱˊ;->ˑﹳ:Lˊﾞ/ᵔﹳ;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v0

    iput-object v0, p0, Lˆˑ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 31

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lˆˑ/ⁱˊ;->ᵎﹶ:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_28

    iget-object v5, v0, Lˆˑ/ⁱˊ;->ﹳٴ:[B

    const/4 v6, 0x2

    if-eq v2, v3, :cond_27

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v2, v6, :cond_25

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-eq v2, v9, :cond_1c

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    const/4 v5, 0x5

    if-eq v2, v8, :cond_16

    if-ne v2, v5, :cond_15

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ﾞʻ:Lˆˑ/ﹳٴ;

    if-eqz v2, :cond_0

    iget-object v5, v2, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    if-eqz v5, :cond_0

    move-object/from16 v5, p2

    invoke-virtual {v2, v1, v5}, Lˆˑ/ﹳٴ;->ⁱˊ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result v1

    return v1

    :cond_0
    iget-wide v8, v0, Lˆˑ/ⁱˊ;->ᵔʾ:J

    cmp-long v2, v8, v14

    const/4 v5, -0x1

    if-nez v2, :cond_7

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    new-array v8, v3, [B

    invoke-interface {v1, v8, v4, v3}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    aget-byte v8, v8, v4

    and-int/2addr v8, v3

    if-ne v8, v3, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    invoke-interface {v1, v6}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    new-instance v6, Lᐧˎ/ﹳᐧ;

    invoke-direct {v6, v10}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v9, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_4

    sub-int v14, v10, v11

    invoke-interface {v1, v9, v11, v14}, Lˊﾞ/ʼᐧ;->ˆʾ([BII)I

    move-result v14

    if-ne v14, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v11, v14

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v6, v11}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    :try_start_0
    invoke-virtual {v6}, Lᐧˎ/ﹳᐧ;->ˊʻ()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    :goto_4
    move-wide v12, v5

    goto :goto_5

    :cond_5
    iget v1, v2, Lˊﾞ/ˏי;->ⁱˊ:I

    int-to-long v1, v1

    mul-long/2addr v5, v1

    goto :goto_4

    :catch_0
    move v3, v4

    :goto_5
    if-eqz v3, :cond_6

    iput-wide v12, v0, Lˆˑ/ⁱˊ;->ᵔʾ:J

    goto/16 :goto_d

    :cond_6
    invoke-static {v7, v7}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_7
    iget-object v2, v0, Lˆˑ/ⁱˊ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    iget v6, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    const-wide/32 v7, 0xf4240

    const v9, 0x8000

    if-ge v6, v9, :cond_a

    iget-object v10, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    sub-int/2addr v9, v6

    invoke-interface {v1, v10, v6, v9}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result v1

    if-ne v1, v5, :cond_8

    goto :goto_6

    :cond_8
    move v3, v4

    :goto_6
    if-nez v3, :cond_9

    add-int/2addr v6, v1

    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    if-nez v1, :cond_b

    iget-wide v1, v0, Lˆˑ/ⁱˊ;->ᵔʾ:J

    mul-long/2addr v1, v7

    iget-object v3, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    sget-object v4, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget v3, v3, Lˊﾞ/ˏי;->ˑﹳ:I

    int-to-long v3, v3

    div-long v7, v1, v3

    iget-object v6, v0, Lˆˑ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    iget v10, v0, Lˆˑ/ⁱˊ;->ˉʿ:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return v5

    :cond_a
    move v3, v4

    :cond_b
    :goto_7
    iget v1, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v5, v0, Lˆˑ/ⁱˊ;->ˉʿ:I

    iget v6, v0, Lˆˑ/ⁱˊ;->ˆʾ:I

    if-ge v5, v6, :cond_c

    sub-int/2addr v6, v5

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_c
    iget-object v5, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    :goto_8
    iget v6, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    const/16 v9, 0x10

    sub-int/2addr v6, v9

    iget-object v10, v0, Lˆˑ/ⁱˊ;->ˈ:Lʽⁱ/ˏי;

    if-gt v5, v6, :cond_e

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v6, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    iget v11, v0, Lˆˑ/ⁱˊ;->ٴﹶ:I

    invoke-static {v2, v6, v11, v10}, Lˊﾞ/ﹳٴ;->ˈ(Lᐧˎ/ﹳᐧ;Lˊﾞ/ˏי;ILʽⁱ/ˏי;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-wide v5, v10, Lʽⁱ/ˏי;->ﹳٴ:J

    goto :goto_c

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    if-eqz v3, :cond_12

    :goto_9
    iget v3, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    iget v6, v0, Lˆˑ/ⁱˊ;->ˆʾ:I

    sub-int v6, v3, v6

    if-gt v5, v6, :cond_11

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :try_start_1
    iget-object v3, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    iget v6, v0, Lˆˑ/ⁱˊ;->ٴﹶ:I

    invoke-static {v2, v3, v6, v10}, Lˊﾞ/ﹳٴ;->ˈ(Lᐧˎ/ﹳᐧ;Lˊﾞ/ˏי;ILʽⁱ/ˏי;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move v3, v4

    :goto_a
    iget v6, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v11, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    if-le v6, v11, :cond_f

    move v3, v4

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-wide v5, v10, Lʽⁱ/ˏי;->ﹳٴ:J

    goto :goto_c

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_b

    :cond_12
    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :goto_b
    move-wide v5, v14

    :goto_c
    iget v3, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v1, v0, Lˆˑ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-interface {v1, v3, v2}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v1, v0, Lˆˑ/ⁱˊ;->ˉʿ:I

    add-int/2addr v1, v3

    iput v1, v0, Lˆˑ/ⁱˊ;->ˉʿ:I

    cmp-long v3, v5, v14

    if-eqz v3, :cond_13

    iget-wide v10, v0, Lˆˑ/ⁱˊ;->ᵔʾ:J

    mul-long/2addr v10, v7

    iget-object v3, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    sget-object v7, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget v3, v3, Lˊﾞ/ˏי;->ˑﹳ:I

    int-to-long v7, v3

    div-long v17, v10, v7

    iget-object v3, v0, Lˆˑ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v1

    move-object/from16 v16, v3

    invoke-interface/range {v16 .. v22}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v4, v0, Lˆˑ/ⁱˊ;->ˉʿ:I

    iput-wide v5, v0, Lˆˑ/ⁱˊ;->ᵔʾ:J

    :cond_13
    iget-object v1, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    array-length v1, v1

    iget v3, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    if-ge v3, v9, :cond_14

    if-ge v1, v9, :cond_14

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v5, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v3, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    :cond_14
    :goto_d
    return v4

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_16
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    new-instance v2, Lᐧˎ/ﹳᐧ;

    invoke-direct {v2, v6}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v3, v4, v6}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v6, 0x3ffe

    if-ne v3, v6, :cond_1b

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iput v2, v0, Lˆˑ/ⁱˊ;->ٴﹶ:I

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ˑﹳ:Lˊﾞ/ᵔﹳ;

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v6

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v25

    iget-object v1, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    iget-object v3, v1, Lˊﾞ/ˏי;->ٴﹶ:Lﹶﾞ/ⁱי;

    if-eqz v3, :cond_17

    iget-object v3, v3, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, [J

    array-length v3, v3

    if-lez v3, :cond_17

    new-instance v3, Lˊﾞ/יـ;

    invoke-direct {v3, v1, v6, v7, v4}, Lˊﾞ/יـ;-><init>(Ljava/lang/Object;JI)V

    move/from16 v30, v4

    goto/16 :goto_11

    :cond_17
    cmp-long v3, v25, v14

    if-eqz v3, :cond_1a

    iget-wide v8, v1, Lˊﾞ/ˏי;->ˆʾ:J

    cmp-long v3, v8, v12

    if-lez v3, :cond_1a

    new-instance v16, Lˆˑ/ﹳٴ;

    iget v3, v0, Lˆˑ/ⁱˊ;->ٴﹶ:I

    iget v8, v1, Lˊﾞ/ˏי;->ʽ:I

    new-instance v9, Lʻʿ/ˈ;

    const/16 v10, 0x11

    invoke-direct {v9, v10, v1}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    new-instance v10, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {v10, v1, v3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Lˊﾞ/ˏי;I)V

    invoke-virtual {v1}, Lˊﾞ/ˏי;->ⁱˊ()J

    move-result-wide v19

    iget-wide v12, v1, Lˊﾞ/ˏי;->ˆʾ:J

    iget v3, v1, Lˊﾞ/ˏי;->ˈ:I

    if-lez v3, :cond_18

    int-to-long v14, v3

    move/from16 v30, v4

    int-to-long v4, v8

    add-long/2addr v14, v4

    const-wide/16 v3, 0x2

    div-long/2addr v14, v3

    const-wide/16 v3, 0x1

    add-long/2addr v14, v3

    :goto_e
    move-wide/from16 v27, v14

    goto :goto_10

    :cond_18
    move/from16 v30, v4

    iget v3, v1, Lˊﾞ/ˏי;->ﹳٴ:I

    iget v4, v1, Lˊﾞ/ˏי;->ⁱˊ:I

    if-ne v3, v4, :cond_19

    if-lez v3, :cond_19

    int-to-long v3, v3

    goto :goto_f

    :cond_19
    const-wide/16 v3, 0x1000

    :goto_f
    iget v5, v1, Lˊﾞ/ˏי;->ᵎﹶ:I

    int-to-long v14, v5

    mul-long/2addr v3, v14

    iget v1, v1, Lˊﾞ/ˏי;->ᵔᵢ:I

    int-to-long v14, v1

    mul-long/2addr v3, v14

    const-wide/16 v14, 0x8

    div-long/2addr v3, v14

    const-wide/16 v14, 0x40

    add-long/2addr v14, v3

    goto :goto_e

    :goto_10
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v29

    move-wide/from16 v23, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-wide/from16 v21, v12

    invoke-direct/range {v16 .. v29}, Lˆˑ/ﹳٴ;-><init>(Lˊﾞ/ᵎﹶ;Lˊﾞ/ʼˎ;JJJJJI)V

    move-object/from16 v1, v16

    iput-object v1, v0, Lˆˑ/ⁱˊ;->ﾞʻ:Lˆˑ/ﹳٴ;

    iget-object v3, v1, Lˆˑ/ﹳٴ;->ﹳٴ:Lˊﾞ/ˑﹳ;

    goto :goto_11

    :cond_1a
    move/from16 v30, v4

    new-instance v3, Lˊﾞ/יـ;

    invoke-virtual {v1}, Lˊﾞ/ˏי;->ⁱˊ()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lˊﾞ/יـ;-><init>(J)V

    :goto_11
    invoke-interface {v2, v3}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    const/4 v1, 0x5

    iput v1, v0, Lˆˑ/ⁱˊ;->ᵎﹶ:I

    return v30

    :cond_1b
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    const-string v1, "First frame does not start with sync code."

    invoke-static {v7, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1c
    move/from16 v30, v4

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    move/from16 v3, v30

    :goto_12
    if-nez v3, :cond_24

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    new-instance v3, Lʻᴵ/ʻٴ;

    new-array v4, v8, [B

    invoke-direct {v3, v8, v4}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    move/from16 v6, v30

    invoke-interface {v1, v4, v6, v8}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v3}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v4

    invoke-virtual {v3, v10}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v7

    const/16 v12, 0x18

    invoke-virtual {v3, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    add-int/2addr v3, v8

    if-nez v7, :cond_1d

    const/16 v2, 0x26

    new-array v3, v2, [B

    invoke-interface {v1, v3, v6, v2}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    new-instance v2, Lˊﾞ/ˏי;

    invoke-direct {v2, v8, v3}, Lˊﾞ/ˏי;-><init>(I[B)V

    goto/16 :goto_18

    :cond_1d
    if-eqz v2, :cond_23

    iget-object v12, v2, Lˊﾞ/ˏי;->ﾞʻ:Lʽⁱ/ٴᵢ;

    if-ne v7, v9, :cond_1e

    new-instance v7, Lᐧˎ/ﹳᐧ;

    invoke-direct {v7, v3}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v12, v7, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v12, v6, v3}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-static {v7}, Lˊﾞ/ﹳٴ;->ʾᵎ(Lᐧˎ/ﹳᐧ;)Lﹶﾞ/ⁱי;

    move-result-object v23

    new-instance v13, Lˊﾞ/ˏי;

    iget v14, v2, Lˊﾞ/ˏי;->ﹳٴ:I

    iget v15, v2, Lˊﾞ/ˏי;->ⁱˊ:I

    iget v3, v2, Lˊﾞ/ˏי;->ʽ:I

    iget v6, v2, Lˊﾞ/ˏי;->ˈ:I

    iget v7, v2, Lˊﾞ/ˏי;->ˑﹳ:I

    iget v12, v2, Lˊﾞ/ˏי;->ᵎﹶ:I

    iget v10, v2, Lˊﾞ/ˏי;->ᵔᵢ:I

    move/from16 v20, v10

    iget-wide v9, v2, Lˊﾞ/ˏי;->ˆʾ:J

    iget-object v2, v2, Lˊﾞ/ˏי;->ﾞʻ:Lʽⁱ/ٴᵢ;

    move-object/from16 v24, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v21, v9

    move/from16 v19, v12

    invoke-direct/range {v13 .. v24}, Lˊﾞ/ˏי;-><init>(IIIIIIIJLﹶﾞ/ⁱי;Lʽⁱ/ٴᵢ;)V

    move-object v2, v13

    goto/16 :goto_18

    :cond_1e
    if-ne v7, v8, :cond_20

    new-instance v6, Lᐧˎ/ﹳᐧ;

    invoke-direct {v6, v3}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v7, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9, v3}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v6, v8}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-static {v6, v9, v9}, Lˊﾞ/ﹳٴ;->ʼʼ(Lᐧˎ/ﹳᐧ;ZZ)Lˉˆ/ʿ;

    move-result-object v3

    iget-object v3, v3, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lˊﾞ/ﹳٴ;->ʽﹳ(Ljava/util/List;)Lʽⁱ/ٴᵢ;

    move-result-object v3

    if-nez v12, :cond_1f

    :goto_13
    move-object/from16 v23, v3

    goto :goto_14

    :cond_1f
    invoke-virtual {v12, v3}, Lʽⁱ/ٴᵢ;->ⁱˊ(Lʽⁱ/ٴᵢ;)Lʽⁱ/ٴᵢ;

    move-result-object v3

    goto :goto_13

    :goto_14
    new-instance v12, Lˊﾞ/ˏי;

    iget v13, v2, Lˊﾞ/ˏי;->ﹳٴ:I

    iget v14, v2, Lˊﾞ/ˏי;->ⁱˊ:I

    iget v15, v2, Lˊﾞ/ˏי;->ʽ:I

    iget v3, v2, Lˊﾞ/ˏי;->ˈ:I

    iget v6, v2, Lˊﾞ/ˏי;->ˑﹳ:I

    iget v7, v2, Lˊﾞ/ˏי;->ᵎﹶ:I

    iget v9, v2, Lˊﾞ/ˏי;->ᵔᵢ:I

    move/from16 v19, v9

    iget-wide v8, v2, Lˊﾞ/ˏי;->ˆʾ:J

    iget-object v2, v2, Lˊﾞ/ˏי;->ٴﹶ:Lﹶﾞ/ⁱי;

    move-object/from16 v22, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v20, v8

    invoke-direct/range {v12 .. v23}, Lˊﾞ/ˏי;-><init>(IIIIIIIJLﹶﾞ/ⁱי;Lʽⁱ/ٴᵢ;)V

    :goto_15
    move-object v2, v12

    goto :goto_18

    :cond_20
    if-ne v7, v11, :cond_22

    new-instance v6, Lᐧˎ/ﹳᐧ;

    invoke-direct {v6, v3}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v7, v6, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9, v3}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-static {v6}, Lᵢᐧ/ﹳٴ;->ˈ(Lᐧˎ/ﹳᐧ;)Lᵢᐧ/ﹳٴ;

    move-result-object v3

    invoke-static {v3}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v3

    new-instance v6, Lʽⁱ/ٴᵢ;

    invoke-direct {v6, v3}, Lʽⁱ/ٴᵢ;-><init>(Ljava/util/List;)V

    if-nez v12, :cond_21

    :goto_16
    move-object/from16 v23, v6

    goto :goto_17

    :cond_21
    invoke-virtual {v12, v6}, Lʽⁱ/ٴᵢ;->ⁱˊ(Lʽⁱ/ٴᵢ;)Lʽⁱ/ٴᵢ;

    move-result-object v6

    goto :goto_16

    :goto_17
    new-instance v12, Lˊﾞ/ˏי;

    iget v13, v2, Lˊﾞ/ˏי;->ﹳٴ:I

    iget v14, v2, Lˊﾞ/ˏי;->ⁱˊ:I

    iget v15, v2, Lˊﾞ/ˏי;->ʽ:I

    iget v3, v2, Lˊﾞ/ˏי;->ˈ:I

    iget v6, v2, Lˊﾞ/ˏי;->ˑﹳ:I

    iget v7, v2, Lˊﾞ/ˏי;->ᵎﹶ:I

    iget v8, v2, Lˊﾞ/ˏי;->ᵔᵢ:I

    iget-wide v10, v2, Lˊﾞ/ˏי;->ˆʾ:J

    iget-object v2, v2, Lˊﾞ/ˏי;->ٴﹶ:Lﹶﾞ/ⁱי;

    move-object/from16 v22, v2

    move/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move-wide/from16 v20, v10

    invoke-direct/range {v12 .. v23}, Lˊﾞ/ˏי;-><init>(IIIIIIIJLﹶﾞ/ⁱי;Lʽⁱ/ٴᵢ;)V

    goto :goto_15

    :cond_22
    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :goto_18
    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iput-object v2, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    move v3, v4

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/16 v30, 0x0

    goto/16 :goto_12

    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_24
    iget-object v1, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    iget v1, v1, Lˊﾞ/ˏי;->ʽ:I

    const/4 v9, 0x6

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lˆˑ/ⁱˊ;->ˆʾ:I

    iget-object v1, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ᵔᵢ:Lʽⁱ/ٴᵢ;

    invoke-virtual {v1, v5, v2}, Lˊﾞ/ˏי;->ʽ([BLʽⁱ/ٴᵢ;)Lʽⁱ/ﹳᐧ;

    move-result-object v1

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v1}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v1

    const-string v3, "audio/flac"

    invoke-static {v3}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v1, v2}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iget-object v1, v0, Lˆˑ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    iget-object v2, v0, Lˆˑ/ⁱˊ;->ʼˎ:Lˊﾞ/ˏי;

    invoke-virtual {v2}, Lˊﾞ/ˏי;->ⁱˊ()J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x4

    iput v10, v0, Lˆˑ/ⁱˊ;->ᵎﹶ:I

    const/4 v9, 0x0

    return v9

    :cond_25
    move v9, v4

    move v10, v8

    new-instance v2, Lᐧˎ/ﹳᐧ;

    invoke-direct {v2, v10}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v3, v9, v10}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    const/4 v1, 0x3

    iput v1, v0, Lˆˑ/ⁱˊ;->ᵎﹶ:I

    return v9

    :cond_26
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v7, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_27
    move v9, v4

    array-length v2, v5

    invoke-interface {v1, v5, v9, v2}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iput v6, v0, Lˆˑ/ⁱˊ;->ᵎﹶ:I

    return v9

    :cond_28
    iget-boolean v2, v0, Lˆˑ/ⁱˊ;->ʽ:Z

    xor-int/2addr v2, v3

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ʾᵎ()J

    move-result-wide v4

    invoke-static {v1, v2}, Lˊﾞ/ﹳٴ;->ʻٴ(Lˊﾞ/ʼᐧ;Z)Lʽⁱ/ٴᵢ;

    move-result-object v2

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ʾᵎ()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v4, v6

    invoke-interface {v1, v4}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    iput-object v2, v0, Lˆˑ/ⁱˊ;->ᵔᵢ:Lʽⁱ/ٴᵢ;

    iput v3, v0, Lˆˑ/ⁱˊ;->ᵎﹶ:I

    const/16 v30, 0x0

    return v30
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Lˆˑ/ⁱˊ;->ᵎﹶ:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lˆˑ/ⁱˊ;->ﾞʻ:Lˆˑ/ﹳٴ;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Lˆˑ/ﹳٴ;->ˈ(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lˆˑ/ⁱˊ;->ᵔʾ:J

    iput p2, p0, Lˆˑ/ⁱˊ;->ˉʿ:I

    iget-object p1, p0, Lˆˑ/ⁱˊ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {p1, p2}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lˊﾞ/ﹳٴ;->ʻٴ(Lˊﾞ/ʼᐧ;Z)Lʽⁱ/ٴᵢ;

    new-instance v1, Lᐧˎ/ﹳᐧ;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v3, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    check-cast p1, Lˊﾞ/ﾞʻ;

    invoke-virtual {p1, v3, v0, v2, v0}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
