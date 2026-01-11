.class public final Lﹳˋ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳˋ/ˉˆ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lﹳˋ/ﹳᐧ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(Lˎʿ/ⁱˊ;)Lﹳˋ/ᵔﹳ;
    .locals 11

    .prologue
    iget v0, p0, Lﹳˋ/ﹳᐧ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    add-long/2addr v3, v5

    long-to-int v5, v3

    iput v5, p1, Lˎʿ/ⁱˊ;->ʽ:I

    iget-object v5, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v5, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v6

    invoke-virtual {v5, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v8

    invoke-virtual {v5, p1}, Lˎʿ/ʽ;->ﹳٴ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v5, p1}, Lˎʿ/ʽ;->ﹳٴ(Lˎʿ/ⁱˊ;)J

    sget-object v5, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    long-to-int v8, v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v8, v5}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    new-instance v5, Lᵔﹶ/ˈٴ;

    const/4 v8, 0x4

    invoke-direct {v5, v8}, Lᵔﹶ/ˈٴ;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v5, v6, v1

    if-nez v5, :cond_0

    new-instance p1, Lﹳˋ/ᴵᵔ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :cond_0
    move-wide v5, v6

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    new-instance p1, Lﹳˋ/ˆʾ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_1
    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-static {p1}, Lﹳˋ/ʻٴ;->ⁱˊ(Lˎʿ/ⁱˊ;)Lﹳˋ/ˈٴ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ﹳٴ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ﹳٴ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    sget-object v2, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0, v2}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    new-instance p1, Lﹳˋ/ʽ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_2
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    new-instance p1, Lﹳˋ/ⁱˊ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_3
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    new-instance p1, Lﹳˋ/ﹳٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_4
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    iget-object v2, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v2

    sget-object v4, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2, v4}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lﹳˋ/ᵢˏ;

    invoke-direct {v2, p1, v0, v1}, Lﹳˋ/ᵔᵢ;-><init>(Ljava/lang/String;J)V

    return-object v2

    :pswitch_5
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    iget-object v2, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v3

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ٴﹶ(I)[B

    sget-object v2, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    long-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3, v2}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lﹳˋ/ᵔʾ;

    invoke-direct {v2, p1, v0, v1}, Lﹳˋ/ᵔᵢ;-><init>(Ljava/lang/String;J)V

    return-object v2

    :pswitch_6
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v2

    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v4

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v6

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    move-result v0

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    const/16 v1, 0x18

    new-array v8, v1, [B

    invoke-virtual {p1, v1, v8}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    new-instance v1, Ljava/lang/String;

    sget-object v9, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    const/4 v10, 0x0

    invoke-direct {v1, v8, v10, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ˉʿ()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ٴﹶ(I)[B

    long-to-int v0, v6

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0, v9}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lﹳˋ/ˉʿ;

    invoke-direct/range {v1 .. v6}, Lﹳˋ/ˉʿ;-><init>(JJLjava/lang/String;)V

    return-object v1

    :pswitch_7
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    iget-object v2, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v3

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    sget-object v2, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    long-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3, v2}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lﹳˋ/ﾞʻ;

    invoke-direct {v2, p1, v0, v1}, Lﹳˋ/ᵔᵢ;-><init>(Ljava/lang/String;J)V

    return-object v2

    :pswitch_8
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    iget-object v2, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v2

    sget-object v4, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2, v4}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lﹳˋ/ᵎﹶ;

    invoke-direct {v2, p1, v0, v1}, Lﹳˋ/ᵔᵢ;-><init>(Ljava/lang/String;J)V

    return-object v2

    :pswitch_9
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v0

    iget-object v2, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ˈ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v3

    invoke-virtual {v2, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    move-result v2

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    const/16 v5, 0x18

    new-array v6, v5, [B

    invoke-virtual {p1, v5, v6}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    new-instance v5, Ljava/lang/String;

    sget-object v7, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    long-to-int v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2, v7}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lﹳˋ/ﾞᴵ;

    invoke-direct {v2, p1, v0, v1}, Lﹳˋ/ᵔᵢ;-><init>(Ljava/lang/String;J)V

    return-object v2

    :pswitch_a
    invoke-static {p1}, Lﹳˋ/ʻٴ;->ⁱˊ(Lˎʿ/ⁱˊ;)Lﹳˋ/ˈٴ;

    move-result-object p1

    return-object p1

    :pswitch_b
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ﹳٴ(Lˎʿ/ⁱˊ;)J

    new-instance p1, Lﹳˋ/ʾˋ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_c
    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ﹳٴ(Lˎʿ/ⁱˊ;)J

    new-instance p1, Lﹳˋ/ـˆ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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

.method public final ﹳٴ()I
    .locals 1

    .prologue
    iget v0, p0, Lﹳˋ/ﹳᐧ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x16

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/16 v0, 0x12

    return v0

    :pswitch_2
    const/16 v0, 0x11

    return v0

    :pswitch_3
    const/16 v0, 0x8

    return v0

    :pswitch_4
    const/16 v0, 0xc

    return v0

    :pswitch_5
    const/16 v0, 0x26

    return v0

    :pswitch_6
    const/16 v0, 0x25

    return v0

    :pswitch_7
    const/4 v0, 0x2

    return v0

    :pswitch_8
    const/4 v0, 0x1

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    :pswitch_a
    const/4 v0, 0x5

    return v0

    :pswitch_b
    const/16 v0, 0xe

    return v0

    :pswitch_c
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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
