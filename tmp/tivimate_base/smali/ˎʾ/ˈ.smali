.class public final Lˎʾ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʾ/ʼˎ;


# instance fields
.field public ʼˎ:I

.field public ʽ:Lˊﾞ/ٴᵢ;

.field public ˆʾ:I

.field public ˈ:J

.field public ˉʿ:Z

.field public ˑﹳ:J

.field public ٴﹶ:Z

.field public ᵎﹶ:I

.field public ᵔᵢ:J

.field public final ⁱˊ:Lˈـ/ﾞʻ;

.field public final synthetic ﹳٴ:I

.field public ﾞʻ:Z

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˈـ/ﾞʻ;I)V
    .locals 1

    .prologue
    iput p2, p0, Lˎʾ/ˈ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ˈ;->ⁱˊ:Lˈـ/ﾞʻ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˎʾ/ˈ;->ˈ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ˈ;->ᵎﹶ:I

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʾ/ˈ;->ⁱˊ:Lˈـ/ﾞʻ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˎʾ/ˈ;->ˈ:J

    const/4 v0, -0x1

    iput v0, p0, Lˎʾ/ˈ;->ᵎﹶ:I

    iput-wide p1, p0, Lˎʾ/ˈ;->ᵔᵢ:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lˎʾ/ˈ;->ˑﹳ:J

    iput v0, p0, Lˎʾ/ˈ;->ﾞᴵ:I

    iput v0, p0, Lˎʾ/ˈ;->ʼˎ:I

    iput v0, p0, Lˎʾ/ˈ;->ˆʾ:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ʽ(J)V
    .locals 4

    .prologue
    iget v0, p0, Lˎʾ/ˈ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lˎʾ/ˈ;->ˈ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p1, p0, Lˎʾ/ˈ;->ˈ:J

    return-void

    :pswitch_0
    iget-wide v0, p0, Lˎʾ/ˈ;->ˈ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p1, p0, Lˎʾ/ˈ;->ˈ:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Lˊﾞ/ᵔﹳ;I)V
    .locals 1

    .prologue
    iget v0, p0, Lˎʾ/ˈ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lˎʾ/ˈ;->ⁱˊ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void

    :pswitch_0
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    iget-object p2, p0, Lˎʾ/ˈ;->ⁱˊ:Lˈـ/ﾞʻ;

    iget-object p2, p2, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, p2}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(JJ)V
    .locals 1

    .prologue
    iget v0, p0, Lˎʾ/ˈ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iput-wide p1, p0, Lˎʾ/ˈ;->ˈ:J

    const/4 p1, -0x1

    iput p1, p0, Lˎʾ/ˈ;->ᵎﹶ:I

    iput-wide p3, p0, Lˎʾ/ˈ;->ˑﹳ:J

    return-void

    :pswitch_0
    iput-wide p1, p0, Lˎʾ/ˈ;->ˈ:J

    const/4 p1, 0x0

    iput p1, p0, Lˎʾ/ˈ;->ﾞᴵ:I

    iput-wide p3, p0, Lˎʾ/ˈ;->ˑﹳ:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V
    .locals 24

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget v3, v0, Lˎʾ/ˈ;->ﹳٴ:I

    iget-object v4, v0, Lˎʾ/ˈ;->ⁱˊ:Lˈـ/ﾞʻ;

    const-string v5, ". Dropping packet."

    const-string v6, "; received: "

    const-string v7, "Received RTP packet with unexpected sequence number. Expected: "

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x80

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    packed-switch v3, :pswitch_data_0

    iget-object v3, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    and-int/lit8 v13, v3, 0x8

    const/4 v14, -0x1

    const/16 v15, 0x8

    if-ne v13, v15, :cond_1

    iget-boolean v5, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    if-eqz v5, :cond_0

    iget v5, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    if-lez v5, :cond_0

    iget-object v5, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    iget-boolean v13, v0, Lˎʾ/ˈ;->ˉʿ:Z

    move/from16 v23, v15

    iget v15, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    move/from16 v19, v13

    move/from16 v20, v15

    invoke-interface/range {v16 .. v22}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v14, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    iput-wide v11, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    iput-boolean v9, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    goto :goto_0

    :cond_0
    move/from16 v23, v15

    :goto_0
    iput-boolean v8, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    goto :goto_1

    :cond_1
    move/from16 v23, v15

    iget-boolean v13, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    const-string v15, "RtpVp9Reader"

    if-eqz v13, :cond_13

    iget v13, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    invoke-static {v13}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result v13

    if-ge v2, v13, :cond_2

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v13, v6, v2, v5}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    :goto_1
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v5

    and-int/2addr v5, v10

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v5

    if-ge v5, v8, :cond_3

    goto/16 :goto_7

    :cond_3
    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_4

    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v9

    :goto_2
    const-string v7, "VP9 flexible mode is not supported."

    invoke-static {v7, v6}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_6

    invoke-virtual {v1, v8}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v6

    if-ge v6, v8, :cond_5

    goto/16 :goto_7

    :cond_5
    if-nez v5, :cond_6

    invoke-virtual {v1, v8}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_6
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    shr-int/lit8 v5, v3, 0x5

    and-int/lit8 v5, v5, 0x7

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_8

    add-int/2addr v5, v8

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v6

    mul-int/lit8 v7, v5, 0x4

    if-ge v6, v7, :cond_7

    goto/16 :goto_7

    :cond_7
    move v6, v9

    :goto_3
    if-ge v6, v5, :cond_8

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v7

    iput v7, v0, Lˎʾ/ˈ;->ʼˎ:I

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v7

    iput v7, v0, Lˎʾ/ˈ;->ˆʾ:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v5

    if-ge v5, v3, :cond_9

    goto/16 :goto_7

    :cond_9
    move v5, v9

    :goto_4
    if-ge v5, v3, :cond_b

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v6

    and-int/lit8 v6, v6, 0xc

    shr-int/lit8 v6, v6, 0x2

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v7

    if-ge v7, v6, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v1, v6}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    iget v3, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    if-ne v3, v14, :cond_d

    iget-boolean v3, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᵔᵢ()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_c

    move v3, v8

    goto :goto_5

    :cond_c
    move v3, v9

    :goto_5
    iput-boolean v3, v0, Lˎʾ/ˈ;->ˉʿ:Z

    :cond_d
    iget-boolean v3, v0, Lˎʾ/ˈ;->ﾞʻ:Z

    if-nez v3, :cond_10

    iget v3, v0, Lˎʾ/ˈ;->ʼˎ:I

    if-eq v3, v14, :cond_10

    iget v5, v0, Lˎʾ/ˈ;->ˆʾ:I

    if-eq v5, v14, :cond_10

    iget-object v4, v4, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget v6, v4, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-ne v3, v6, :cond_e

    iget v3, v4, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-eq v5, v3, :cond_f

    :cond_e
    iget-object v3, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v4}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v4

    iget v5, v0, Lˎʾ/ˈ;->ʼˎ:I

    iput v5, v4, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget v5, v0, Lˎʾ/ˈ;->ˆʾ:I

    iput v5, v4, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    invoke-static {v4, v3}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    :cond_f
    iput-boolean v8, v0, Lˎʾ/ˈ;->ﾞʻ:Z

    :cond_10
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    iget-object v4, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-interface {v4, v3, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v1, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    if-ne v1, v14, :cond_11

    iput v3, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    goto :goto_6

    :cond_11
    add-int/2addr v1, v3

    iput v1, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    :goto_6
    iget-wide v3, v0, Lˎʾ/ˈ;->ˑﹳ:J

    iget-wide v5, v0, Lˎʾ/ˈ;->ˈ:J

    const v15, 0x15f90

    move-wide/from16 v18, p2

    move-wide/from16 v16, v3

    move-wide/from16 v20, v5

    invoke-static/range {v15 .. v21}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v3

    iput-wide v3, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    if-eqz p5, :cond_12

    iget-object v15, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    iget-boolean v1, v0, Lˎʾ/ˈ;->ˉʿ:Z

    iget v5, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v18, v1

    move-wide/from16 v16, v3

    move/from16 v19, v5

    invoke-interface/range {v15 .. v21}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v14, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    iput-wide v11, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    iput-boolean v9, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    :cond_12
    iput v2, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    goto :goto_7

    :cond_13
    const-string v1, "First payload octet of the RTP packet is not the beginning of a new VP9 partition, Dropping current packet."

    invoke-static {v15, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_0
    iget-object v3, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget v3, v1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v13

    and-int/lit16 v14, v13, 0x400

    if-lez v14, :cond_14

    move v14, v8

    goto :goto_8

    :cond_14
    move v14, v9

    :goto_8
    and-int/lit16 v15, v13, 0x200

    const-string v10, "RtpH263Reader"

    if-nez v15, :cond_23

    and-int/lit16 v15, v13, 0x1f8

    if-nez v15, :cond_23

    and-int/lit8 v13, v13, 0x7

    if-eqz v13, :cond_15

    goto/16 :goto_d

    :cond_15
    if-eqz v14, :cond_18

    iget-boolean v5, v0, Lˎʾ/ˈ;->ˉʿ:Z

    if-eqz v5, :cond_16

    iget v5, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    if-lez v5, :cond_16

    iget-object v5, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    iget-boolean v13, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    iget v14, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-interface/range {v17 .. v23}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v9, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    iput-wide v11, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    iput-boolean v9, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    iput-boolean v9, v0, Lˎʾ/ˈ;->ˉʿ:Z

    :cond_16
    iput-boolean v8, v0, Lˎʾ/ˈ;->ˉʿ:Z

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᵔᵢ()I

    move-result v5

    and-int/lit16 v5, v5, 0xfc

    const/16 v6, 0x80

    if-ge v5, v6, :cond_17

    const-string v1, "Picture start Code (PSC) missing, dropping packet."

    invoke-static {v10, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_17
    iget-object v5, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aput-byte v9, v5, v3

    add-int/lit8 v6, v3, 0x1

    aput-byte v9, v5, v6

    invoke-virtual {v1, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_9

    :cond_18
    iget-boolean v3, v0, Lˎʾ/ˈ;->ˉʿ:Z

    if-eqz v3, :cond_22

    iget v3, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    invoke-static {v3}, Lˈـ/ʼˎ;->ﹳٴ(I)I

    move-result v3

    if-ge v2, v3, :cond_19

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v3, v6, v2, v5}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_19
    :goto_9
    iget v3, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    if-nez v3, :cond_20

    iget-boolean v3, v0, Lˎʾ/ˈ;->ﾞʻ:Z

    iget v5, v1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v6

    const/16 v10, 0xa

    shr-long/2addr v6, v10

    const-wide/16 v13, 0x3f

    and-long/2addr v6, v13

    const-wide/16 v13, 0x20

    cmp-long v6, v6, v13

    if-nez v6, :cond_1d

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᵔᵢ()I

    move-result v6

    shr-int/lit8 v7, v6, 0x1

    and-int/2addr v7, v8

    if-nez v3, :cond_1b

    if-nez v7, :cond_1b

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v8, :cond_1a

    const/16 v6, 0x80

    iput v6, v0, Lˎʾ/ˈ;->ʼˎ:I

    const/16 v3, 0x60

    iput v3, v0, Lˎʾ/ˈ;->ˆʾ:I

    goto :goto_a

    :cond_1a
    add-int/lit8 v3, v3, -0x2

    const/16 v6, 0xb0

    shl-int/2addr v6, v3

    iput v6, v0, Lˎʾ/ˈ;->ʼˎ:I

    const/16 v6, 0x90

    shl-int v3, v6, v3

    iput v3, v0, Lˎʾ/ˈ;->ˆʾ:I

    :cond_1b
    :goto_a
    invoke-virtual {v1, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    if-nez v7, :cond_1c

    move v3, v8

    goto :goto_b

    :cond_1c
    move v3, v9

    :goto_b
    iput-boolean v3, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    goto :goto_c

    :cond_1d
    invoke-virtual {v1, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iput-boolean v9, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    :goto_c
    iget-boolean v3, v0, Lˎʾ/ˈ;->ﾞʻ:Z

    if-nez v3, :cond_20

    iget-boolean v3, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    if-eqz v3, :cond_20

    iget v3, v0, Lˎʾ/ˈ;->ʼˎ:I

    iget-object v4, v4, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget v5, v4, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-ne v3, v5, :cond_1e

    iget v3, v0, Lˎʾ/ˈ;->ˆʾ:I

    iget v5, v4, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-eq v3, v5, :cond_1f

    :cond_1e
    iget-object v3, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v4}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v4

    iget v5, v0, Lˎʾ/ˈ;->ʼˎ:I

    iput v5, v4, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget v5, v0, Lˎʾ/ˈ;->ˆʾ:I

    iput v5, v4, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    invoke-static {v4, v3}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    :cond_1f
    iput-boolean v8, v0, Lˎʾ/ˈ;->ﾞʻ:Z

    :cond_20
    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    iget-object v4, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-interface {v4, v3, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget v1, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    add-int/2addr v1, v3

    iput v1, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    iget-wide v3, v0, Lˎʾ/ˈ;->ˑﹳ:J

    iget-wide v5, v0, Lˎʾ/ˈ;->ˈ:J

    const v16, 0x15f90

    move-wide/from16 v19, p2

    move-wide/from16 v17, v3

    move-wide/from16 v21, v5

    invoke-static/range {v16 .. v22}, Lcom/bumptech/glide/ʽ;->ᴵᵔ(IJJJ)J

    move-result-wide v3

    iput-wide v3, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    if-eqz p5, :cond_21

    iget-object v13, v0, Lˎʾ/ˈ;->ʽ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v14, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    iget-boolean v1, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    iget v3, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v1

    move/from16 v17, v3

    invoke-interface/range {v13 .. v19}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput v9, v0, Lˎʾ/ˈ;->ﾞᴵ:I

    iput-wide v11, v0, Lˎʾ/ˈ;->ᵔᵢ:J

    iput-boolean v9, v0, Lˎʾ/ˈ;->ٴﹶ:Z

    iput-boolean v9, v0, Lˎʾ/ˈ;->ˉʿ:Z

    :cond_21
    iput v2, v0, Lˎʾ/ˈ;->ᵎﹶ:I

    goto :goto_e

    :cond_22
    const-string v1, "First payload octet of the H263 packet is not the beginning of a new H263 partition, Dropping current packet."

    invoke-static {v10, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_23
    :goto_d
    const-string v1, "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero"

    invoke-static {v10, v1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
