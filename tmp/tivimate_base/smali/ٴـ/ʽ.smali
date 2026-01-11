.class public abstract Lٴـ/ʽ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lٴـ/ⁱˊ;

.field public final ᴵˊ:[B


# direct methods
.method public constructor <init>(Lٴـ/ⁱˊ;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lٴـ/ʽ;->ᴵˊ:[B

    iput-object p1, p0, Lٴـ/ʽ;->ʾˋ:Lٴـ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lٴـ/ʽ;->ʾˋ:Lٴـ/ⁱˊ;

    invoke-virtual {v0}, Lٴـ/ⁱˊ;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    .prologue
    iget-object v0, p0, Lٴـ/ʽ;->ᴵˊ:[B

    invoke-virtual {p0, v0}, Lٴـ/ʽ;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ʽ;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lٴـ/ʽ;->ʾˋ:Lٴـ/ⁱˊ;

    invoke-virtual {v0, p1, p2, p3}, Lٴـ/ⁱˊ;->read([BII)I

    move-result p1

    return p1
.end method

.method public ʽ(Ljava/io/InputStream;I)V
    .locals 1

    iget-object v0, p0, Lٴـ/ʽ;->ʾˋ:Lٴـ/ⁱˊ;

    invoke-virtual {v0, p1, p2}, Lٴـ/ⁱˊ;->ʽ(Ljava/io/InputStream;I)V

    return-void
.end method

.method public ᵎﹶ(Ljava/io/PushbackInputStream;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
