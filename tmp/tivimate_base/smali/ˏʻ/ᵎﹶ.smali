.class public final Lˏʻ/ᵎﹶ;
.super Lˏʻ/ᵔᵢ;
.source "SourceFile"


# static fields
.field public static final ʼᐧ:[B

.field public static final ˉˆ:[B


# instance fields
.field public ᵔʾ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lˏʻ/ᵎﹶ;->ˉˆ:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lˏʻ/ᵎﹶ;->ʼᐧ:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public static ˑﹳ(Lᐧˎ/ﹳᐧ;[B)Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    array-length v1, p1

    new-array v1, v1, [B

    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    invoke-virtual {p0, v0}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;JLﹶﾞ/ⁱי;)Z
    .locals 2

    .prologue
    sget-object p2, Lˏʻ/ᵎﹶ;->ˉˆ:[B

    invoke-static {p1, p2}, Lˏʻ/ᵎﹶ;->ˑﹳ(Lᐧˎ/ﹳᐧ;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget p1, p1, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    invoke-static {p1}, Lˊﾞ/ﹳٴ;->ʽ([B)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p4, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ﹳᐧ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v1, "audio/ogg"

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput p2, v0, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    const p2, 0xbb80

    iput p2, v0, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iput-object p1, v0, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object p1, p4, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    return p3

    :cond_1
    sget-object p2, Lˏʻ/ᵎﹶ;->ʼᐧ:[B

    invoke-static {p1, p2}, Lˏʻ/ᵎﹶ;->ˑﹳ(Lᐧˎ/ﹳᐧ;[B)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p4, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lʽⁱ/ﹳᐧ;

    invoke-static {p2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lˏʻ/ᵎﹶ;->ᵔʾ:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean p3, p0, Lˏʻ/ᵎﹶ;->ᵔʾ:Z

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-static {p1, v0, v0}, Lˊﾞ/ﹳٴ;->ʼʼ(Lᐧˎ/ﹳᐧ;ZZ)Lˉˆ/ʿ;

    move-result-object p1

    iget-object p1, p1, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ﾞʻ([Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object p1

    invoke-static {p1}, Lˊﾞ/ﹳٴ;->ʽﹳ(Ljava/util/List;)Lʽⁱ/ٴᵢ;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_0
    return p3

    :cond_3
    iget-object p2, p4, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lʽⁱ/ﹳᐧ;

    invoke-virtual {p2}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object p2

    iget-object v0, p4, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ﹳᐧ;

    iget-object v0, v0, Lʽⁱ/ﹳᐧ;->ﾞʻ:Lʽⁱ/ٴᵢ;

    invoke-virtual {p1, v0}, Lʽⁱ/ٴᵢ;->ⁱˊ(Lʽⁱ/ٴᵢ;)Lʽⁱ/ٴᵢ;

    move-result-object p1

    iput-object p1, p2, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, p2}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object p1, p4, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    return p3

    :cond_4
    iget-object p1, p4, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʽⁱ/ﹳᐧ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    return v0
.end method

.method public final ˈ(Z)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Lˏʻ/ᵔᵢ;->ˈ(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˏʻ/ᵎﹶ;->ᵔʾ:Z

    :cond_0
    return-void
.end method

.method public final ⁱˊ(Lᐧˎ/ﹳᐧ;)J
    .locals 4

    .prologue
    iget-object p1, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-byte v0, p1, v3

    :cond_0
    invoke-static {v1, v0}, Lˊﾞ/ﹳٴ;->ˉʿ(BB)J

    move-result-wide v0

    iget p1, p0, Lˏʻ/ᵔᵢ;->ʼˎ:I

    int-to-long v2, p1

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method
