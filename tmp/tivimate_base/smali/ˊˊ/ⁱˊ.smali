.class public final Lˊˊ/ⁱˊ;
.super Lⁱי/ˑﹳ;
.source "SourceFile"


# instance fields
.field public final ʼˈ:Lﹳⁱ/ˑﹳ;

.field public ˈⁱ:J

.field public final ـˏ:Lᐧˎ/ﹳᐧ;

.field public ﹳـ:Lˊˊ/ﹳٴ;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lⁱי/ˑﹳ;-><init>(I)V

    new-instance v0, Lﹳⁱ/ˑﹳ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lﹳⁱ/ˑﹳ;-><init>(II)V

    iput-object v0, p0, Lˊˊ/ⁱˊ;->ʼˈ:Lﹳⁱ/ˑﹳ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    invoke-direct {v0}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object v0, p0, Lˊˊ/ⁱˊ;->ـˏ:Lᐧˎ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final ʾˋ(Lʽⁱ/ﹳᐧ;)I
    .locals 1

    .prologue
    const-string v0, "application/x-camera-motion"

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-static {p1, v0, v0, v0}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1

    :cond_0
    invoke-static {v0, v0, v0, v0}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1
.end method

.method public final ʾᵎ(JJ)V
    .locals 5

    .prologue
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ٴﹶ()Z

    move-result p3

    if-nez p3, :cond_7

    iget-wide p3, p0, Lˊˊ/ⁱˊ;->ˈⁱ:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_7

    iget-object p3, p0, Lˊˊ/ⁱˊ;->ʼˈ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {p3}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object p4, p0, Lⁱי/ˑﹳ;->ʽʽ:Lـʾ/ᵔﹳ;

    invoke-virtual {p4}, Lـʾ/ᵔﹳ;->ﾞᴵ()V

    const/4 v0, 0x0

    invoke-virtual {p0, p4, p3, v0}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result p4

    const/4 v1, -0x4

    if-ne p4, v1, :cond_7

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :cond_1
    iget-wide v1, p3, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iput-wide v1, p0, Lˊˊ/ⁱˊ;->ˈⁱ:J

    iget-wide v3, p0, Lⁱי/ˑﹳ;->ᵔי:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lˊˊ/ⁱˊ;->ﹳـ:Lˊˊ/ﹳٴ;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lﹳⁱ/ˑﹳ;->ـˆ()V

    iget-object p3, p3, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/4 p3, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, Lˊˊ/ⁱˊ;->ـˏ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v3, v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {v3, p3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_2
    if-ge v0, p3, :cond_5

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object p3, p4

    :goto_3
    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    iget-object p4, p0, Lˊˊ/ⁱˊ;->ﹳـ:Lˊˊ/ﹳٴ;

    iget-wide v0, p0, Lˊˊ/ⁱˊ;->ˈⁱ:J

    iget-wide v2, p0, Lⁱי/ˑﹳ;->ᵎˊ:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lˊˊ/ﹳٴ;->ﹳٴ(J[F)V

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public final ˉʿ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ˉˆ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lˊˊ/ⁱˊ;->ﹳـ:Lˊˊ/ﹳٴ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lˊˊ/ﹳٴ;->ˈ()V

    :cond_0
    return-void
.end method

.method public final ᵔﹳ(ZJ)V
    .locals 0

    .prologue
    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lˊˊ/ⁱˊ;->ˈⁱ:J

    iget-object p1, p0, Lˊˊ/ⁱˊ;->ﹳـ:Lˊˊ/ﹳٴ;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lˊˊ/ﹳٴ;->ˈ()V

    :cond_0
    return-void
.end method

.method public final ⁱˊ(ILjava/lang/Object;)V
    .locals 1

    .prologue
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    check-cast p2, Lˊˊ/ﹳٴ;

    iput-object p2, p0, Lˊˊ/ⁱˊ;->ﹳـ:Lˊˊ/ﹳٴ;

    :cond_0
    return-void
.end method

.method public final ﾞʻ()Z
    .locals 1

    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ٴﹶ()Z

    move-result v0

    return v0
.end method
