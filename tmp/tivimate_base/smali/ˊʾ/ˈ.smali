.class public final Lˊʾ/ˈ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public final ˉٴ:I

.field public final ˊʻ:Ljava/util/Set;

.field public final ٴʼ:Lˎᴵ/ﹳٴ;

.field public final ٴᵢ:Ljava/util/Set;

.field public final ᵎˊ:Ljava/util/Set;

.field public final ᵎⁱ:Ljava/util/Set;

.field public final ᵔי:I


# direct methods
.method public constructor <init>(Lʼﹳ/ʽ;JJILjava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/Set;Lˎᴵ/ﹳٴ;)V
    .locals 8

    .prologue
    const/16 v1, 0x39

    sget-object v3, Lʼﹳ/ﾞʻ;->ٴᵢ:Lʼﹳ/ﾞʻ;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p6, 0x2

    :goto_0
    iput p6, p0, Lˊʾ/ˈ;->ᵔי:I

    iput-object p7, p0, Lˊʾ/ˈ;->ᵎˊ:Ljava/util/Set;

    if-nez p8, :cond_1

    const-class p1, Lﹶᵢ/ﹳٴ;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object/from16 p1, p8

    :goto_1
    iput-object p1, p0, Lˊʾ/ˈ;->ˊʻ:Ljava/util/Set;

    if-nez p9, :cond_2

    const-class p1, Lʼﹳ/ᵔﹳ;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object/from16 p1, p9

    :goto_2
    iput-object p1, p0, Lˊʾ/ˈ;->ٴᵢ:Ljava/util/Set;

    if-eqz p10, :cond_3

    move/from16 p1, p10

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    :goto_3
    iput p1, p0, Lˊʾ/ˈ;->ˉٴ:I

    if-nez p11, :cond_4

    const-class p1, Lʼﹳ/ⁱˊ;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_4

    :cond_4
    move-object/from16 p1, p11

    :goto_4
    iput-object p1, p0, Lˊʾ/ˈ;->ᵎⁱ:Ljava/util/Set;

    move-object/from16 p1, p12

    iput-object p1, p0, Lˊʾ/ˈ;->ٴʼ:Lˎᴵ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final יˉ(Lˋʼ/ﹳٴ;)V
    .locals 4

    .prologue
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    const/4 v2, 0x1

    iget v3, p0, Lˊʾ/ˈ;->ᵔי:I

    if-eq v3, v2, :cond_3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x4

    if-ne v3, v2, :cond_0

    const-wide/16 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lˋʼ/ﹳٴ;->ʼᐧ(I)V

    invoke-virtual {p1, v2}, Lˋʼ/ﹳٴ;->ʼᐧ(I)V

    iget-object v2, p0, Lˊʾ/ˈ;->ᵎˊ:Ljava/util/Set;

    invoke-static {v2}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-object v2, p0, Lˊʾ/ˈ;->ˊʻ:Ljava/util/Set;

    invoke-static {v2}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-object v2, p0, Lˊʾ/ˈ;->ٴᵢ:Ljava/util/Set;

    invoke-static {v2}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget v2, p0, Lˊʾ/ˈ;->ˉٴ:I

    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    :pswitch_0
    const-wide/16 v2, 0x5

    goto :goto_1

    :pswitch_1
    const-wide/16 v2, 0x4

    goto :goto_1

    :pswitch_2
    const-wide/16 v2, 0x3

    goto :goto_1

    :pswitch_3
    const-wide/16 v2, 0x2

    goto :goto_1

    :pswitch_4
    const-wide/16 v2, 0x1

    goto :goto_1

    :pswitch_5
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    iget-object v2, p0, Lˊʾ/ˈ;->ᵎⁱ:Ljava/util/Set;

    invoke-static {v2}, Lᴵʿ/ﹳٴ;->ˑﹳ(Ljava/util/Collection;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    add-int/lit8 v0, v0, 0x3f

    iget-object v2, p0, Lˊʾ/ˈ;->ٴʼ:Lˎᴵ/ﹳٴ;

    iget-object v2, v2, Lˎᴵ/ﹳٴ;->ʽ:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v1, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    array-length v0, v1

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v0, 0x1

    new-array v1, v0, [B

    :goto_3
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {p1, v2, v3}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    array-length v0, v1

    invoke-virtual {p1, v0, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
