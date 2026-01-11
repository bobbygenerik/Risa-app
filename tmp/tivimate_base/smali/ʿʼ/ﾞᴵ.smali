.class public final Lʿʼ/ﾞᴵ;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final ᵎⁱ:Lﾞʼ/ﹳٴ;


# instance fields
.field public ʽʽ:J

.field public final ʾˋ:J

.field public ˈٴ:I

.field public final ˉٴ:I

.field public ˊʻ:Z

.field public ٴᵢ:Lˋٴ/ⁱˊ;

.field public ᴵˊ:Lʿʼ/ˑﹳ;

.field public ᴵᵔ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lʿʼ/ﾞᴵ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lʿʼ/ﾞᴵ;->ᵎⁱ:Lﾞʼ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Lʿʼ/ˑﹳ;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    const/4 v0, 0x0

    iput v0, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    iput-object p1, p0, Lʿʼ/ﾞᴵ;->ᴵˊ:Lʿʼ/ˑﹳ;

    iput p2, p0, Lʿʼ/ﾞᴵ;->ˉٴ:I

    iput-wide p3, p0, Lʿʼ/ﾞᴵ;->ʾˋ:J

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʼ/ﾞᴵ;->ˊʻ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵˊ:Lʿʼ/ˑﹳ;

    iput-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵᵔ:[B

    return-void
.end method

.method public final read()I
    .locals 3

    .prologue
    iget-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵᵔ:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lʿʼ/ﾞᴵ;->ʽ()V

    :cond_1
    iget-boolean v0, p0, Lʿʼ/ﾞᴵ;->ˊʻ:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    return v0

    :cond_2
    iget-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵᵔ:[B

    iget v1, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lʿʼ/ﾞᴵ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    iget-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵᵔ:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lʿʼ/ﾞᴵ;->ʽ()V

    :cond_1
    iget-boolean v0, p0, Lʿʼ/ﾞᴵ;->ˊʻ:Z

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    iget-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵᵔ:[B

    array-length v1, v0

    iget v2, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    sub-int/2addr v1, v2

    if-le v1, p3, :cond_3

    goto :goto_0

    :cond_3
    array-length p3, v0

    sub-int/2addr p3, v2

    :goto_0
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    add-int/2addr p1, p3

    iput p1, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    return p3
.end method

.method public final skip(J)J
    .locals 7

    .prologue
    iget-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵᵔ:[B

    if-nez v0, :cond_0

    iget-wide v0, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    return-wide p1

    :cond_0
    iget v1, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    array-length v3, v0

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    long-to-int v0, v1

    iput v0, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    return-wide p1

    :cond_1
    iget-wide v3, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    array-length v0, v0

    int-to-long v5, v0

    sub-long/2addr v1, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    const/4 v0, 0x0

    iput-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵᵔ:[B

    iput-object v0, p0, Lʿʼ/ﾞᴵ;->ٴᵢ:Lˋٴ/ⁱˊ;

    return-wide p1
.end method

.method public final ʽ()V
    .locals 9

    .prologue
    iget-boolean v0, p0, Lʿʼ/ﾞᴵ;->ˊʻ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lʿʼ/ﾞᴵ;->ٴᵢ:Lˋٴ/ⁱˊ;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lʿʼ/ﾞᴵ;->ᵎﹶ()Lˋٴ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lʿʼ/ﾞᴵ;->ٴᵢ:Lˋٴ/ⁱˊ;

    :cond_1
    iget-object v0, p0, Lʿʼ/ﾞᴵ;->ٴᵢ:Lˋٴ/ⁱˊ;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/hierynomus/protocol/transport/TransportException;->ʾˋ:Lᵎˉ/ⁱˊ;

    iget-wide v1, p0, Lʿʼ/ﾞᴵ;->ʾˋ:J

    invoke-static {v0, v1, v2}, Lˈˆ/ﾞᴵ;->ﹳᐧ(Lˋٴ/ⁱˊ;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˊʾ/ᵔﹳ;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˋʼ/ⁱˊ;

    check-cast v1, Lʼﹳ/ٴﹶ;

    iget-wide v1, v1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-object v5, v0, Lˊʾ/ᵔﹳ;->ٴᵢ:[B

    iput-object v5, p0, Lʿʼ/ﾞᴵ;->ᴵᵔ:[B

    const/4 v5, 0x0

    iput v5, p0, Lʿʼ/ﾞᴵ;->ˈٴ:I

    iget-wide v5, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    iget v7, v0, Lˊʾ/ᵔﹳ;->ˊʻ:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    :cond_2
    const-wide v5, 0xc0000011L

    cmp-long v5, v1, v5

    if-eqz v5, :cond_5

    iget v5, v0, Lˊʾ/ᵔﹳ;->ˊʻ:I

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lʿʼ/ﾞᴵ;->ᵎﹶ()Lˋٴ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lʿʼ/ﾞᴵ;->ٴᵢ:Lˋٴ/ⁱˊ;

    return-void

    :cond_4
    new-instance v1, Lcom/hierynomus/mssmb2/SMBApiException;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˋʼ/ⁱˊ;

    check-cast v0, Lʼﹳ/ٴﹶ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Read failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    iget-wide v0, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lʿʼ/ﾞᴵ;->ᵎⁱ:Lﾞʼ/ﹳٴ;

    const-string v2, "EOF, {} bytes read"

    invoke-interface {v1, v0, v2}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʼ/ﾞᴵ;->ˊʻ:Z

    return-void
.end method

.method public final ᵎﹶ()Lˋٴ/ⁱˊ;
    .locals 12

    iget-object v0, p0, Lʿʼ/ﾞᴵ;->ᴵˊ:Lʿʼ/ˑﹳ;

    iget-wide v8, p0, Lʿʼ/ﾞᴵ;->ʽʽ:J

    iget-object v11, v0, Lʿʼ/ʽ;->ᴵˊ:Lʿʼ/ˈ;

    iget-object v3, v0, Lʿʼ/ʽ;->ʽʽ:Lʼﹳ/ᵔᵢ;

    new-instance v1, Lˊʾ/ʼᐧ;

    iget-object v2, v11, Lʿʼ/ﾞʻ;->ᴵᵔ:Lʼﹳ/ʽ;

    iget-wide v4, v11, Lʿʼ/ﾞʻ;->ᵔי:J

    iget-wide v6, v11, Lʿʼ/ﾞʻ;->ʽʽ:J

    iget v0, v11, Lʿʼ/ﾞʻ;->ˊʻ:I

    iget v10, p0, Lʿʼ/ﾞᴵ;->ˉٴ:I

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lˊʾ/ʼᐧ;-><init>(Lʼﹳ/ʽ;Lʼﹳ/ᵔᵢ;JJJI)V

    invoke-virtual {v11, v1}, Lʿʼ/ﾞʻ;->ʽ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object v0

    return-object v0
.end method
