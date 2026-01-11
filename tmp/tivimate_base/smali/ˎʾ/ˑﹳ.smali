.class public final Lˎʾ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʼˎ:I

.field public final ʽ:Ljava/lang/Object;

.field public ˆʾ:J

.field public ˈ:Ljava/lang/Object;

.field public ˑﹳ:Ljava/lang/Object;

.field public ᵎﹶ:J

.field public ᵔᵢ:I

.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˎʾ/ˑﹳ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    iput-wide p3, p0, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lˎʾ/ˑﹳ;->ˆʾ:J

    iput p5, p0, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    iput p6, p0, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    iput p7, p0, Lˎʾ/ˑﹳ;->ʼˎ:I

    iput-object p8, p0, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    iput-object p9, p0, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˈـ/ﾞʻ;I)V
    .locals 1

    .prologue
    iput p2, p0, Lˎʾ/ˑﹳ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lᐧˎ/ﹳᐧ;

    sget-object v0, Lʻᴵ/ﹳᐧ;->ﹳٴ:[B

    invoke-direct {p2, v0}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object p2, p0, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    iput-object p1, p0, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lᐧˎ/ﹳᐧ;

    invoke-direct {p2}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p2, p0, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    new-instance p2, Lᐧˎ/ﹳᐧ;

    sget-object v0, Lʻᴵ/ﹳᐧ;->ﹳٴ:[B

    invoke-direct {p2, v0}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    iput-object p2, p0, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    iput-object p1, p0, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final ˑﹳ(J)V
    .locals 0

    return-void
.end method

.method private final ﾞᴵ(J)V
    .locals 0

    return-void
.end method


# virtual methods
.method public ʽ(J)V
    .locals 0

    iget p1, p0, Lˎʾ/ˑﹳ;->ﹳٴ:I

    return-void
.end method

.method public ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 2

    .prologue
    iget v0, p0, Lˎʾ/ˑﹳ;->ﹳٴ:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1, p2, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    iget-object p2, p0, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    check-cast p2, Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void

    :pswitch_0
    invoke-interface {p1, p2, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-object p2, p0, Lˎʾ/ˑﹳ;->ˈ:Ljava/lang/Object;

    check-cast p2, Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ᵎﹶ()I
    .locals 3

    iget-object v0, p0, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﹳᐧ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    iget-object v2, p0, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Lˊﾞ/ٴᵢ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1, v0}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    return v1
.end method

.method public ᵔᵢ()I
    .locals 3

    iget-object v0, p0, Lˎʾ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﹳᐧ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    iget-object v2, p0, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Lˊﾞ/ٴᵢ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1, v0}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    return v1
.end method

.method public ⁱˊ(JJ)V
    .locals 1

    .prologue
    iget v0, p0, Lˎʾ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iput-wide p1, p0, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    const/4 p1, 0x0

    iput p1, p0, Lˎʾ/ˑﹳ;->ʼˎ:I

    iput-wide p3, p0, Lˎʾ/ˑﹳ;->ˆʾ:J

    return-void

    :pswitch_0
    iput-wide p1, p0, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    const/4 p1, 0x0

    iput p1, p0, Lˎʾ/ˑﹳ;->ʼˎ:I

    iput-wide p3, p0, Lˎʾ/ˑﹳ;->ˆʾ:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 20

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v5, p2

    move/from16 v9, p4

    iget v2, v1, Lˎʾ/ˑﹳ;->ﹳٴ:I

    const-string v7, ". Dropping packet."

    const-string v8, "; received: "

    const-string v10, "Received RTP packet with unexpected sequence number. Expected: "

    iget-object v11, v1, Lˎʾ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    array-length v3, v2

    if-eqz v3, :cond_15

    aget-byte v2, v2, v14

    shr-int/2addr v2, v15

    and-int/lit8 v2, v2, 0x3f

    iget-object v3, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lˊﾞ/ٴᵢ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    const/16 v3, 0x14

    const/16 v4, 0x13

    move/from16 v18, v14

    const/16 v14, 0x30

    if-ltz v2, :cond_2

    if-ge v2, v14, :cond_2

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    iget v7, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    invoke-virtual {v1}, Lˎʾ/ˑﹳ;->ᵔᵢ()I

    move-result v8

    add-int/2addr v8, v7

    iput v8, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v7, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, Lˊﾞ/ٴᵢ;

    invoke-interface {v7, v2, v0}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v7, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    add-int/2addr v7, v2

    iput v7, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v0, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aget-byte v0, v0, v18

    shr-int/2addr v0, v15

    and-int/lit8 v0, v0, 0x3f

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v15, v18

    :cond_1
    :goto_0
    iput v15, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    goto/16 :goto_8

    :cond_2
    if-ne v2, v14, :cond_9

    invoke-virtual {v0, v13}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    move/from16 v2, v18

    :goto_1
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v7

    if-le v7, v13, :cond_6

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v7

    iget-object v8, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v10, v0, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    aget-byte v8, v8, v10

    and-int/lit8 v8, v8, 0x7e

    shr-int/2addr v8, v15

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v10

    if-lt v10, v7, :cond_5

    iget v10, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    invoke-virtual {v1}, Lˎʾ/ˑﹳ;->ᵔᵢ()I

    move-result v11

    add-int/2addr v11, v10

    iput v11, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v10, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v10, Lˊﾞ/ٴᵢ;

    invoke-interface {v10, v7, v0}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v10, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    add-int/2addr v10, v7

    iput v10, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget v7, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    if-eq v8, v4, :cond_4

    if-ne v8, v3, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v8, v18

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v15

    :goto_3
    or-int/2addr v7, v8

    iput v7, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "Malformed Aggregation Packet. NAL unit size exceeds packet size."

    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    if-gtz v0, :cond_8

    if-lt v2, v13, :cond_7

    goto/16 :goto_8

    :cond_7
    const-string v0, "Aggregation Packet must contain at least 2 NAL units."

    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_8
    const-string v0, "Malformed Aggregation Packet. Packet size exceeds NAL unit size."

    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    const/16 v14, 0x31

    if-ne v2, v14, :cond_14

    check-cast v11, Lᐧˎ/ﹳᐧ;

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    array-length v14, v2

    move/from16 v19, v13

    const/4 v13, 0x3

    if-lt v14, v13, :cond_13

    aget-byte v12, v2, v15

    and-int/lit8 v12, v12, 0x7

    aget-byte v14, v2, v19

    and-int/lit8 v3, v14, 0x3f

    and-int/lit16 v4, v14, 0x80

    if-lez v4, :cond_a

    move v4, v15

    goto :goto_4

    :cond_a
    move/from16 v4, v18

    :goto_4
    and-int/lit8 v14, v14, 0x40

    if-lez v14, :cond_b

    move v14, v15

    goto :goto_5

    :cond_b
    move/from16 v14, v18

    :goto_5
    if-eqz v4, :cond_c

    iget v2, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    invoke-virtual {v1}, Lˎʾ/ˑﹳ;->ᵔᵢ()I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v0, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    shl-int/lit8 v2, v3, 0x1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v15

    int-to-byte v2, v12

    aput-byte v2, v0, v19

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    invoke-virtual {v11, v2, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {v11, v15}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_6

    :cond_c
    iget v0, v1, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    add-int/2addr v0, v15

    const v4, 0xffff

    rem-int/2addr v0, v4

    if-eq v9, v0, :cond_d

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v0, v8, v9, v7}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RtpH265Reader"

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, v2

    invoke-virtual {v11, v0, v2}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {v11, v13}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :goto_6
    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    iget-object v2, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Lˊﾞ/ٴᵢ;

    invoke-interface {v2, v0, v11}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v2, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    add-int/2addr v2, v0

    iput v2, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    if-eqz v14, :cond_10

    const/16 v0, 0x13

    if-eq v3, v0, :cond_f

    const/16 v0, 0x14

    if-ne v3, v0, :cond_e

    goto :goto_7

    :cond_e
    move/from16 v15, v18

    :cond_f
    :goto_7
    iput v15, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    :cond_10
    :goto_8
    if-eqz p5, :cond_12

    iget-wide v2, v1, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    cmp-long v0, v2, v16

    if-nez v0, :cond_11

    iput-wide v5, v1, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    :cond_11
    iget-wide v3, v1, Lˎʾ/ˑﹳ;->ˆʾ:J

    iget-wide v7, v1, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    const v2, 0x15f90

    invoke-static/range {v2 .. v8}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v11

    iget-object v0, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lˊﾞ/ٴᵢ;

    iget v13, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    iget v14, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    move/from16 v3, v18

    iput v3, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    :cond_12
    iput v9, v1, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    return-void

    :cond_13
    const-string v0, "Malformed FU header."

    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_14
    move/from16 v3, v18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "RTP H265 payload type [%d] not supported."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_15
    const-string v0, "Empty RTP data packet."

    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_0
    move/from16 v19, v13

    move v3, v14

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aget-byte v2, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1f

    iget-object v3, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lˊﾞ/ٴᵢ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    const/4 v3, 0x5

    const/16 v4, 0x18

    if-lez v2, :cond_17

    if-ge v2, v4, :cond_17

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    iget v4, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    invoke-virtual {v1}, Lˎʾ/ˑﹳ;->ᵎﹶ()I

    move-result v7

    add-int/2addr v7, v4

    iput v7, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v4, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v4, Lˊﾞ/ٴᵢ;

    invoke-interface {v4, v2, v0}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v4, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    add-int/2addr v4, v2

    iput v4, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v0, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v18, 0x0

    aget-byte v0, v0, v18

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, v3, :cond_16

    goto :goto_9

    :cond_16
    const/4 v15, 0x0

    :goto_9
    iput v15, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    goto/16 :goto_f

    :cond_17
    if-ne v2, v4, :cond_19

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    :goto_a
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_18

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v2

    iget v3, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    invoke-virtual {v1}, Lˎʾ/ˑﹳ;->ᵎﹶ()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v3, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lˊﾞ/ٴᵢ;

    invoke-interface {v3, v2, v0}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v3, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    add-int/2addr v3, v2

    iput v3, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    iput v4, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    goto/16 :goto_f

    :cond_19
    const/4 v4, 0x0

    const/16 v13, 0x1c

    if-ne v2, v13, :cond_22

    check-cast v11, Lᐧˎ/ﹳᐧ;

    iget-object v2, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aget-byte v12, v2, v4

    aget-byte v2, v2, v15

    and-int/lit16 v4, v12, 0xe0

    and-int/lit8 v12, v2, 0x1f

    or-int/2addr v4, v12

    and-int/lit16 v12, v2, 0x80

    if-lez v12, :cond_1a

    move v12, v15

    goto :goto_b

    :cond_1a
    const/4 v12, 0x0

    :goto_b
    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_1b

    move v2, v15

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    if-eqz v12, :cond_1c

    iget v7, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    invoke-virtual {v1}, Lˎʾ/ˑﹳ;->ᵎﹶ()I

    move-result v8

    add-int/2addr v8, v7

    iput v8, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    iget-object v0, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    int-to-byte v7, v4

    aput-byte v7, v0, v15

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v7, v0

    invoke-virtual {v11, v7, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {v11, v15}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_d

    :cond_1c
    iget v12, v1, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    invoke-static {v12}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result v12

    if-eq v9, v12, :cond_1d

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v12, v8, v9, v7}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RtpH264Reader"

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_1d
    iget-object v0, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v7, v0

    invoke-virtual {v11, v7, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :goto_d
    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    iget-object v7, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, Lˊﾞ/ٴᵢ;

    invoke-interface {v7, v0, v11}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v7, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    add-int/2addr v7, v0

    iput v7, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    if-eqz v2, :cond_1f

    and-int/lit8 v0, v4, 0x1f

    if-ne v0, v3, :cond_1e

    goto :goto_e

    :cond_1e
    const/4 v15, 0x0

    :goto_e
    iput v15, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    :cond_1f
    :goto_f
    if-eqz p5, :cond_21

    iget-wide v2, v1, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    cmp-long v0, v2, v16

    if-nez v0, :cond_20

    iput-wide v5, v1, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    :cond_20
    iget-wide v3, v1, Lˎʾ/ˑﹳ;->ˆʾ:J

    iget-wide v7, v1, Lˎʾ/ˑﹳ;->ᵎﹶ:J

    const v2, 0x15f90

    invoke-static/range {v2 .. v8}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v11

    iget-object v0, v1, Lˎʾ/ˑﹳ;->ˑﹳ:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lˊﾞ/ٴᵢ;

    iget v13, v1, Lˎʾ/ˑﹳ;->ﾞᴵ:I

    iget v14, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    const/4 v3, 0x0

    iput v3, v1, Lˎʾ/ˑﹳ;->ʼˎ:I

    :cond_21
    iput v9, v1, Lˎʾ/ˑﹳ;->ᵔᵢ:I

    return-void

    :cond_22
    move v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "RTP H264 packetization mode [%d] not supported."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v12, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
