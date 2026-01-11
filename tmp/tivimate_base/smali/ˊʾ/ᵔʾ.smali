.class public final Lˊʾ/ᵔʾ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:I

.field public final ˊʻ:Lʼﹳ/ᵔᵢ;

.field public final ٴᵢ:I


# direct methods
.method public constructor <init>(Lʼﹳ/ʽ;JJLʼﹳ/ᵔᵢ;I)V
    .locals 8

    const/16 v1, 0x29

    sget-object v3, Lʼﹳ/ﾞʻ;->ᵔٴ:Lʼﹳ/ﾞʻ;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    const/4 p1, 0x1

    iput p1, v0, Lˊʾ/ᵔʾ;->ٴᵢ:I

    iput p7, v0, Lˊʾ/ᵔʾ;->ˉٴ:I

    iput-object p6, v0, Lˊʾ/ᵔʾ;->ˊʻ:Lʼﹳ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 11

    .prologue
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v0, 0x1

    iget v1, p0, Lˊʾ/ᵔʾ;->ٴᵢ:I

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    const-wide/16 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    const-wide/16 v2, 0x3

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x1

    :goto_0
    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-static {v1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lˊʾ/ᵔʾ;->ˊʻ:Lʼﹳ/ᵔᵢ;

    const-wide/32 v4, 0x10000

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_b

    const/4 v9, 0x1

    if-eq v0, v9, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    if-eq v1, v0, :cond_7

    const/4 v0, 0x2

    if-eq v1, v0, :cond_6

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    const-string v0, "null"

    goto :goto_1

    :cond_4
    const-string v0, "SMB2_0_INFO_QUOTA"

    goto :goto_1

    :cond_5
    const-string v0, "SMB2_0_INFO_SECURITY"

    goto :goto_1

    :cond_6
    const-string v0, "SMB2_0_INFO_FILESYSTEM"

    goto :goto_1

    :cond_7
    const-string v0, "SMB2_0_INFO_FILE"

    :goto_1
    const-string v1, "Unknown SMB2QueryInfoType: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {p1, v8}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {p1, v4, v5}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v8}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    throw v2

    :cond_9
    invoke-virtual {p1, v8}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {p1, v4, v5}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v8}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    invoke-virtual {p1, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-static {v2}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    throw v2

    :cond_a
    packed-switch v8, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    :pswitch_0
    const-wide/16 v0, 0xb

    goto :goto_2

    :pswitch_1
    const-wide/16 v0, 0xa

    goto :goto_2

    :pswitch_2
    const-wide/16 v0, 0x9

    goto :goto_2

    :pswitch_3
    const-wide/16 v0, 0x8

    goto :goto_2

    :pswitch_4
    const-wide/16 v0, 0x7

    goto :goto_2

    :pswitch_5
    const-wide/16 v0, 0x6

    goto :goto_2

    :pswitch_6
    const-wide/16 v0, 0x5

    goto :goto_2

    :pswitch_7
    const-wide/16 v0, 0x4

    goto :goto_2

    :pswitch_8
    const-wide/16 v0, 0x3

    goto :goto_2

    :pswitch_9
    const-wide/16 v0, 0x2

    goto :goto_2

    :pswitch_a
    const-wide/16 v0, 0x1

    :goto_2
    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {p1, v4, v5}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v8}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    invoke-virtual {p1, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {v3, p1}, Lʼﹳ/ᵔᵢ;->ﹳٴ(Lˋʼ/ﹳٴ;)V

    return-void

    :cond_b
    iget v0, p0, Lˊʾ/ᵔʾ;->ˉٴ:I

    invoke-static {v0}, Lﹳˎ/ˆʾ;->ⁱˊ(I)J

    move-result-wide v9

    long-to-int v1, v9

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {p1, v4, v5}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    const/16 v1, 0xf

    if-eq v0, v1, :cond_c

    invoke-virtual {p1, v8}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    invoke-virtual {p1, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {v3, p1}, Lʼﹳ/ᵔᵢ;->ﹳٴ(Lˋʼ/ﹳٴ;)V

    return-void

    :cond_c
    invoke-virtual {p1, v8}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ᵔﹳ()V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
