.class public final Lˋـ/ⁱˊ;
.super Lﹳⁱ/ᵎﹶ;
.source "SourceFile"

# interfaces
.implements Lʽᐧ/ˑﹳ;


# instance fields
.field public final ˉˆ:Lʽᐧ/ﾞʻ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lʽᐧ/ﾞʻ;)V
    .locals 4

    .prologue
    const/4 p1, 0x2

    new-array v0, p1, [Lʽᐧ/ᵔᵢ;

    new-array p1, p1, [Lʽᐧ/ʼˎ;

    invoke-direct {p0, v0, p1}, Lﹳⁱ/ᵎﹶ;-><init>([Lﹳⁱ/ˑﹳ;[Lﹳⁱ/ﾞᴵ;)V

    iget p1, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    array-length v1, v0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    array-length p1, v0

    :goto_1
    if-ge v2, p1, :cond_1

    aget-object v1, v0, v2

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Lﹳⁱ/ˑﹳ;->ʻٴ(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lˋـ/ⁱˊ;->ˉˆ:Lʽᐧ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 2

    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final ˆʾ(Lﹳⁱ/ˑﹳ;Lﹳⁱ/ﾞᴵ;Z)Landroidx/media3/decoder/DecoderException;
    .locals 7

    .prologue
    check-cast p1, Lʽᐧ/ᵔᵢ;

    check-cast p2, Lʽᐧ/ʼˎ;

    :try_start_0
    iget-object v0, p1, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v2, p0, Lˋـ/ⁱˊ;->ˉˆ:Lʽᐧ/ﾞʻ;

    if-eqz p3, :cond_0

    invoke-interface {v2}, Lʽᐧ/ﾞʻ;->reset()V

    :cond_0
    const/4 p3, 0x0

    invoke-interface {v2, v1, p3, v0}, Lʽᐧ/ﾞʻ;->ⁱˊ([BII)Lʽᐧ/ˈ;

    move-result-object v0

    iget-wide v1, p1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-wide v3, p1, Lʽᐧ/ᵔᵢ;->ᵎˊ:J

    iput-wide v1, p2, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    iput-object v0, p2, Lʽᐧ/ʼˎ;->ˊʻ:Lʽᐧ/ˈ;

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    iput-wide v1, p2, Lʽᐧ/ʼˎ;->ٴᵢ:J

    iput-boolean p3, p2, Lﹳⁱ/ﾞᴵ;->ᴵᵔ:Z
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method public final ˈ(J)V
    .locals 0

    return-void
.end method

.method public final ᵎﹶ()Lﹳⁱ/ˑﹳ;
    .locals 1

    new-instance v0, Lʽᐧ/ᵔᵢ;

    invoke-direct {v0}, Lʽᐧ/ᵔᵢ;-><init>()V

    return-object v0
.end method

.method public final ᵔᵢ()Lﹳⁱ/ﾞᴵ;
    .locals 1

    new-instance v0, Lʽᐧ/ʽ;

    invoke-direct {v0, p0}, Lʽᐧ/ʽ;-><init>(Lˋـ/ⁱˊ;)V

    return-object v0
.end method
