.class public Lcom/hierynomus/smbj/session/SMB2GuestSigningRequiredException;
.super Lcom/hierynomus/smbj/common/SMBRuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Cannot require message signing when authenticating with a guest account"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
