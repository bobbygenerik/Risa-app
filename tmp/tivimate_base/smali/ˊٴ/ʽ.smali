.class public abstract Lˊٴ/ʽ;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lˊٴ/ⁱˊ;


# direct methods
.method public constructor <init>(Lˊٴ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lˊٴ/ʽ;->ʾˋ:Lˊٴ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lˊٴ/ʽ;->ʾˋ:Lˊٴ/ⁱˊ;

    invoke-virtual {v0}, Lˊٴ/ⁱˊ;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lˊٴ/ʽ;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lˊٴ/ʽ;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lˊٴ/ʽ;->ʾˋ:Lˊٴ/ⁱˊ;

    invoke-virtual {v0, p1, p2, p3}, Lˊٴ/ⁱˊ;->write([BII)V

    return-void
.end method

.method public ʽ()V
    .locals 1

    iget-object v0, p0, Lˊٴ/ʽ;->ʾˋ:Lˊٴ/ⁱˊ;

    invoke-virtual {v0}, Lˊٴ/ⁱˊ;->ʽ()V

    return-void
.end method
