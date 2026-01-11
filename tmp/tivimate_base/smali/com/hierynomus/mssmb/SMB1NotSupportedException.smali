.class public Lcom/hierynomus/mssmb/SMB1NotSupportedException;
.super Lcom/hierynomus/protocol/transport/TransportException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SMBv1 is not supported by SMBJ"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
