.class public final Lـʻ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# static fields
.field public static final ˏי:[B

.field public static final יـ:[B

.field public static final ᵔﹳ:[I

.field public static final ﹳᐧ:[I


# instance fields
.field public ʼˎ:J

.field public ʼᐧ:Z

.field public ʽ:Z

.field public ˆʾ:Lˊﾞ/ᵔﹳ;

.field public ˈ:J

.field public ˉʿ:Lˊﾞ/ʾˋ;

.field public ˉˆ:J

.field public ˑﹳ:I

.field public ٴﹶ:Lˊﾞ/ٴᵢ;

.field public ᵎﹶ:I

.field public ᵔʾ:Z

.field public ᵔᵢ:I

.field public final ⁱˊ:Lˊﾞ/ᵔʾ;

.field public final ﹳٴ:[B

.field public ﾞʻ:Lˊﾞ/ٴᵢ;

.field public ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lـʻ/ﹳٴ;->ᵔﹳ:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lـʻ/ﹳٴ;->ﹳᐧ:[I

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "#!AMR\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lـʻ/ﹳٴ;->יـ:[B

    const-string v1, "#!AMR-WB\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lـʻ/ﹳٴ;->ˏי:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lـʻ/ﹳٴ;->ﹳٴ:[B

    const/4 v0, -0x1

    iput v0, p0, Lـʻ/ﹳٴ;->ᵎﹶ:I

    new-instance v0, Lˊﾞ/ᵔʾ;

    invoke-direct {v0}, Lˊﾞ/ᵔʾ;-><init>()V

    iput-object v0, p0, Lـʻ/ﹳٴ;->ⁱˊ:Lˊﾞ/ᵔʾ;

    iput-object v0, p0, Lـʻ/ﹳٴ;->ﾞʻ:Lˊﾞ/ٴᵢ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 2

    iput-object p1, p0, Lـʻ/ﹳٴ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v0

    iput-object v0, p0, Lـʻ/ﹳٴ;->ٴﹶ:Lˊﾞ/ٴᵢ;

    iput-object v0, p0, Lـʻ/ﹳٴ;->ﾞʻ:Lˊﾞ/ٴᵢ;

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    return-void
.end method

.method public final ʽ(Lˊﾞ/ʼᐧ;)I
    .locals 3

    .prologue
    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    const/4 v0, 0x1

    iget-object v1, p0, Lـʻ/ﹳٴ;->ﹳٴ:[B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 v0, p1, 0x83

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    shr-int/lit8 p1, p1, 0x3

    const/16 v0, 0xf

    and-int/2addr p1, v0

    if-ltz p1, :cond_3

    if-gt p1, v0, :cond_3

    iget-boolean v0, p0, Lـʻ/ﹳٴ;->ʽ:Z

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    const/16 v2, 0xd

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    const/16 v2, 0xc

    if-lt p1, v2, :cond_1

    const/16 v2, 0xe

    if-le p1, v2, :cond_3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lـʻ/ﹳٴ;->ﹳᐧ:[I

    aget p1, v0, p1

    return p1

    :cond_2
    sget-object v0, Lـʻ/ﹳٴ;->ᵔﹳ:[I

    aget p1, v0, p1

    return p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Illegal AMR "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lـʻ/ﹳٴ;->ʽ:Z

    if-eqz v2, :cond_4

    const-string v2, "WB"

    goto :goto_1

    :cond_4
    const-string v2, "NB"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " frame type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid padding bits for frame header "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ˑﹳ(Lˊﾞ/ʼᐧ;)Z
    .locals 5

    .prologue
    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    sget-object v0, Lـʻ/ﹳٴ;->יـ:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lـʻ/ﹳٴ;->ʽ:Z

    array-length v0, v0

    invoke-interface {p1, v0}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    return v2

    :cond_0
    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    sget-object v0, Lـʻ/ﹳٴ;->ˏי:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v4, v0

    invoke-interface {p1, v1, v3, v4}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lـʻ/ﹳٴ;->ʽ:Z

    array-length v0, v0

    invoke-interface {p1, v0}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    return v2

    :cond_1
    return v3
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lـʻ/ﹳٴ;->ٴﹶ:Lˊﾞ/ٴᵢ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lـʻ/ﹳٴ;->ˑﹳ(Lˊﾞ/ʼᐧ;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Could not find AMR header."

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lـʻ/ﹳٴ;->ʼᐧ:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iput-boolean v2, v0, Lـʻ/ﹳٴ;->ʼᐧ:Z

    iget-boolean v1, v0, Lـʻ/ﹳٴ;->ʽ:Z

    const-string v5, "audio/amr-wb"

    if-eqz v1, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    const-string v6, "audio/amr"

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "audio/3gpp"

    :goto_2
    if-eqz v1, :cond_4

    const/16 v7, 0x3e80

    goto :goto_3

    :cond_4
    const/16 v7, 0x1f40

    :goto_3
    if-eqz v1, :cond_5

    sget-object v1, Lـʻ/ﹳٴ;->ﹳᐧ:[I

    const/16 v8, 0x8

    aget v1, v1, v8

    goto :goto_4

    :cond_5
    sget-object v1, Lـʻ/ﹳٴ;->ᵔﹳ:[I

    const/4 v8, 0x7

    aget v1, v1, v8

    :goto_4
    iget-object v8, v0, Lـʻ/ﹳٴ;->ٴﹶ:Lˊﾞ/ٴᵢ;

    new-instance v9, Lʽⁱ/ᵔﹳ;

    invoke-direct {v9}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-static {v6}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v1, v9, Lʽⁱ/ᵔﹳ;->ᵔʾ:I

    iput v2, v9, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iput v7, v9, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    invoke-static {v9, v8}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    :cond_6
    iget v1, v0, Lـʻ/ﹳٴ;->ﾞᴵ:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x4e20

    const/4 v8, -0x1

    if-nez v1, :cond_c

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lـʻ/ﹳٴ;->ʽ(Lˊﾞ/ʼᐧ;)I

    move-result v1

    iput v1, v0, Lـʻ/ﹳٴ;->ˑﹳ:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, v0, Lـʻ/ﹳٴ;->ﾞᴵ:I

    iget v1, v0, Lـʻ/ﹳٴ;->ᵎﹶ:I

    if-ne v1, v8, :cond_7

    invoke-interface/range {p1 .. p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    iget v1, v0, Lـʻ/ﹳٴ;->ˑﹳ:I

    iput v1, v0, Lـʻ/ﹳٴ;->ᵎﹶ:I

    :cond_7
    iget v1, v0, Lـʻ/ﹳٴ;->ᵎﹶ:I

    iget v9, v0, Lـʻ/ﹳٴ;->ˑﹳ:I

    if-ne v1, v9, :cond_8

    iget v1, v0, Lـʻ/ﹳٴ;->ᵔᵢ:I

    add-int/2addr v1, v2

    iput v1, v0, Lـʻ/ﹳٴ;->ᵔᵢ:I

    :cond_8
    iget-object v1, v0, Lـʻ/ﹳٴ;->ˉʿ:Lˊﾞ/ʾˋ;

    instance-of v9, v1, Lˊﾞ/ʾᵎ;

    if-eqz v9, :cond_c

    check-cast v1, Lˊﾞ/ʾᵎ;

    iget-wide v9, v0, Lـʻ/ﹳٴ;->ʼˎ:J

    iget-wide v11, v0, Lـʻ/ﹳٴ;->ˈ:J

    add-long/2addr v9, v11

    add-long/2addr v9, v6

    invoke-interface/range {p1 .. p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v11

    iget v13, v0, Lـʻ/ﹳٴ;->ˑﹳ:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    iget-object v13, v1, Lˊﾞ/ʾᵎ;->ⁱˊ:Lʼٴ/ʾᵎ;

    iget v14, v13, Lʼٴ/ʾᵎ;->ᴵˊ:I

    if-nez v14, :cond_9

    goto :goto_5

    :cond_9
    sub-int/2addr v14, v2

    invoke-virtual {v13, v14}, Lʼٴ/ʾᵎ;->ٴﹶ(I)J

    move-result-wide v13

    sub-long v13, v9, v13

    const-wide/32 v15, 0x186a0

    cmp-long v13, v13, v15

    if-gez v13, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    iget-object v13, v1, Lˊﾞ/ʾᵎ;->ﹳٴ:Lʼٴ/ʾᵎ;

    iget-object v1, v1, Lˊﾞ/ʾᵎ;->ⁱˊ:Lʼٴ/ʾᵎ;

    iget v14, v1, Lʼٴ/ʾᵎ;->ᴵˊ:I

    if-nez v14, :cond_b

    cmp-long v14, v9, v3

    if-lez v14, :cond_b

    invoke-virtual {v13, v3, v4}, Lʼٴ/ʾᵎ;->ⁱˊ(J)V

    invoke-virtual {v1, v3, v4}, Lʼٴ/ʾᵎ;->ⁱˊ(J)V

    :cond_b
    invoke-virtual {v13, v11, v12}, Lʼٴ/ʾᵎ;->ⁱˊ(J)V

    invoke-virtual {v1, v9, v10}, Lʼٴ/ʾᵎ;->ⁱˊ(J)V

    :goto_6
    iget-boolean v1, v0, Lـʻ/ﹳٴ;->ᵔʾ:Z

    if-eqz v1, :cond_c

    iget-wide v3, v0, Lـʻ/ﹳٴ;->ˉˆ:J

    sub-long/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v1, v3, v6

    if-gez v1, :cond_c

    iput-boolean v5, v0, Lـʻ/ﹳٴ;->ᵔʾ:Z

    iget-object v1, v0, Lـʻ/ﹳٴ;->ٴﹶ:Lˊﾞ/ٴᵢ;

    iput-object v1, v0, Lـʻ/ﹳٴ;->ﾞʻ:Lˊﾞ/ٴᵢ;

    goto :goto_8

    :catch_0
    move-object/from16 v4, p1

    :goto_7
    move v5, v8

    goto :goto_9

    :cond_c
    :goto_8
    iget-object v1, v0, Lـʻ/ﹳٴ;->ﾞʻ:Lˊﾞ/ٴᵢ;

    iget v3, v0, Lـʻ/ﹳٴ;->ﾞᴵ:I

    move-object/from16 v4, p1

    invoke-interface {v1, v4, v3, v2}, Lˊﾞ/ٴᵢ;->ʽ(Lʽⁱ/ˆʾ;IZ)I

    move-result v1

    if-ne v1, v8, :cond_d

    goto :goto_7

    :cond_d
    iget v2, v0, Lـʻ/ﹳٴ;->ﾞᴵ:I

    sub-int/2addr v2, v1

    iput v2, v0, Lـʻ/ﹳٴ;->ﾞᴵ:I

    if-lez v2, :cond_e

    goto :goto_9

    :cond_e
    iget-object v9, v0, Lـʻ/ﹳٴ;->ﾞʻ:Lˊﾞ/ٴᵢ;

    iget-wide v1, v0, Lـʻ/ﹳٴ;->ʼˎ:J

    iget-wide v10, v0, Lـʻ/ﹳٴ;->ˈ:J

    add-long/2addr v10, v1

    iget v13, v0, Lـʻ/ﹳٴ;->ˑﹳ:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    invoke-interface/range {v9 .. v15}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget-wide v1, v0, Lـʻ/ﹳٴ;->ˈ:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Lـʻ/ﹳٴ;->ˈ:J

    :goto_9
    invoke-interface {v4}, Lˊﾞ/ʼᐧ;->getLength()J

    iget-object v1, v0, Lـʻ/ﹳٴ;->ˉʿ:Lˊﾞ/ʾˋ;

    if-eqz v1, :cond_f

    goto :goto_a

    :cond_f
    new-instance v1, Lˊﾞ/יـ;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lˊﾞ/יـ;-><init>(J)V

    iput-object v1, v0, Lـʻ/ﹳٴ;->ˉʿ:Lˊﾞ/ʾˋ;

    iget-object v2, v0, Lـʻ/ﹳٴ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v2, v1}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    :goto_a
    if-ne v5, v8, :cond_10

    iget-object v1, v0, Lـʻ/ﹳٴ;->ˉʿ:Lˊﾞ/ʾˋ;

    instance-of v2, v1, Lˊﾞ/ʾᵎ;

    if-eqz v2, :cond_10

    iget-wide v2, v0, Lـʻ/ﹳٴ;->ʼˎ:J

    iget-wide v6, v0, Lـʻ/ﹳٴ;->ˈ:J

    add-long/2addr v2, v6

    move-object v4, v1

    check-cast v4, Lˊﾞ/ʾᵎ;

    iput-wide v2, v4, Lˊﾞ/ʾᵎ;->ʽ:J

    iget-object v2, v0, Lـʻ/ﹳٴ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v2, v1}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iget-object v1, v0, Lـʻ/ﹳٴ;->ٴﹶ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_10
    return v5
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lـʻ/ﹳٴ;->ˈ:J

    const/4 v2, 0x0

    iput v2, p0, Lـʻ/ﹳٴ;->ˑﹳ:I

    iput v2, p0, Lـʻ/ﹳٴ;->ﾞᴵ:I

    iput-wide p3, p0, Lـʻ/ﹳٴ;->ˉˆ:J

    iget-object p3, p0, Lـʻ/ﹳٴ;->ˉʿ:Lˊﾞ/ʾˋ;

    instance-of p4, p3, Lˊﾞ/ʾᵎ;

    if-eqz p4, :cond_2

    check-cast p3, Lˊﾞ/ʾᵎ;

    iget-object p4, p3, Lˊﾞ/ʾᵎ;->ⁱˊ:Lʼٴ/ʾᵎ;

    iget v0, p4, Lʼٴ/ʾᵎ;->ᴵˊ:I

    if-nez v0, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lˊﾞ/ʾᵎ;->ﹳٴ:Lʼٴ/ʾᵎ;

    invoke-static {p3, p1, p2}, Lᐧˎ/ʼʼ;->ʽ(Lʼٴ/ʾᵎ;J)I

    move-result p1

    invoke-virtual {p4, p1}, Lʼٴ/ʾᵎ;->ٴﹶ(I)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lـʻ/ﹳٴ;->ʼˎ:J

    iget-wide p3, p0, Lـʻ/ﹳٴ;->ˉˆ:J

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 p3, 0x4e20

    cmp-long p1, p1, p3

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lـʻ/ﹳٴ;->ᵔʾ:Z

    iget-object p1, p0, Lـʻ/ﹳٴ;->ⁱˊ:Lˊﾞ/ᵔʾ;

    iput-object p1, p0, Lـʻ/ﹳٴ;->ﾞʻ:Lˊﾞ/ٴᵢ;

    return-void

    :cond_2
    cmp-long p4, p1, v0

    if-eqz p4, :cond_3

    instance-of p4, p3, Lˎʼ/ﹳٴ;

    if-eqz p4, :cond_3

    check-cast p3, Lˎʼ/ﹳٴ;

    iget-wide v2, p3, Lˎʼ/ﹳٴ;->ⁱˊ:J

    iget p3, p3, Lˎʼ/ﹳٴ;->ˑﹳ:I

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x7a1200

    mul-long/2addr p1, v0

    int-to-long p3, p3

    div-long/2addr p1, p3

    iput-wide p1, p0, Lـʻ/ﹳٴ;->ʼˎ:J

    return-void

    :cond_3
    iput-wide v0, p0, Lـʻ/ﹳٴ;->ʼˎ:J

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lـʻ/ﹳٴ;->ˑﹳ(Lˊﾞ/ʼᐧ;)Z

    move-result p1

    return p1
.end method
