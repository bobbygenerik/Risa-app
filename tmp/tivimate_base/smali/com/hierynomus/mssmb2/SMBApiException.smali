.class public Lcom/hierynomus/mssmb2/SMBApiException;
.super Lcom/hierynomus/smbj/common/SMBRuntimeException;
.source "SourceFile"


# instance fields
.field public final ᴵˊ:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-wide p1, p0, Lcom/hierynomus/mssmb2/SMBApiException;->ᴵˊ:J

    return-void
.end method

.method public constructor <init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-wide p1, p1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    iput-wide p1, p0, Lcom/hierynomus/mssmb2/SMBApiException;->ᴵˊ:J

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/hierynomus/mssmb2/SMBApiException;->ᴵˊ:J

    invoke-static {v0, v1}, Lٴˎ/ﹳٴ;->ⁱˊ(J)Lٴˎ/ﹳٴ;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v0, "%s (0x%08x): %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
