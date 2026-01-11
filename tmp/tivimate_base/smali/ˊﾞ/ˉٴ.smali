.class public final Lˊﾞ/ˉٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:J

.field public ˑﹳ:I

.field public ᵎﹶ:I

.field public ⁱˊ:Z

.field public final ﹳٴ:[B

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lˊﾞ/ˉٴ;->ﹳٴ:[B

    return-void
.end method


# virtual methods
.method public final ʽ(Lˊﾞ/ʼᐧ;)V
    .locals 7

    .prologue
    iget-boolean v0, p0, Lˊﾞ/ˉٴ;->ⁱˊ:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0xa

    iget-object v1, p0, Lˊﾞ/ˉٴ;->ﹳٴ:[B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    const/4 p1, 0x4

    aget-byte v0, v1, p1

    const/4 v3, -0x8

    const/4 v4, 0x1

    if-ne v0, v3, :cond_4

    const/4 v0, 0x5

    aget-byte v0, v1, v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_4

    const/4 v0, 0x6

    aget-byte v0, v1, v0

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_4

    const/4 v0, 0x7

    aget-byte v3, v1, v0

    and-int/lit16 v5, v3, 0xfe

    const/16 v6, 0xba

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xbb

    if-ne v3, v5, :cond_2

    move v2, v4

    :cond_2
    if-eqz v2, :cond_3

    const/16 v2, 0x9

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    aget-byte v1, v1, v2

    shr-int/lit8 p1, v1, 0x4

    and-int/2addr p1, v0

    const/16 v0, 0x28

    shl-int v2, v0, p1

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    :goto_2
    return-void

    :cond_5
    iput-boolean v4, p0, Lˊﾞ/ˉٴ;->ⁱˊ:Z

    return-void
.end method

.method public final ⁱˊ(Lˊﾞ/ٴᵢ;JIIILˊﾞ/ˊʻ;)V
    .locals 3

    .prologue
    iget v0, p0, Lˊﾞ/ˉٴ;->ᵎﹶ:I

    add-int v1, p5, p6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ˆʾ(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lˊﾞ/ˉٴ;->ⁱˊ:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lˊﾞ/ˉٴ;->ʽ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lˊﾞ/ˉٴ;->ʽ:I

    if-nez v0, :cond_2

    iput-wide p2, p0, Lˊﾞ/ˉٴ;->ˈ:J

    iput p4, p0, Lˊﾞ/ˉٴ;->ˑﹳ:I

    iput v2, p0, Lˊﾞ/ˉٴ;->ﾞᴵ:I

    :cond_2
    iget p2, p0, Lˊﾞ/ˉٴ;->ﾞᴵ:I

    add-int/2addr p2, p5

    iput p2, p0, Lˊﾞ/ˉٴ;->ﾞᴵ:I

    iput p6, p0, Lˊﾞ/ˉٴ;->ᵎﹶ:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_3

    invoke-virtual {p0, p1, p7}, Lˊﾞ/ˉٴ;->ﹳٴ(Lˊﾞ/ٴᵢ;Lˊﾞ/ˊʻ;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final ﹳٴ(Lˊﾞ/ٴᵢ;Lˊﾞ/ˊʻ;)V
    .locals 8

    .prologue
    iget v0, p0, Lˊﾞ/ˉٴ;->ʽ:I

    if-lez v0, :cond_0

    iget-wide v2, p0, Lˊﾞ/ˉٴ;->ˈ:J

    iget v4, p0, Lˊﾞ/ˉٴ;->ˑﹳ:I

    iget v5, p0, Lˊﾞ/ˉٴ;->ﾞᴵ:I

    iget v6, p0, Lˊﾞ/ˉٴ;->ᵎﹶ:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    const/4 p1, 0x0

    iput p1, p0, Lˊﾞ/ˉٴ;->ʽ:I

    :cond_0
    return-void
.end method
