.class public final Lיי/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיי/ʼˎ;


# instance fields
.field public ʼˎ:I

.field public ʼᐧ:I

.field public final ʽ:Ljava/lang/String;

.field public ˆʾ:I

.field public final ˈ:I

.field public ˉʿ:I

.field public ˉˆ:I

.field public final ˑﹳ:Ljava/lang/String;

.field public ٴﹶ:J

.field public ᵎﹶ:Lˊﾞ/ٴᵢ;

.field public ᵔʾ:I

.field public ᵔᵢ:I

.field public ᵔﹳ:J

.field public final ⁱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final ﹳٴ:Lᐧˎ/ﹳᐧ;

.field public ﾞʻ:Lʽⁱ/ﹳᐧ;

.field public ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᐧˎ/ﹳᐧ;

    new-array p2, p2, [B

    invoke-direct {v0, p2}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object v0, p0, Lיי/ᵎﹶ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    const/4 p2, 0x0

    iput p2, p0, Lיי/ᵎﹶ;->ᵔᵢ:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lיי/ᵎﹶ;->ᵔﹳ:J

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Lיי/ᵎﹶ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    iput p2, p0, Lיי/ᵎﹶ;->ˉˆ:I

    iput p2, p0, Lיי/ᵎﹶ;->ʼᐧ:I

    iput-object p3, p0, Lיי/ᵎﹶ;->ʽ:Ljava/lang/String;

    iput p1, p0, Lיי/ᵎﹶ;->ˈ:I

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lיי/ᵎﹶ;->ˑﹳ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;)V
    .locals 39

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    if-lez v2, :cond_3c

    iget v2, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    const v13, 0x40411bf2

    const/4 v15, 0x5

    const/16 v6, 0x20

    const/4 v8, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v14, 0x1

    const/16 v27, 0x8

    iget-object v10, v0, Lיי/ᵎﹶ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :pswitch_0
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    iget v5, v0, Lיי/ᵎﹶ;->ˉʿ:I

    iget v6, v0, Lיי/ᵎﹶ;->ʼˎ:I

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, v0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    invoke-interface {v5, v2, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v5, v0, Lיי/ᵎﹶ;->ʼˎ:I

    add-int/2addr v5, v2

    iput v5, v0, Lיי/ᵎﹶ;->ʼˎ:I

    iget v2, v0, Lיי/ᵎﹶ;->ˉʿ:I

    if-ne v5, v2, :cond_0

    iget-wide v5, v0, Lיי/ᵎﹶ;->ᵔﹳ:J

    cmp-long v2, v5, v18

    if-eqz v2, :cond_1

    move v2, v14

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v5, v0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    iget-wide v6, v0, Lיי/ᵎﹶ;->ᵔﹳ:J

    iget v2, v0, Lיי/ᵎﹶ;->ᵔʾ:I

    if-ne v2, v3, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v14

    :goto_2
    iget v9, v0, Lיי/ᵎﹶ;->ˉʿ:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget-wide v2, v0, Lיי/ᵎﹶ;->ᵔﹳ:J

    iget-wide v5, v0, Lיי/ᵎﹶ;->ٴﹶ:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Lיי/ᵎﹶ;->ᵔﹳ:J

    iput v4, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto :goto_0

    :pswitch_1
    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v15, v0, Lיי/ᵎﹶ;->ʼᐧ:I

    invoke-virtual {v0, v1, v2, v15}, Lיי/ᵎﹶ;->ﹳٴ(Lᐧˎ/ﹳᐧ;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v2}, Lˊﾞ/ﹳٴ;->ﾞʻ([B)Lʻᴵ/ʻٴ;

    move-result-object v15

    invoke-virtual {v15, v6}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v6

    if-ne v6, v13, :cond_3

    move v6, v14

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    sget-object v13, Lˊﾞ/ﹳٴ;->ᵔʾ:[I

    invoke-static {v15, v13}, Lˊﾞ/ﹳٴ;->ˏי(Lʻᴵ/ʻٴ;[I)I

    move-result v13

    add-int/lit8 v23, v13, 0x1

    if-eqz v6, :cond_e

    invoke-virtual {v15}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v28, v3

    add-int/lit8 v3, v13, -0x1

    aget-byte v22, v2, v3

    shl-int/lit8 v22, v22, 0x8

    const v24, 0xffff

    and-int v22, v22, v24

    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    or-int v13, v22, v13

    sget-object v22, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    move v11, v4

    move/from16 v9, v24

    :goto_4
    if-ge v11, v3, :cond_4

    aget-byte v4, v2, v11

    and-int/lit16 v7, v4, 0xff

    shr-int/lit8 v7, v7, 0x4

    shr-int/lit8 v5, v9, 0xc

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v7, v9, 0x4

    and-int v7, v7, v24

    sget-object v9, Lᐧˎ/ʼʼ;->ٴﹶ:[I

    aget v5, v9, v5

    xor-int/2addr v5, v7

    and-int v5, v5, v24

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v7, v5, 0xc

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v5, 0x4

    and-int v5, v5, v24

    aget v4, v9, v4

    xor-int/2addr v4, v5

    and-int v9, v4, v24

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    if-ne v13, v9, :cond_c

    invoke-virtual {v15, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    if-eqz v2, :cond_7

    if-eq v2, v14, :cond_6

    if-ne v2, v12, :cond_5

    const/16 v11, 0x180

    :goto_5
    const/4 v2, 0x3

    goto :goto_6

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported base duration index in DTS UHD header: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_6
    const/16 v11, 0x1e0

    goto :goto_5

    :cond_7
    const/4 v2, 0x3

    const/16 v11, 0x200

    :goto_6
    invoke-virtual {v15, v2}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    add-int/2addr v3, v14

    mul-int/2addr v3, v11

    invoke-virtual {v15, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    if-eqz v2, :cond_a

    if-eq v2, v14, :cond_9

    if-ne v2, v12, :cond_8

    const v8, 0xbb80

    goto :goto_7

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported clock rate index in DTS UHD header: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_9
    const v8, 0xac44

    goto :goto_7

    :cond_a
    const/16 v8, 0x7d00

    :goto_7
    invoke-virtual {v15}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x24

    invoke-virtual {v15, v2}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_b
    invoke-virtual {v15, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    shl-int v2, v14, v2

    mul-int v12, v8, v2

    int-to-long v2, v3

    int-to-long v4, v8

    sget-object v38, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v34, 0xf4240

    move-wide/from16 v32, v2

    move-wide/from16 v36, v4

    invoke-static/range {v32 .. v38}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    move-wide v7, v2

    move v5, v12

    goto :goto_8

    :cond_c
    const-string v1, "CRC check failed"

    invoke-static {v8, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_d
    const-string v1, "Only supports full channel mask-based audio presentation"

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_e
    move-wide/from16 v7, v18

    const v5, -0x7fffffff

    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v2, v6, :cond_f

    sget-object v4, Lˊﾞ/ﹳٴ;->ˉˆ:[I

    invoke-static {v15, v4}, Lˊﾞ/ﹳٴ;->ˏי(Lʻᴵ/ʻٴ;[I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    iget-object v2, v0, Lיי/ᵎﹶ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v6, :cond_10

    sget-object v4, Lˊﾞ/ﹳٴ;->ʼᐧ:[I

    invoke-static {v15, v4}, Lˊﾞ/ﹳٴ;->ˏי(Lʻᴵ/ʻٴ;[I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lˊﾞ/ﹳٴ;->ᵔﹳ:[I

    invoke-static {v15, v2}, Lˊﾞ/ﹳٴ;->ˏי(Lʻᴵ/ʻٴ;[I)I

    move-result v2

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v3, v2

    add-int v6, v3, v23

    new-instance v2, Lʼٴ/ˑﹳ;

    const-string v3, "audio/vnd.dts.uhd;profile=p2"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v8}, Lʼٴ/ˑﹳ;-><init>(Ljava/lang/String;IIIJ)V

    iget v3, v0, Lיי/ᵎﹶ;->ᵔʾ:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-virtual {v0, v2}, Lיי/ᵎﹶ;->ᵎﹶ(Lʼٴ/ˑﹳ;)V

    :cond_12
    iput v6, v0, Lיי/ᵎﹶ;->ˉʿ:I

    cmp-long v2, v7, v18

    if-nez v2, :cond_13

    const-wide/16 v5, 0x0

    goto :goto_b

    :cond_13
    move-wide v5, v7

    :goto_b
    iput-wide v5, v0, Lיי/ᵎﹶ;->ٴﹶ:J

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v2, v0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    iget v3, v0, Lיי/ᵎﹶ;->ʼᐧ:I

    invoke-interface {v2, v3, v10}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    const/4 v2, 0x6

    iput v2, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x6

    iget-object v3, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {v0, v1, v3, v2}, Lיי/ᵎﹶ;->ﹳٴ(Lᐧˎ/ﹳᐧ;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v2}, Lˊﾞ/ﹳٴ;->ﾞʻ([B)Lʻᴵ/ʻٴ;

    move-result-object v2

    invoke-virtual {v2, v6}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    sget-object v3, Lˊﾞ/ﹳٴ;->ﹳᐧ:[I

    invoke-static {v2, v3}, Lˊﾞ/ﹳٴ;->ˏי(Lʻᴵ/ʻٴ;[I)I

    move-result v2

    add-int/2addr v2, v14

    iput v2, v0, Lיי/ᵎﹶ;->ʼᐧ:I

    iget v3, v0, Lיי/ᵎﹶ;->ʼˎ:I

    if-le v3, v2, :cond_14

    sub-int v2, v3, v2

    sub-int/2addr v3, v2

    iput v3, v0, Lיי/ᵎﹶ;->ʼˎ:I

    iget v3, v1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :cond_14
    iput v15, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto/16 :goto_0

    :pswitch_3
    move/from16 v28, v3

    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v3, v0, Lיי/ᵎﹶ;->ˉˆ:I

    invoke-virtual {v0, v1, v2, v3}, Lיי/ᵎﹶ;->ﹳٴ(Lᐧˎ/ﹳᐧ;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v2}, Lˊﾞ/ﹳٴ;->ﾞʻ([B)Lʻᴵ/ʻٴ;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v2, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    invoke-virtual {v2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v4

    if-nez v4, :cond_15

    const/16 v4, 0x10

    move/from16 v5, v27

    goto :goto_c

    :cond_15
    const/16 v4, 0x14

    const/16 v5, 0xc

    :goto_c
    invoke-virtual {v2, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v2, v4}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v5

    add-int/lit8 v36, v5, 0x1

    invoke-virtual {v2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v2, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v9

    add-int/2addr v9, v14

    const/16 v11, 0x200

    mul-int/2addr v9, v11

    invoke-virtual {v2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v11

    if-eqz v11, :cond_16

    const/16 v11, 0x24

    invoke-virtual {v2, v11}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_16
    invoke-virtual {v2, v7}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v11

    add-int/2addr v11, v14

    invoke-virtual {v2, v7}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v7

    add-int/2addr v7, v14

    if-ne v11, v14, :cond_19

    if-ne v7, v14, :cond_19

    add-int/2addr v3, v14

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v7

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v3, :cond_18

    shr-int v13, v7, v11

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_17

    move/from16 v13, v27

    invoke-virtual {v2, v13}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_17
    add-int/lit8 v11, v11, 0x1

    const/16 v27, 0x8

    goto :goto_d

    :cond_18
    invoke-virtual {v2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2, v12}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v2, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    add-int/2addr v3, v14

    shl-int/2addr v3, v12

    invoke-virtual {v2, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v7

    add-int/2addr v7, v14

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v7, :cond_1b

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_19
    const-string v1, "Multiple audio presentations or assets not supported"

    invoke-static {v1}, Landroidx/media3/common/ParserException;->ʽ(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v6, -0x1

    const/4 v9, 0x0

    :cond_1b
    invoke-virtual {v2, v4}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    if-eqz v5, :cond_1f

    invoke-virtual {v2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v3

    if-eqz v3, :cond_1c

    move/from16 v3, v28

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_1c
    invoke-virtual {v2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_1d
    invoke-virtual {v2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ʼʼ(I)V

    :cond_1e
    invoke-virtual {v2, v15}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    sget-object v3, Lˊﾞ/ﹳٴ;->ˉʿ:[I

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v4

    aget v3, v3, v4

    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    add-int/2addr v2, v14

    move/from16 v34, v2

    move/from16 v35, v3

    goto :goto_f

    :cond_1f
    const/16 v34, -0x1

    const v35, -0x7fffffff

    :goto_f
    if-eqz v5, :cond_23

    if-eqz v6, :cond_22

    if-eq v6, v14, :cond_21

    if-ne v6, v12, :cond_20

    const v8, 0xbb80

    goto :goto_10

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported reference clock code in DTS HD header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_21
    const v8, 0xac44

    goto :goto_10

    :cond_22
    const/16 v8, 0x7d00

    :goto_10
    int-to-long v2, v9

    int-to-long v4, v8

    sget-object v6, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v26, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v22, 0xf4240

    move-wide/from16 v20, v2

    move-wide/from16 v24, v4

    invoke-static/range {v20 .. v26}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    move-wide/from16 v37, v2

    goto :goto_11

    :cond_23
    move-wide/from16 v37, v18

    :goto_11
    new-instance v32, Lʼٴ/ˑﹳ;

    const-string v33, "audio/vnd.dts.hd;profile=lbr"

    invoke-direct/range {v32 .. v38}, Lʼٴ/ˑﹳ;-><init>(Ljava/lang/String;IIIJ)V

    move-object/from16 v2, v32

    move/from16 v5, v36

    invoke-virtual {v0, v2}, Lיי/ᵎﹶ;->ᵎﹶ(Lʼٴ/ˑﹳ;)V

    iput v5, v0, Lיי/ᵎﹶ;->ˉʿ:I

    cmp-long v2, v37, v18

    if-nez v2, :cond_24

    const-wide/16 v5, 0x0

    goto :goto_12

    :cond_24
    move-wide/from16 v5, v37

    :goto_12
    iput-wide v5, v0, Lיי/ᵎﹶ;->ٴﹶ:J

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v2, v0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    iget v3, v0, Lיי/ᵎﹶ;->ˉˆ:I

    invoke-interface {v2, v3, v10}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    const/4 v2, 0x6

    iput v2, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lיי/ᵎﹶ;->ﹳٴ(Lᐧˎ/ﹳᐧ;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v2}, Lˊﾞ/ﹳٴ;->ﾞʻ([B)Lʻᴵ/ʻٴ;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v2}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v3

    if-eqz v3, :cond_25

    const/16 v3, 0xc

    goto :goto_13

    :cond_25
    const/16 v3, 0x8

    :goto_13
    invoke-virtual {v2, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    add-int/2addr v2, v14

    iput v2, v0, Lיי/ᵎﹶ;->ˉˆ:I

    const/4 v2, 0x3

    iput v2, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lיי/ᵎﹶ;->ﹳٴ(Lᐧˎ/ﹳᐧ;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget-object v4, v0, Lיי/ᵎﹶ;->ﾞʻ:Lʽⁱ/ﹳᐧ;

    const/16 v5, 0x3c

    if-nez v4, :cond_28

    iget-object v4, v0, Lיי/ᵎﹶ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v2}, Lˊﾞ/ﹳٴ;->ﾞʻ([B)Lʻᴵ/ʻٴ;

    move-result-object v7

    invoke-virtual {v7, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v11

    sget-object v9, Lˊﾞ/ﹳٴ;->ˆʾ:[I

    aget v9, v9, v11

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v13

    sget-object v11, Lˊﾞ/ﹳٴ;->ٴﹶ:[I

    aget v11, v11, v13

    invoke-virtual {v7, v15}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v13

    sget-object v16, Lˊﾞ/ﹳٴ;->ﾞʻ:[I

    move/from16 v17, v5

    const/16 v5, 0x1d

    if-lt v13, v5, :cond_26

    const/4 v5, -0x1

    :goto_14
    const/16 v13, 0xa

    goto :goto_15

    :cond_26
    aget v5, v16, v13

    mul-int/lit16 v5, v5, 0x3e8

    div-int/2addr v5, v12

    goto :goto_14

    :goto_15
    invoke-virtual {v7, v13}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v7, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v7

    if-lez v7, :cond_27

    move v7, v14

    goto :goto_16

    :cond_27
    const/4 v7, 0x0

    :goto_16
    add-int/2addr v9, v7

    new-instance v7, Lʽⁱ/ᵔﹳ;

    invoke-direct {v7}, Lʽⁱ/ᵔﹳ;-><init>()V

    iput-object v4, v7, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v4, v0, Lיי/ᵎﹶ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v4}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v4, "audio/vnd.dts"

    invoke-static {v4}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v5, v7, Lʽⁱ/ᵔﹳ;->ᵔᵢ:I

    iput v9, v7, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iput v11, v7, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iput-object v8, v7, Lʽⁱ/ᵔﹳ;->ᵔﹳ:Lʽⁱ/ᵔʾ;

    iget-object v4, v0, Lיי/ᵎﹶ;->ʽ:Ljava/lang/String;

    iput-object v4, v7, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v4, v0, Lיי/ᵎﹶ;->ˈ:I

    iput v4, v7, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    new-instance v4, Lʽⁱ/ﹳᐧ;

    invoke-direct {v4, v7}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object v4, v0, Lיי/ᵎﹶ;->ﾞʻ:Lʽⁱ/ﹳᐧ;

    iget-object v5, v0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    invoke-interface {v5, v4}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    :goto_17
    const/16 v30, 0x0

    goto :goto_18

    :cond_28
    move/from16 v17, v5

    goto :goto_17

    :goto_18
    aget-byte v4, v2, v30

    const/16 v5, 0x1f

    const/4 v7, -0x2

    if-eq v4, v7, :cond_2b

    const/4 v8, -0x1

    if-eq v4, v8, :cond_2a

    if-eq v4, v5, :cond_29

    aget-byte v8, v2, v15

    const/16 v31, 0x3

    and-int/lit8 v8, v8, 0x3

    const/16 v26, 0xc

    shl-int/lit8 v8, v8, 0xc

    const/16 v29, 0x6

    aget-byte v9, v2, v29

    and-int/lit16 v9, v9, 0xff

    const/16 v28, 0x4

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    const/16 v24, 0x7

    aget-byte v9, v2, v24

    :goto_19
    and-int/lit16 v9, v9, 0xf0

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    add-int/2addr v8, v14

    const/4 v9, 0x0

    goto :goto_1b

    :cond_29
    const/16 v24, 0x7

    const/16 v28, 0x4

    const/16 v29, 0x6

    aget-byte v8, v2, v29

    const/16 v31, 0x3

    and-int/lit8 v8, v8, 0x3

    const/16 v26, 0xc

    shl-int/lit8 v8, v8, 0xc

    aget-byte v9, v2, v24

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    const/16 v27, 0x8

    aget-byte v9, v2, v27

    :goto_1a
    and-int/lit8 v9, v9, 0x3c

    shr-int/2addr v9, v12

    or-int/2addr v8, v9

    add-int/2addr v8, v14

    move v9, v14

    goto :goto_1b

    :cond_2a
    const/16 v24, 0x7

    aget-byte v8, v2, v24

    const/16 v31, 0x3

    and-int/lit8 v8, v8, 0x3

    const/16 v26, 0xc

    shl-int/lit8 v8, v8, 0xc

    const/16 v29, 0x6

    aget-byte v9, v2, v29

    and-int/lit16 v9, v9, 0xff

    const/16 v28, 0x4

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    const/16 v9, 0x9

    aget-byte v9, v2, v9

    goto :goto_1a

    :cond_2b
    const/16 v28, 0x4

    aget-byte v8, v2, v28

    const/16 v31, 0x3

    and-int/lit8 v8, v8, 0x3

    const/16 v26, 0xc

    shl-int/lit8 v8, v8, 0xc

    const/16 v24, 0x7

    aget-byte v9, v2, v24

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    const/16 v29, 0x6

    aget-byte v9, v2, v29

    goto :goto_19

    :goto_1b
    if-eqz v9, :cond_2c

    mul-int/lit8 v8, v8, 0x10

    div-int/lit8 v8, v8, 0xe

    :cond_2c
    iput v8, v0, Lיי/ᵎﹶ;->ˉʿ:I

    if-eq v4, v7, :cond_2f

    const/4 v8, -0x1

    if-eq v4, v8, :cond_2e

    if-eq v4, v5, :cond_2d

    const/16 v28, 0x4

    aget-byte v4, v2, v28

    and-int/2addr v4, v14

    const/16 v29, 0x6

    shl-int/lit8 v4, v4, 0x6

    aget-byte v2, v2, v15

    :goto_1c
    and-int/lit16 v2, v2, 0xfc

    :goto_1d
    shr-int/2addr v2, v12

    or-int/2addr v2, v4

    goto :goto_1f

    :cond_2d
    const/16 v28, 0x4

    const/16 v29, 0x6

    aget-byte v4, v2, v15

    const/16 v24, 0x7

    and-int/lit8 v4, v4, 0x7

    shl-int/lit8 v4, v4, 0x4

    aget-byte v2, v2, v29

    :goto_1e
    and-int/lit8 v2, v2, 0x3c

    goto :goto_1d

    :cond_2e
    const/16 v24, 0x7

    const/16 v28, 0x4

    aget-byte v4, v2, v28

    and-int/lit8 v4, v4, 0x7

    shl-int/lit8 v4, v4, 0x4

    aget-byte v2, v2, v24

    goto :goto_1e

    :cond_2f
    const/16 v28, 0x4

    aget-byte v4, v2, v15

    and-int/2addr v4, v14

    const/16 v29, 0x6

    shl-int/lit8 v4, v4, 0x6

    aget-byte v2, v2, v28

    goto :goto_1c

    :goto_1f
    add-int/2addr v2, v14

    mul-int/2addr v2, v6

    int-to-long v4, v2

    iget-object v2, v0, Lיי/ᵎﹶ;->ﾞʻ:Lʽⁱ/ﹳᐧ;

    iget v2, v2, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    invoke-static {v2, v4, v5}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lיי/ᵎﹶ;->ٴﹶ:J

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v2, v0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    invoke-interface {v2, v3, v10}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    const/4 v2, 0x6

    iput v2, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_30
    :pswitch_6
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Lיי/ᵎﹶ;->ˆʾ:I

    const/16 v27, 0x8

    shl-int/lit8 v2, v2, 0x8

    iput v2, v0, Lיי/ᵎﹶ;->ˆʾ:I

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Lיי/ᵎﹶ;->ˆʾ:I

    const v3, 0x7ffe8001

    if-eq v2, v3, :cond_38

    const v3, -0x180fe80

    if-eq v2, v3, :cond_38

    const v3, 0x1fffe800

    if-eq v2, v3, :cond_38

    const v3, -0xe0ff18

    if-ne v2, v3, :cond_31

    goto :goto_23

    :cond_31
    const v3, 0x64582025

    if-eq v2, v3, :cond_37

    const v3, 0x25205864

    if-ne v2, v3, :cond_32

    goto :goto_22

    :cond_32
    if-eq v2, v13, :cond_36

    const v3, -0xde4bec0

    if-ne v2, v3, :cond_33

    goto :goto_21

    :cond_33
    const v3, 0x71c442e8

    if-eq v2, v3, :cond_35

    const v3, -0x17bd3b8f

    if-ne v2, v3, :cond_34

    goto :goto_20

    :cond_34
    const/4 v3, 0x0

    goto :goto_24

    :cond_35
    :goto_20
    const/4 v3, 0x4

    goto :goto_24

    :cond_36
    :goto_21
    const/4 v3, 0x3

    goto :goto_24

    :cond_37
    :goto_22
    move v3, v12

    goto :goto_24

    :cond_38
    :goto_23
    move v3, v14

    :goto_24
    iput v3, v0, Lיי/ᵎﹶ;->ᵔʾ:I

    if-eqz v3, :cond_30

    iget-object v4, v10, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/16 v30, 0x0

    aput-byte v5, v4, v30

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v14

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v12

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v7, 0x3

    aput-byte v2, v4, v7

    const/4 v4, 0x4

    iput v4, v0, Lיי/ᵎﹶ;->ʼˎ:I

    const/4 v2, 0x0

    iput v2, v0, Lיי/ᵎﹶ;->ˆʾ:I

    if-eq v3, v7, :cond_3b

    if-ne v3, v4, :cond_39

    goto :goto_25

    :cond_39
    if-ne v3, v14, :cond_3a

    iput v14, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_3a
    iput v12, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_3b
    :goto_25
    iput v4, v0, Lיי/ᵎﹶ;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_3c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Z)V
    .locals 0

    return-void
.end method

.method public final ˑﹳ(IJ)V
    .locals 0

    iput-wide p2, p0, Lיי/ᵎﹶ;->ᵔﹳ:J

    return-void
.end method

.method public final ᵎﹶ(Lʼٴ/ˑﹳ;)V
    .locals 4

    .prologue
    iget v0, p1, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iget-object v1, p1, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    iget p1, p1, Lʼٴ/ˑﹳ;->ⁱˊ:I

    const v2, -0x7fffffff

    if-eq v0, v2, :cond_3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lיי/ᵎﹶ;->ﾞʻ:Lʽⁱ/ﹳᐧ;

    if-eqz v2, :cond_1

    iget v3, v2, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-ne p1, v3, :cond_1

    iget v3, v2, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-ne v0, v3, :cond_1

    iget-object v2, v2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lיי/ᵎﹶ;->ﾞʻ:Lʽⁱ/ﹳᐧ;

    if-nez v2, :cond_2

    new-instance v2, Lʽⁱ/ᵔﹳ;

    invoke-direct {v2}, Lʽⁱ/ᵔﹳ;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lיי/ᵎﹶ;->ﾞᴵ:Ljava/lang/String;

    iput-object v3, v2, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p0, Lיי/ᵎﹶ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v3}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput p1, v2, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iput v0, v2, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iget-object p1, p0, Lיי/ᵎﹶ;->ʽ:Ljava/lang/String;

    iput-object p1, v2, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget p1, p0, Lיי/ᵎﹶ;->ˈ:I

    iput p1, v2, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, v2}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object p1, p0, Lיי/ᵎﹶ;->ﾞʻ:Lʽⁱ/ﹳᐧ;

    iget-object v0, p0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    invoke-interface {v0, p1}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final ⁱˊ()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lיי/ᵎﹶ;->ᵔᵢ:I

    iput v0, p0, Lיי/ᵎﹶ;->ʼˎ:I

    iput v0, p0, Lיי/ᵎﹶ;->ˆʾ:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lיי/ᵎﹶ;->ᵔﹳ:J

    iget-object v1, p0, Lיי/ᵎﹶ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;[BI)Z
    .locals 2

    .prologue
    invoke-virtual {p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    iget v1, p0, Lיי/ᵎﹶ;->ʼˎ:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lיי/ᵎﹶ;->ʼˎ:I

    invoke-virtual {p1, p2, v1, v0}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget p1, p0, Lיי/ᵎﹶ;->ʼˎ:I

    add-int/2addr p1, v0

    iput p1, p0, Lיי/ᵎﹶ;->ʼˎ:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V
    .locals 1

    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object v0, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object v0, p0, Lיי/ᵎﹶ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget p2, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lיי/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ٴᵢ;

    return-void
.end method
