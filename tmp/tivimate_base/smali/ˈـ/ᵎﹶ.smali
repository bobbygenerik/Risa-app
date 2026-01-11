.class public final Lˈـ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public volatile ʼˎ:J

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public volatile ˆʾ:I

.field public final ˈ:I

.field public ˉʿ:J

.field public final ˑﹳ:Ljava/lang/Object;

.field public ٴﹶ:Z

.field public ᵎﹶ:Lˊﾞ/ᵔﹳ;

.field public ᵔᵢ:Z

.field public final ⁱˊ:Lᐧˎ/ﹳᐧ;

.field public final ﹳٴ:Lˎʾ/ʼˎ;

.field public ﾞʻ:J

.field public final ﾞᴵ:Lˈـ/ٴﹶ;


# direct methods
.method public constructor <init>(Lˈـ/ﾞʻ;I)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lˈـ/ᵎﹶ;->ˈ:I

    iget-object p2, p1, Lˈـ/ﾞʻ;->ʽ:Lʽⁱ/ﹳᐧ;

    iget-object p2, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p2, v3

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "audio/g711-mlaw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "audio/g711-alaw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "video/x-vnd.on2.vp9"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "video/x-vnd.on2.vp8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p2, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "audio/opus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p2, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "audio/3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/16 p2, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "video/avc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "video/mp4v-es"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "audio/raw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "audio/ac3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 p2, 0x4

    goto :goto_1

    :sswitch_a
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 p2, 0x3

    goto :goto_1

    :sswitch_b
    const-string v0, "audio/amr-wb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p2, 0x2

    goto :goto_1

    :sswitch_c
    const-string v0, "video/hevc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    move p2, v1

    goto :goto_1

    :sswitch_d
    const-string v0, "video/3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    move p2, v2

    :goto_1
    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_3

    :pswitch_0
    new-instance p2, Lˎʾ/ˈ;

    invoke-direct {p2, p1, v1}, Lˎʾ/ˈ;-><init>(Lˈـ/ﾞʻ;I)V

    :goto_2
    move-object p1, p2

    goto :goto_3

    :pswitch_1
    new-instance p2, Lˎʾ/ٴﹶ;

    invoke-direct {p2, p1}, Lˎʾ/ٴﹶ;-><init>(Lˈـ/ﾞʻ;)V

    goto :goto_2

    :pswitch_2
    new-instance p2, Lˎʾ/ᵔᵢ;

    invoke-direct {p2, p1}, Lˎʾ/ᵔᵢ;-><init>(Lˈـ/ﾞʻ;)V

    goto :goto_2

    :pswitch_3
    new-instance p2, Lˎʾ/ˑﹳ;

    invoke-direct {p2, p1, v2}, Lˎʾ/ˑﹳ;-><init>(Lˈـ/ﾞʻ;I)V

    goto :goto_2

    :pswitch_4
    new-instance p2, Lˎʾ/ᵎﹶ;

    invoke-direct {p2, p1}, Lˎʾ/ᵎﹶ;-><init>(Lˈـ/ﾞʻ;)V

    goto :goto_2

    :pswitch_5
    new-instance p2, Lˎʾ/ˆʾ;

    invoke-direct {p2, p1}, Lˎʾ/ˆʾ;-><init>(Lˈـ/ﾞʻ;)V

    goto :goto_2

    :pswitch_6
    new-instance p2, Lˎʾ/ⁱˊ;

    invoke-direct {p2, p1}, Lˎʾ/ⁱˊ;-><init>(Lˈـ/ﾞʻ;)V

    goto :goto_2

    :pswitch_7
    iget-object p2, p1, Lˈـ/ﾞʻ;->ˑﹳ:Ljava/lang/String;

    const-string v0, "MP4A-LATM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Lˎʾ/ﾞᴵ;

    invoke-direct {p2, p1}, Lˎʾ/ﾞᴵ;-><init>(Lˈـ/ﾞʻ;)V

    goto :goto_2

    :cond_e
    new-instance p2, Lˎʾ/ﹳٴ;

    invoke-direct {p2, p1}, Lˎʾ/ﹳٴ;-><init>(Lˈـ/ﾞʻ;)V

    goto :goto_2

    :pswitch_8
    new-instance p2, Lˎʾ/ʽ;

    invoke-direct {p2, p1}, Lˎʾ/ʽ;-><init>(Lˈـ/ﾞʻ;)V

    goto :goto_2

    :pswitch_9
    new-instance p2, Lˎʾ/ˑﹳ;

    invoke-direct {p2, p1, v1}, Lˎʾ/ˑﹳ;-><init>(Lˈـ/ﾞʻ;I)V

    goto :goto_2

    :pswitch_a
    new-instance p2, Lˎʾ/ˈ;

    invoke-direct {p2, p1, v2}, Lˎʾ/ˈ;-><init>(Lˈـ/ﾞʻ;I)V

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lˈـ/ᵎﹶ;->ﹳٴ:Lˎʾ/ʼˎ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const p2, 0xffe3

    invoke-direct {p1, p2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lˈـ/ᵎﹶ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lˈـ/ᵎﹶ;->ʽ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈـ/ᵎﹶ;->ˑﹳ:Ljava/lang/Object;

    new-instance p1, Lˈـ/ٴﹶ;

    invoke-direct {p1}, Lˈـ/ٴﹶ;-><init>()V

    iput-object p1, p0, Lˈـ/ᵎﹶ;->ﾞᴵ:Lˈـ/ٴﹶ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˈـ/ᵎﹶ;->ʼˎ:J

    iput v3, p0, Lˈـ/ᵎﹶ;->ˆʾ:I

    iput-wide p1, p0, Lˈـ/ᵎﹶ;->ﾞʻ:J

    iput-wide p1, p0, Lˈـ/ᵎﹶ;->ˉʿ:J

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_d
        -0x63185e82 -> :sswitch_c
        -0x5fc6f775 -> :sswitch_b
        -0x3313c2e -> :sswitch_a
        0xb269698 -> :sswitch_9
        0xb26d66f -> :sswitch_8
        0x46cdc642 -> :sswitch_7
        0x4f62373a -> :sswitch_6
        0x59976a2d -> :sswitch_5
        0x59b2d2d8 -> :sswitch_4
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 3

    iget-object v0, p0, Lˈـ/ᵎﹶ;->ﹳٴ:Lˎʾ/ʼˎ;

    iget v1, p0, Lˈـ/ᵎﹶ;->ˈ:I

    invoke-interface {v0, p1, v1}, Lˎʾ/ʼˎ;->ˈ(Lˊﾞ/ᵔﹳ;I)V

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    new-instance v0, Lˊﾞ/יـ;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {p1, v0}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iput-object p1, p0, Lˈـ/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ᵔﹳ;

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 17

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lˈـ/ᵎﹶ;->ᵎﹶ:Lˊﾞ/ᵔﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lˈـ/ᵎﹶ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    iget-object v0, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const v2, 0xffe3

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-interface {v4, v0, v3, v2}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    move/from16 v16, v3

    goto/16 :goto_6

    :cond_1
    iget-object v4, v1, Lˈـ/ᵎﹶ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v4, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v4, v1, Lˈـ/ᵎﹶ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v4, v0}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    iget-object v0, v1, Lˈـ/ᵎﹶ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    sget-object v4, Lˈـ/ʼˎ;->ᵎﹶ:[B

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v5, v6, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v5

    shr-int/lit8 v6, v5, 0x6

    int-to-byte v6, v6

    and-int/lit8 v9, v5, 0xf

    int-to-byte v9, v9

    const/4 v10, 0x4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    const/4 v11, 0x2

    if-eq v6, v11, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v6

    shr-int/lit8 v8, v6, 0x7

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_5

    move v8, v7

    goto :goto_1

    :cond_5
    move v8, v3

    :goto_1
    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v12

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v13

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v15

    if-lez v9, :cond_6

    mul-int/lit8 v7, v9, 0x4

    new-array v7, v7, [B

    move v2, v3

    :goto_2
    if-ge v2, v9, :cond_6

    mul-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v7, v3, v10}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v0, v11}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʻٴ()S

    move-result v2

    if-eqz v2, :cond_7

    mul-int/2addr v2, v10

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_7
    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    new-instance v0, Lˈـ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lˈـ/ᵔᵢ;->ﾞᴵ:[B

    iput-boolean v8, v0, Lˈـ/ᵔᵢ;->ﹳٴ:Z

    iput-byte v6, v0, Lˈـ/ᵔᵢ;->ⁱˊ:B

    const v3, 0xffff

    if-ltz v12, :cond_8

    if-gt v12, v3, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    and-int/2addr v3, v12

    iput v3, v0, Lˈـ/ᵔᵢ;->ʽ:I

    iput-wide v13, v0, Lˈـ/ᵔᵢ;->ˈ:J

    iput v15, v0, Lˈـ/ᵔᵢ;->ˑﹳ:I

    iput-object v2, v0, Lˈـ/ᵔᵢ;->ﾞᴵ:[B

    new-instance v8, Lˈـ/ʼˎ;

    invoke-direct {v8, v0}, Lˈـ/ʼˎ;-><init>(Lˈـ/ᵔᵢ;)V

    :goto_4
    if-nez v8, :cond_9

    :goto_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    sub-long v4, v2, v4

    iget-object v0, v1, Lˈـ/ᵎﹶ;->ﾞᴵ:Lˈـ/ٴﹶ;

    invoke-virtual {v0, v8, v2, v3}, Lˈـ/ٴﹶ;->ʽ(Lˈـ/ʼˎ;J)V

    iget-object v0, v1, Lˈـ/ᵎﹶ;->ﾞᴵ:Lˈـ/ٴﹶ;

    invoke-virtual {v0, v4, v5}, Lˈـ/ٴﹶ;->ˈ(J)Lˈـ/ʼˎ;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    :goto_6
    return v16

    :cond_a
    iget-boolean v2, v1, Lˈـ/ᵎﹶ;->ᵔᵢ:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_d

    iget-wide v2, v1, Lˈـ/ᵎﹶ;->ʼˎ:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_b

    iget-wide v2, v0, Lˈـ/ʼˎ;->ˈ:J

    iput-wide v2, v1, Lˈـ/ᵎﹶ;->ʼˎ:J

    :cond_b
    iget v2, v1, Lˈـ/ᵎﹶ;->ˆʾ:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    iget v2, v0, Lˈـ/ʼˎ;->ʽ:I

    iput v2, v1, Lˈـ/ᵎﹶ;->ˆʾ:I

    :cond_c
    iget-object v2, v1, Lˈـ/ᵎﹶ;->ﹳٴ:Lˎʾ/ʼˎ;

    iget-wide v8, v1, Lˈـ/ᵎﹶ;->ʼˎ:J

    invoke-interface {v2, v8, v9}, Lˎʾ/ʼˎ;->ʽ(J)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lˈـ/ᵎﹶ;->ᵔᵢ:Z

    :cond_d
    iget-object v2, v1, Lˈـ/ᵎﹶ;->ˑﹳ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v1, Lˈـ/ᵎﹶ;->ٴﹶ:Z

    if-eqz v3, :cond_e

    iget-wide v3, v1, Lˈـ/ᵎﹶ;->ﾞʻ:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_f

    iget-wide v3, v1, Lˈـ/ᵎﹶ;->ˉʿ:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_f

    iget-object v0, v1, Lˈـ/ᵎﹶ;->ﾞᴵ:Lˈـ/ٴﹶ;

    invoke-virtual {v0}, Lˈـ/ٴﹶ;->ˑﹳ()V

    iget-object v0, v1, Lˈـ/ᵎﹶ;->ﹳٴ:Lˎʾ/ʼˎ;

    iget-wide v3, v1, Lˈـ/ᵎﹶ;->ﾞʻ:J

    iget-wide v8, v1, Lˈـ/ᵎﹶ;->ˉʿ:J

    invoke-interface {v0, v3, v4, v8, v9}, Lˎʾ/ʼˎ;->ⁱˊ(JJ)V

    const/4 v5, 0x0

    iput-boolean v5, v1, Lˈـ/ᵎﹶ;->ٴﹶ:Z

    iput-wide v6, v1, Lˈـ/ᵎﹶ;->ﾞʻ:J

    iput-wide v6, v1, Lˈـ/ᵎﹶ;->ˉʿ:J

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_e
    :goto_7
    iget-object v3, v1, Lˈـ/ᵎﹶ;->ʽ:Lᐧˎ/ﹳᐧ;

    iget-object v6, v0, Lˈـ/ʼˎ;->ﾞᴵ:[B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v7, v6

    invoke-virtual {v3, v7, v6}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    iget-object v8, v1, Lˈـ/ᵎﹶ;->ﹳٴ:Lˎʾ/ʼˎ;

    iget-object v9, v1, Lˈـ/ᵎﹶ;->ʽ:Lᐧˎ/ﹳᐧ;

    iget-wide v10, v0, Lˈـ/ʼˎ;->ˈ:J

    iget v12, v0, Lˈـ/ʼˎ;->ʽ:I

    iget-boolean v13, v0, Lˈـ/ʼˎ;->ﹳٴ:Z

    invoke-interface/range {v8 .. v13}, Lˎʾ/ʼˎ;->ﹳٴ(Lᐧˎ/ﹳᐧ;JIZ)V

    iget-object v0, v1, Lˈـ/ᵎﹶ;->ﾞᴵ:Lˈـ/ٴﹶ;

    invoke-virtual {v0, v4, v5}, Lˈـ/ٴﹶ;->ˈ(J)Lˈـ/ʼˎ;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    :goto_8
    monitor-exit v2

    const/16 v16, 0x0

    return v16

    :cond_10
    const/16 v16, 0x0

    goto :goto_7

    :goto_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    iget-object v0, p0, Lˈـ/ᵎﹶ;->ˑﹳ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lˈـ/ᵎﹶ;->ٴﹶ:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lˈـ/ᵎﹶ;->ٴﹶ:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide p1, p0, Lˈـ/ᵎﹶ;->ﾞʻ:J

    iput-wide p3, p0, Lˈـ/ᵎﹶ;->ˉʿ:J

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RTP packets are transmitted in a packet stream do not support sniffing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
