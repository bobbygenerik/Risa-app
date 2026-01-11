.class public Lorg/tukaani/xz/XZFormatException;
.super Lorg/tukaani/xz/XZIOException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Input is not in the XZ format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
