.class public abstract Lⁱᵢ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽʽ:J

.field public final ʾˋ:Lʼﹳ/ʽ;

.field public final ˈٴ:J

.field public final ᴵˊ:Lיˆ/ʽ;


# direct methods
.method public constructor <init>(Lיˆ/ʽ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lיˆ/ʽ;->ˈٴ:Lٴٴ/ⁱˊ;

    iget-object v1, v0, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v1, v1, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/יـ;

    iget-object v1, v1, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lʼﹳ/ʽ;

    iput-object v1, p0, Lⁱᵢ/ﹳٴ;->ʾˋ:Lʼﹳ/ʽ;

    iput-object p1, p0, Lⁱᵢ/ﹳٴ;->ᴵˊ:Lיˆ/ʽ;

    iget-wide v1, p1, Lיˆ/ʽ;->ʾˋ:J

    iput-wide v1, p0, Lⁱᵢ/ﹳٴ;->ʽʽ:J

    iget-object p1, v0, Lٴٴ/ⁱˊ;->ٴʼ:Lˎﹳ/ⁱˊ;

    iget-wide v0, p1, Lˎﹳ/ⁱˊ;->ᵔʾ:J

    iput-wide v0, p0, Lⁱᵢ/ﹳٴ;->ˈٴ:J

    return-void
.end method


# virtual methods
.method public final ʽ(Lʼﹳ/ˉˆ;Ljava/util/EnumSet;)Lʼﹳ/ˉˆ;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lⁱᵢ/ﹳٴ;->ᴵˊ:Lיˆ/ʽ;

    invoke-virtual {v0, p1}, Lיˆ/ʽ;->ـˆ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-wide v0, p0, Lⁱᵢ/ﹳٴ;->ˈٴ:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lˋٴ/ⁱˊ;->ʾˋ:Lˋٴ/ˈ;

    invoke-virtual {p1, v0, v1, v2}, Lˋٴ/ˈ;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼﹳ/ˉˆ;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v0

    check-cast v0, Lʼﹳ/ٴﹶ;

    iget-wide v1, v0, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v1, v2}, Lٴˎ/ﹳٴ;->ⁱˊ(J)Lٴˎ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/rapid7/helper/smbj/io/SMB2Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/rapid7/helper/smbj/io/SMB2Exception;-><init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Ljava/nio/channels/InterruptedByTimeoutException;

    invoke-direct {p2}, Ljava/nio/channels/InterruptedByTimeoutException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/nio/channels/InterruptedByTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :goto_2
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_3
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    goto :goto_4

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_4
    throw p1
.end method
