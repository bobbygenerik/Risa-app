.class public final Lᐧˊ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final ʽʽ:J

.field public static final synthetic ˈٴ:I

.field public static final ᴵˊ:J


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lᐧˊ/ⁱˊ;->ﹳٴ:I

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lﹳٴ/ﹳٴ;->ʼᐧ(J)J

    move-result-wide v0

    sput-wide v0, Lᐧˊ/ﹳٴ;->ᴵˊ:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lﹳٴ/ﹳٴ;->ʼᐧ(J)J

    move-result-wide v0

    sput-wide v0, Lᐧˊ/ﹳٴ;->ʽʽ:J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lᐧˊ/ﹳٴ;->ʾˋ:J

    return-void
.end method

.method public static ʽ(JJ)I
    .locals 5

    .prologue
    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int p2, p2

    and-int/lit8 p2, p2, 0x1

    sub-int/2addr v0, p2

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    neg-int p0, v0

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lˊʼ/ˆʾ;->ˑﹳ(JJ)I

    move-result p0

    return p0
.end method

.method public static final ˈ(J)Z
    .locals 2

    .prologue
    sget-wide v0, Lᐧˊ/ﹳٴ;->ᴵˊ:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lᐧˊ/ﹳٴ;->ʽʽ:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final ˑﹳ(JLᐧˊ/ʽ;)J
    .locals 3

    .prologue
    sget-wide v0, Lᐧˊ/ﹳٴ;->ᴵˊ:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    sget-wide v0, Lᐧˊ/ﹳٴ;->ʽʽ:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    const/4 v0, 0x1

    shr-long v1, p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    sget-object p0, Lᐧˊ/ʽ;->ᴵˊ:Lᐧˊ/ʽ;

    goto :goto_0

    :cond_2
    sget-object p0, Lᐧˊ/ʽ;->ʽʽ:Lᐧˊ/ʽ;

    :goto_0
    iget-object p1, p2, Lᐧˊ/ʽ;->ʾˋ:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lᐧˊ/ʽ;->ʾˋ:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final ⁱˊ(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 3

    .prologue
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lﹶˑ/ˆʾ;->ˑ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, -0x1

    add-int/2addr p2, p3

    if-ltz p2, :cond_2

    :goto_0
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    move p3, p2

    goto :goto_1

    :cond_0
    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p2, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p5, :cond_3

    if-ge p2, v1, :cond_3

    invoke-virtual {p0, p1, v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    add-int/2addr p3, v1

    div-int/2addr p3, v1

    mul-int/2addr p3, v1

    invoke-virtual {p0, p1, v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final ﹳٴ(JJ)J
    .locals 10

    .prologue
    const v0, 0xf4240

    int-to-long v0, v0

    div-long v2, p2, v0

    add-long v4, p0, v2

    const-wide p0, -0x431bde82d7aL

    cmp-long p0, p0, v4

    if-gtz p0, :cond_0

    const-wide p0, 0x431bde82d7bL

    cmp-long p0, v4, p0

    if-gez p0, :cond_0

    mul-long/2addr v2, v0

    sub-long/2addr p2, v2

    mul-long/2addr v4, v0

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Lﹳٴ/ﹳٴ;->ᵔﹳ(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide v6, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v4 .. v9}, Lˈˊ/ˉˆ;->ˆʾ(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lﹳٴ/ﹳٴ;->ʼᐧ(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lᐧˊ/ﹳٴ;

    iget-wide v0, p1, Lᐧˊ/ﹳٴ;->ʾˋ:J

    iget-wide v2, p0, Lᐧˊ/ﹳٴ;->ʾˋ:J

    invoke-static {v2, v3, v0, v1}, Lᐧˊ/ﹳٴ;->ʽ(JJ)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    instance-of v0, p1, Lᐧˊ/ﹳٴ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lᐧˊ/ﹳٴ;

    iget-wide v0, p1, Lᐧˊ/ﹳٴ;->ʾˋ:J

    iget-wide v2, p0, Lᐧˊ/ﹳٴ;->ʾˋ:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x20

    iget-wide v1, p0, Lᐧˊ/ﹳٴ;->ʾˋ:J

    ushr-long v3, v1, v0

    xor-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-wide v1, v0, Lᐧˊ/ﹳٴ;->ʾˋ:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "0s"

    return-object v1

    :cond_0
    sget-wide v6, Lᐧˊ/ﹳٴ;->ᴵˊ:J

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    const-string v1, "Infinity"

    return-object v1

    :cond_1
    sget-wide v6, Lᐧˊ/ﹳٴ;->ʽʽ:J

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    const-string v1, "-Infinity"

    return-object v1

    :cond_2
    const/4 v7, 0x1

    if-gez v5, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_4

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-gez v5, :cond_5

    shr-long v10, v1, v7

    neg-long v10, v10

    long-to-int v1, v1

    and-int/2addr v1, v7

    shl-long/2addr v10, v7

    int-to-long v1, v1

    add-long/2addr v1, v10

    sget v5, Lᐧˊ/ⁱˊ;->ﹳٴ:I

    :cond_5
    sget-object v5, Lᐧˊ/ʽ;->ٴᵢ:Lᐧˊ/ʽ;

    invoke-static {v1, v2, v5}, Lᐧˊ/ﹳٴ;->ˑﹳ(JLᐧˊ/ʽ;)J

    move-result-wide v10

    invoke-static {v1, v2}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    sget-object v5, Lᐧˊ/ʽ;->ˊʻ:Lᐧˊ/ʽ;

    invoke-static {v1, v2, v5}, Lᐧˊ/ﹳٴ;->ˑﹳ(JLᐧˊ/ʽ;)J

    move-result-wide v12

    const/16 v5, 0x18

    int-to-long v14, v5

    rem-long/2addr v12, v14

    long-to-int v5, v12

    :goto_1
    invoke-static {v1, v2}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v12

    const/16 v13, 0x3c

    if-eqz v12, :cond_7

    move-wide/from16 v16, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    sget-object v12, Lᐧˊ/ʽ;->ᴵᵔ:Lᐧˊ/ʽ;

    invoke-static {v1, v2, v12}, Lᐧˊ/ﹳٴ;->ˑﹳ(JLᐧˊ/ʽ;)J

    move-result-wide v14

    move-wide/from16 v16, v3

    int-to-long v3, v13

    rem-long/2addr v14, v3

    long-to-int v3, v14

    :goto_2
    invoke-static {v1, v2}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    sget-object v4, Lᐧˊ/ʽ;->ˈٴ:Lᐧˊ/ʽ;

    invoke-static {v1, v2, v4}, Lᐧˊ/ﹳٴ;->ˑﹳ(JLᐧˊ/ʽ;)J

    move-result-wide v14

    int-to-long v12, v13

    rem-long/2addr v14, v12

    long-to-int v4, v14

    :goto_3
    invoke-static {v1, v2}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v12

    const/16 v13, 0x3e8

    const v14, 0xf4240

    if-eqz v12, :cond_9

    move v15, v7

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    long-to-int v12, v1

    and-int/2addr v12, v7

    if-ne v12, v7, :cond_a

    shr-long/2addr v1, v7

    move v15, v7

    int-to-long v6, v13

    rem-long/2addr v1, v6

    int-to-long v6, v14

    mul-long/2addr v1, v6

    :goto_4
    long-to-int v1, v1

    goto :goto_5

    :cond_a
    move v15, v7

    shr-long/2addr v1, v15

    const v6, 0x3b9aca00

    int-to-long v6, v6

    rem-long/2addr v1, v6

    goto :goto_4

    :goto_5
    cmp-long v2, v10, v16

    if-eqz v2, :cond_b

    move v2, v15

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v5, :cond_c

    move v6, v15

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    if-eqz v3, :cond_d

    move v7, v15

    goto :goto_8

    :cond_d
    const/4 v7, 0x0

    :goto_8
    if-nez v4, :cond_f

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    const/16 v16, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    move/from16 v16, v15

    :goto_a
    if-eqz v2, :cond_10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v15

    goto :goto_b

    :cond_10
    const/4 v12, 0x0

    :goto_b
    const/16 v10, 0x20

    if-nez v6, :cond_11

    if-eqz v2, :cond_13

    if-nez v7, :cond_11

    if-eqz v16, :cond_13

    :cond_11
    add-int/lit8 v11, v12, 0x1

    if-lez v12, :cond_12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x68

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v11

    :cond_13
    if-nez v7, :cond_14

    if-eqz v16, :cond_16

    if-nez v6, :cond_14

    if-eqz v2, :cond_16

    :cond_14
    add-int/lit8 v5, v12, 0x1

    if-lez v12, :cond_15

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x6d

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v5

    :cond_16
    if-eqz v16, :cond_1c

    add-int/lit8 v3, v12, 0x1

    if-lez v12, :cond_17

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    if-nez v4, :cond_1b

    if-nez v2, :cond_1b

    if-nez v6, :cond_1b

    if-eqz v7, :cond_18

    goto :goto_c

    :cond_18
    if-lt v1, v14, :cond_19

    div-int v10, v1, v14

    rem-int v11, v1, v14

    const-string v13, "ms"

    const/4 v14, 0x0

    const/4 v12, 0x6

    invoke-static/range {v9 .. v14}, Lᐧˊ/ﹳٴ;->ⁱˊ(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_d

    :cond_19
    if-lt v1, v13, :cond_1a

    div-int/lit16 v10, v1, 0x3e8

    rem-int/lit16 v11, v1, 0x3e8

    const-string v13, "us"

    const/4 v14, 0x0

    const/4 v12, 0x3

    invoke-static/range {v9 .. v14}, Lᐧˊ/ﹳٴ;->ⁱˊ(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_d

    :cond_1a
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ns"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1b
    :goto_c
    const-string v13, "s"

    const/4 v14, 0x0

    const/16 v12, 0x9

    move v11, v1

    move v10, v4

    invoke-static/range {v9 .. v14}, Lᐧˊ/ﹳٴ;->ⁱˊ(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_d
    move v12, v3

    :cond_1c
    if-eqz v8, :cond_1d

    if-le v12, v15, :cond_1d

    const/16 v1, 0x28

    invoke-virtual {v9, v15, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
