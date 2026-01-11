.class public final Lﹶˊ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/nio/charset/Charset;


# instance fields
.field public final ⁱˊ:Lﾞˎ/ʽ;

.field public final ﹳٴ:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    sput-object v0, Lﹶˊ/ﹳٴ;->ʽ:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Lﾞˎ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˊ/ﹳٴ;->ﹳٴ:Ljava/util/Random;

    iput-object p2, p0, Lﹶˊ/ﹳٴ;->ⁱˊ:Lﾞˎ/ʽ;

    return-void
.end method


# virtual methods
.method public final varargs ⁱˊ([B[[B)[B
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lﹶˊ/ﹳٴ;->ⁱˊ:Lﾞˎ/ʽ;

    const-string v1, "HmacMD5"

    invoke-interface {v0, v1}, Lﾞˎ/ʽ;->ˈ(Ljava/lang/String;)Lﾞˎ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1}, Lﾞˎ/ﹳٴ;->ˉʿ([B)V

    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    invoke-interface {v0, v2}, Lﾞˎ/ﹳٴ;->update([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lﾞˎ/ﹳٴ;->ﾞᴵ()[B

    move-result-object p1
    :try_end_0
    .catch Lcom/hierynomus/security/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Lcom/hierynomus/ntlm/NtlmException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final ﹳٴ([B)[B
    .locals 8

    .prologue
    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lﹶˊ/ﹳٴ;->ﹳٴ:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    const-wide v4, 0x19db1ded53e8000L

    add-long/2addr v2, v4

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-array p1, v4, [B

    :cond_0
    new-instance v5, Lˎʿ/ﹳٴ;

    invoke-direct {v5}, Lˎʿ/ⁱˊ;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {v5, v6}, Lˎʿ/ⁱˊ;->ˈ(B)Lˎʿ/ⁱˊ;

    invoke-virtual {v5, v4}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    sget-object v4, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    invoke-virtual {v4, v5, v2, v3}, Lˎʿ/ʽ;->ﾞᴵ(Lˎʿ/ⁱˊ;J)V

    invoke-virtual {v5, v0, v1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    invoke-virtual {v5, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    array-length v0, p1

    invoke-virtual {v5, v0, p1}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    invoke-virtual {v5, v6, v7}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    invoke-virtual {v5}, Lˎʿ/ⁱˊ;->ⁱˊ()[B

    move-result-object p1

    return-object p1
.end method
