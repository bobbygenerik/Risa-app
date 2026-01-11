.class public final Lˊﾞ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:I

.field public final ʽ:I

.field public final ˆʾ:J

.field public final ˈ:I

.field public final ˑﹳ:I

.field public final ٴﹶ:Lﹶﾞ/ⁱי;

.field public final ᵎﹶ:I

.field public final ᵔᵢ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public final ﾞʻ:Lʽⁱ/ٴᵢ;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(IIIIIIIJLﹶﾞ/ⁱי;Lʽⁱ/ٴᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˊﾞ/ˏי;->ﹳٴ:I

    iput p2, p0, Lˊﾞ/ˏי;->ⁱˊ:I

    iput p3, p0, Lˊﾞ/ˏי;->ʽ:I

    iput p4, p0, Lˊﾞ/ˏי;->ˈ:I

    iput p5, p0, Lˊﾞ/ˏי;->ˑﹳ:I

    invoke-static {p5}, Lˊﾞ/ˏי;->ˈ(I)I

    move-result p1

    iput p1, p0, Lˊﾞ/ˏי;->ﾞᴵ:I

    iput p6, p0, Lˊﾞ/ˏי;->ᵎﹶ:I

    iput p7, p0, Lˊﾞ/ˏי;->ᵔᵢ:I

    invoke-static {p7}, Lˊﾞ/ˏי;->ﹳٴ(I)I

    move-result p1

    iput p1, p0, Lˊﾞ/ˏי;->ʼˎ:I

    iput-wide p8, p0, Lˊﾞ/ˏי;->ˆʾ:J

    iput-object p10, p0, Lˊﾞ/ˏי;->ٴﹶ:Lﹶﾞ/ⁱי;

    iput-object p11, p0, Lˊﾞ/ˏי;->ﾞʻ:Lʽⁱ/ٴᵢ;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʻᴵ/ʻٴ;

    array-length v1, p2

    invoke-direct {v0, v1, p2}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p2

    iput p2, p0, Lˊﾞ/ˏי;->ﹳٴ:I

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p1

    iput p1, p0, Lˊﾞ/ˏי;->ⁱˊ:I

    const/16 p1, 0x18

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p2

    iput p2, p0, Lˊﾞ/ˏי;->ʽ:I

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p1

    iput p1, p0, Lˊﾞ/ˏי;->ˈ:I

    const/16 p1, 0x14

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p1

    iput p1, p0, Lˊﾞ/ˏי;->ˑﹳ:I

    invoke-static {p1}, Lˊﾞ/ˏי;->ˈ(I)I

    move-result p1

    iput p1, p0, Lˊﾞ/ˏי;->ﾞᴵ:I

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lˊﾞ/ˏי;->ᵎﹶ:I

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lˊﾞ/ˏי;->ᵔᵢ:I

    invoke-static {p1}, Lˊﾞ/ˏי;->ﹳٴ(I)I

    move-result p1

    iput p1, p0, Lˊﾞ/ˏי;->ʼˎ:I

    const/16 p1, 0x24

    invoke-virtual {v0, p1}, Lʻᴵ/ʻٴ;->ˉˆ(I)J

    move-result-wide p1

    iput-wide p1, p0, Lˊﾞ/ˏי;->ˆʾ:J

    const/4 p1, 0x0

    iput-object p1, p0, Lˊﾞ/ˏי;->ٴﹶ:Lﹶﾞ/ⁱי;

    iput-object p1, p0, Lˊﾞ/ˏי;->ﾞʻ:Lʽⁱ/ٴᵢ;

    return-void
.end method

.method public static ˈ(I)I
    .locals 0

    .prologue
    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ﹳٴ(I)I
    .locals 1

    .prologue
    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final ʽ([BLʽⁱ/ٴᵢ;)Lʽⁱ/ﹳᐧ;
    .locals 3

    .prologue
    const/4 v0, 0x4

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    iget v0, p0, Lˊﾞ/ˏי;->ˈ:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lˊﾞ/ˏי;->ﾞʻ:Lʽⁱ/ٴᵢ;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Lʽⁱ/ٴᵢ;->ⁱˊ(Lʽⁱ/ٴᵢ;)Lʽⁱ/ٴᵢ;

    move-result-object p2

    :goto_1
    new-instance v1, Lʽⁱ/ᵔﹳ;

    invoke-direct {v1}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v2, "audio/flac"

    invoke-static {v2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v0, v1, Lʽⁱ/ᵔﹳ;->ᵔʾ:I

    iget v0, p0, Lˊﾞ/ˏי;->ᵎﹶ:I

    iput v0, v1, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iget v0, p0, Lˊﾞ/ˏי;->ˑﹳ:I

    iput v0, v1, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v2, p0, Lˊﾞ/ˏי;->ᵔᵢ:I

    invoke-static {v2, v0}, Lᐧˎ/ʼʼ;->ˈٴ(ILjava/nio/ByteOrder;)I

    move-result v0

    iput v0, v1, Lʽⁱ/ᵔﹳ;->ٴᵢ:I

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    iput-object p2, v1, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, v1}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    return-object p1
.end method

.method public final ⁱˊ()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lˊﾞ/ˏי;->ˆʾ:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget v0, p0, Lˊﾞ/ˏי;->ˑﹳ:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method
