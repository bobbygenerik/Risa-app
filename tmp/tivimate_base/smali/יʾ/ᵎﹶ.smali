.class public final Lיʾ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽי/ˑﹳ;


# static fields
.field public static final ᵎﹶ:Lˎᵢ/ˉˆ;


# instance fields
.field public final ʽ:Lˊᐧ/ᵔᵢ;

.field public final ˈ:Lˊᐧ/ᵎﹶ;

.field public ˑﹳ:I

.field public final ⁱˊ:Lʽי/ˈ;

.field public final ﹳٴ:Lˎᵢ/ʻٴ;

.field public final ﾞᴵ:Lʿʽ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OkHttp-Response-Body"

    const-string v1, "Truncated"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lˈˆ/ﾞᴵ;->ᵎˊ([Ljava/lang/String;)Lˎᵢ/ˉˆ;

    move-result-object v0

    sput-object v0, Lיʾ/ᵎﹶ;->ᵎﹶ:Lˎᵢ/ˉˆ;

    return-void
.end method

.method public constructor <init>(Lˎᵢ/ʻٴ;Lʽי/ˈ;Lˊᐧ/ᵔᵢ;Lˊᐧ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʾ/ᵎﹶ;->ﹳٴ:Lˎᵢ/ʻٴ;

    iput-object p2, p0, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    iput-object p3, p0, Lיʾ/ᵎﹶ;->ʽ:Lˊᐧ/ᵔᵢ;

    iput-object p4, p0, Lיʾ/ᵎﹶ;->ˈ:Lˊᐧ/ᵎﹶ;

    new-instance p1, Lʿʽ/ʽ;

    invoke-direct {p1, p3}, Lʿʽ/ʽ;-><init>(Lˊᐧ/ᵔᵢ;)V

    iput-object p1, p0, Lיʾ/ᵎﹶ;->ﾞᴵ:Lʿʽ/ʽ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    invoke-interface {v0}, Lʽי/ˈ;->cancel()V

    return-void
.end method

.method public final ʼˎ(Z)Lˎᵢ/ᴵˊ;
    .locals 7

    .prologue
    iget-object v0, p0, Lיʾ/ᵎﹶ;->ﾞᴵ:Lʿʽ/ʽ;

    iget v1, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, Lʿʽ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˊᐧ/ᵔᵢ;

    iget-wide v3, v0, Lʿʽ/ʽ;->ᴵˊ:J

    invoke-interface {v1, v3, v4}, Lˊᐧ/ᵔᵢ;->ˊˋ(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v3, v0, Lʿʽ/ʽ;->ᴵˊ:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lʿʽ/ʽ;->ᴵˊ:J

    invoke-static {v1}, Lᴵˋ/ˊʻ;->ˊʻ(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    new-instance v4, Lˎᵢ/ᴵˊ;

    invoke-direct {v4}, Lˎᵢ/ᴵˊ;-><init>()V

    iget-object v5, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lˎᵢ/ـˆ;

    iput-object v5, v4, Lˎᵢ/ᴵˊ;->ⁱˊ:Lˎᵢ/ـˆ;

    iput v3, v4, Lˎᵢ/ᴵˊ;->ʽ:I

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lˎᵢ/ᴵˊ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0}, Lʿʽ/ʽ;->ᵔי()Lˎᵢ/ˉˆ;

    move-result-object v0

    invoke-virtual {v0}, Lˎᵢ/ˉˆ;->ˈ()Lʼٴ/ʼˎ;

    move-result-object v0

    iput-object v0, v4, Lˎᵢ/ᴵˊ;->ﾞᴵ:Lʼٴ/ʼˎ;

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v3, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-ne v3, v0, :cond_3

    iput v2, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x66

    if-gt p1, v3, :cond_4

    const/16 p1, 0xc8

    if-ge v3, p1, :cond_4

    iput v2, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    return-object v4

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    iget-object v0, p0, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    invoke-interface {v0}, Lʽי/ˈ;->ﾞᴵ()Lˎᵢ/ˊʻ;

    move-result-object v0

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v0}, Lˎᵢ/ʼᐧ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-static {v2, v0}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ʽ(Lˎᵢ/ʾᵎ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    invoke-interface {v0}, Lʽי/ˈ;->ﾞᴵ()Lˎᵢ/ˊʻ;

    move-result-object v0

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lˎᵢ/ʾᵎ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget-object v3, v2, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    const-string v4, "https"

    invoke-static {v3, v4}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lˎᵢ/ʼᐧ;->ⁱˊ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lˎᵢ/ʼᐧ;->ˈ()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    invoke-virtual {p0, p1, v0}, Lיʾ/ᵎﹶ;->ٴﹶ(Lˎᵢ/ˉˆ;Ljava/lang/String;)V

    return-void
.end method

.method public final ˆʾ(Lˎᵢ/ʼᐧ;J)Lיʾ/ˈ;
    .locals 2

    .prologue
    iget v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    new-instance v0, Lיʾ/ˈ;

    invoke-direct {v0, p0, p1, p2, p3}, Lיʾ/ˈ;-><init>(Lיʾ/ᵎﹶ;Lˎᵢ/ʼᐧ;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ˈ()V
    .locals 1

    iget-object v0, p0, Lיʾ/ᵎﹶ;->ˈ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0}, Lˊᐧ/ᵎﹶ;->flush()V

    return-void
.end method

.method public final ˑﹳ()Z
    .locals 2

    .prologue
    iget v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ٴﹶ(Lˎᵢ/ˉˆ;Ljava/lang/String;)V
    .locals 5

    .prologue
    iget v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lיʾ/ᵎﹶ;->ˈ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0, p2}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    move-result-object p2

    const-string v1, "\r\n"

    invoke-interface {p2, v1}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    invoke-virtual {p1}, Lˎᵢ/ˉˆ;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-virtual {p1, v2}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    move-result-object v3

    invoke-virtual {p1, v2}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    move-result-object v3

    invoke-interface {v3, v1}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lˊᐧ/ᵎﹶ;->ᐧᴵ(Ljava/lang/String;)Lˊᐧ/ᵎﹶ;

    const/4 p1, 0x1

    iput p1, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ᵎﹶ()Lʽי/ˈ;
    .locals 1

    iget-object v0, p0, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    return-object v0
.end method

.method public final ᵔᵢ(Lˎᵢ/ʽʽ;)J
    .locals 2

    .prologue
    invoke-static {p1}, Lʽי/ﾞᴵ;->ﹳٴ(Lˎᵢ/ʽʽ;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p1, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_2
    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ˑﹳ(Lˎᵢ/ʽʽ;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ⁱˊ(Lˎᵢ/ʾᵎ;J)Lˊᐧ/ʾˋ;
    .locals 5

    .prologue
    const-string v0, "Transfer-Encoding"

    iget-object p1, p1, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    invoke-virtual {p1, v0}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    if-ne p1, v2, :cond_0

    iput v1, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    new-instance p1, Lיʾ/ⁱˊ;

    invoke-direct {p1, p0}, Lיʾ/ⁱˊ;-><init>(Lיʾ/ᵎﹶ;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    iget p1, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    if-ne p1, v2, :cond_2

    iput v1, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    new-instance p1, Lיʾ/ˑﹳ;

    invoke-direct {p1, p0}, Lיʾ/ˑﹳ;-><init>(Lיʾ/ᵎﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ(Lˎᵢ/ʽʽ;)Lˊᐧ/ᴵˊ;
    .locals 9

    .prologue
    iget-object v0, p1, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    invoke-static {p1}, Lʽי/ﾞᴵ;->ﹳٴ(Lˎᵢ/ʽʽ;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, v0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lיʾ/ᵎﹶ;->ˆʾ(Lˎᵢ/ʼᐧ;J)Lיʾ/ˈ;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p1, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "state: "

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eqz v1, :cond_3

    iget-object p1, v0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    if-ne v0, v4, :cond_2

    iput v3, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    new-instance v0, Lיʾ/ʽ;

    invoke-direct {v0, p0, p1}, Lיʾ/ʽ;-><init>(Lיʾ/ᵎﹶ;Lˎᵢ/ʼᐧ;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ˑﹳ(Lˎᵢ/ʽʽ;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-eqz p1, :cond_4

    iget-object p1, v0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-virtual {p0, p1, v5, v6}, Lיʾ/ᵎﹶ;->ˆʾ(Lˎᵢ/ʼᐧ;J)Lיʾ/ˈ;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, v0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    if-ne v0, v4, :cond_5

    iput v3, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    iget-object v0, p0, Lיʾ/ᵎﹶ;->ⁱˊ:Lʽי/ˈ;

    invoke-interface {v0}, Lʽי/ˈ;->ᵔᵢ()V

    new-instance v0, Lיʾ/ﾞᴵ;

    invoke-direct {v0, p0, p1}, Lיʾ/ﹳٴ;-><init>(Lיʾ/ᵎﹶ;Lˎᵢ/ʼᐧ;)V

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lיʾ/ᵎﹶ;->ˑﹳ:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﾞᴵ()V
    .locals 1

    iget-object v0, p0, Lיʾ/ᵎﹶ;->ˈ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v0}, Lˊᐧ/ᵎﹶ;->flush()V

    return-void
.end method
