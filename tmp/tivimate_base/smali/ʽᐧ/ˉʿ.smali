.class public final Lʽᐧ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ٴᵢ;


# instance fields
.field public ʼˎ:Z

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:Lʽᐧ/ﾞʻ;

.field public ᵔᵢ:Lʽⁱ/ﹳᐧ;

.field public final ⁱˊ:Lʽᐧ/ˆʾ;

.field public final ﹳٴ:Lˊﾞ/ٴᵢ;

.field public ﾞᴵ:[B


# direct methods
.method public constructor <init>(Lˊﾞ/ٴᵢ;Lʽᐧ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᐧ/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    iput-object p2, p0, Lʽᐧ/ˉʿ;->ⁱˊ:Lʽᐧ/ˆʾ;

    const/4 p1, 0x0

    iput p1, p0, Lʽᐧ/ˉʿ;->ˈ:I

    iput p1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    sget-object p1, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    iput-object p1, p0, Lʽᐧ/ˉʿ;->ﾞᴵ:[B

    new-instance p1, Lᐧˎ/ﹳᐧ;

    invoke-direct {p1}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object p1, p0, Lʽᐧ/ˉʿ;->ʽ:Lᐧˎ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ˆʾ;IZ)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lʽᐧ/ˉʿ;->ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    return p1
.end method

.method public final ˈ(Lʽⁱ/ﹳᐧ;)V
    .locals 6

    .prologue
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iget-object v1, p0, Lʽᐧ/ˉʿ;->ᵔᵢ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p1, v1}, Lʽⁱ/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lʽᐧ/ˉʿ;->ⁱˊ:Lʽᐧ/ˆʾ;

    if-nez v1, :cond_2

    iput-object p1, p0, Lʽᐧ/ˉʿ;->ᵔᵢ:Lʽⁱ/ﹳᐧ;

    invoke-interface {v2, p1}, Lʽᐧ/ˆʾ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, p1}, Lʽᐧ/ˆʾ;->ﹳᐧ(Lʽⁱ/ﹳᐧ;)Lʽᐧ/ﾞʻ;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lʽᐧ/ˉʿ;->ᵎﹶ:Lʽᐧ/ﾞʻ;

    :cond_2
    iget-object v1, p0, Lʽᐧ/ˉʿ;->ᵎﹶ:Lʽᐧ/ﾞʻ;

    iget-object v3, p0, Lʽᐧ/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    if-nez v1, :cond_3

    invoke-interface {v3, p1}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v1

    const-string v4, "application/x-media3-cues"

    invoke-static {v4}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput-object v0, v1, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v1, Lʽⁱ/ᵔﹳ;->ﹳᐧ:J

    invoke-interface {v2, p1}, Lʽᐧ/ˆʾ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result p1

    iput p1, v1, Lʽⁱ/ᵔﹳ;->ᵎˊ:I

    invoke-static {v1, v3}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    return-void
.end method

.method public final synthetic ˑﹳ(ILᐧˎ/ﹳᐧ;)V
    .locals 0

    invoke-static {p0, p2, p1}, Lˉˆ/ٴᴵ;->ﹳٴ(Lˊﾞ/ٴᵢ;Lᐧˎ/ﹳᐧ;I)V

    return-void
.end method

.method public final ᵎﹶ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽᐧ/ˉʿ;->ﾞᴵ:[B

    array-length v0, v0

    iget v1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lʽᐧ/ˉʿ;->ˈ:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lʽᐧ/ˉʿ;->ﾞᴵ:[B

    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-array p1, p1, [B

    :goto_0
    iget v2, p0, Lʽᐧ/ˉʿ;->ˈ:I

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lʽᐧ/ˉʿ;->ˈ:I

    iput v1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    iput-object p1, p0, Lʽᐧ/ˉʿ;->ﾞᴵ:[B

    return-void
.end method

.method public final ⁱˊ(Lᐧˎ/ﹳᐧ;II)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʽᐧ/ˉʿ;->ᵎﹶ:Lʽᐧ/ﾞʻ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽᐧ/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    invoke-interface {v0, p1, p2, p3}, Lˊﾞ/ٴᵢ;->ⁱˊ(Lᐧˎ/ﹳᐧ;II)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lʽᐧ/ˉʿ;->ᵎﹶ(I)V

    iget-object p3, p0, Lʽᐧ/ˉʿ;->ﾞᴵ:[B

    iget v0, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    invoke-virtual {p1, p3, v0, p2}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget p1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    add-int/2addr p1, p2

    iput p1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    return-void
.end method

.method public final ﹳٴ(JIIILˊﾞ/ˊʻ;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lʽᐧ/ˉʿ;->ᵎﹶ:Lʽᐧ/ﾞʻ;

    if-nez v0, :cond_0

    iget-object v1, p0, Lʽᐧ/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return-void

    :cond_0
    move-wide v2, p1

    move v4, p3

    move v6, p5

    move-object v7, p6

    const/4 v1, 0x0

    if-nez v7, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    const-string p2, "DRM on subtitles is not supported"

    invoke-static {p2, p1}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    iget p1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    sub-int/2addr p1, v6

    sub-int p3, p1, p4

    :try_start_0
    iget-object p1, p0, Lʽᐧ/ˉʿ;->ᵎﹶ:Lʽᐧ/ﾞʻ;

    iget-object p2, p0, Lʽᐧ/ˉʿ;->ﾞᴵ:[B

    sget-object p5, Lʽᐧ/ٴﹶ;->ʽ:Lʽᐧ/ٴﹶ;

    new-instance p6, Lʻʿ/ʼˎ;

    invoke-direct {p6, p0, v2, v3, v4}, Lʻʿ/ʼˎ;-><init>(Lʽᐧ/ˉʿ;JI)V

    invoke-interface/range {p1 .. p6}, Lʽᐧ/ﾞʻ;->ﹳٴ([BIILʽᐧ/ٴﹶ;Lᐧˎ/ﾞᴵ;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-boolean p2, p0, Lʽᐧ/ˉʿ;->ʼˎ:Z

    if-eqz p2, :cond_3

    const-string p2, "SubtitleTranscodingTO"

    const-string p5, "Parsing subtitles failed, ignoring sample."

    invoke-static {p2, p5, p1}, Lᐧˎ/ﹳٴ;->ᴵᵔ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/2addr p3, p4

    iput p3, p0, Lʽᐧ/ˉʿ;->ˈ:I

    iget p1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    if-ne p3, p1, :cond_2

    iput v1, p0, Lʽᐧ/ˉʿ;->ˈ:I

    iput v1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    :cond_2
    return-void

    :cond_3
    throw p1
.end method

.method public final ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I
    .locals 2

    .prologue
    iget-object v0, p0, Lʽᐧ/ˉʿ;->ᵎﹶ:Lʽᐧ/ﾞʻ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽᐧ/ˉʿ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    invoke-interface {v0, p1, p2, p3}, Lˊﾞ/ٴᵢ;->ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lʽᐧ/ˉʿ;->ᵎﹶ(I)V

    iget-object v0, p0, Lʽᐧ/ˉʿ;->ﾞᴵ:[B

    iget v1, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    invoke-interface {p1, v0, v1, p2}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    add-int/2addr p2, p1

    iput p2, p0, Lʽᐧ/ˉʿ;->ˑﹳ:I

    return p1
.end method
