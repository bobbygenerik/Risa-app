.class public Lcom/rapid7/helper/smbj/io/SMB2Exception;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lٴˎ/ﹳٴ;


# direct methods
.method public constructor <init>(Lʼﹳ/ٴﹶ;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p1, Lʼﹳ/ٴﹶ;->ˑﹳ:Lʼﹳ/ﾞʻ;

    iget-wide v1, p1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p2, v4, v0

    const-string p2, "%s returned %s (%d/%d): %s"

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-wide p1, p1, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {p1, p2}, Lٴˎ/ﹳٴ;->ⁱˊ(J)Lٴˎ/ﹳٴ;

    move-result-object p1

    iput-object p1, p0, Lcom/rapid7/helper/smbj/io/SMB2Exception;->ʾˋ:Lٴˎ/ﹳٴ;

    return-void
.end method
