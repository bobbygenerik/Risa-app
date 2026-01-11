.class public final Lﹳﹳ/ﾞᴵ;
.super Lﹳﹳ/ⁱˊ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lﹳﹳ/ⁱˊ;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lﹳﹳ/ⁱˊ;->ʾˋ:Ljava/io/DataInputStream;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Lﹳﹳ/ⁱˊ;-><init>([B)V

    iget-object p1, p0, Lﹳﹳ/ⁱˊ;->ʾˋ:Ljava/io/DataInputStream;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(J)V
    .locals 3

    .prologue
    iget v0, p0, Lﹳﹳ/ⁱˊ;->ʽʽ:I

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lﹳﹳ/ⁱˊ;->ʽʽ:I

    iget-object v0, p0, Lﹳﹳ/ⁱˊ;->ʾˋ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    sub-long/2addr p1, v0

    :goto_0
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lﹳﹳ/ⁱˊ;->ʽ(I)V

    return-void
.end method
