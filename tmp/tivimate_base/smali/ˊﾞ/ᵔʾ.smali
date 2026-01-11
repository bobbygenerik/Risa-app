.class public final Lˊﾞ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ٴᵢ;


# instance fields
.field public final ﹳٴ:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lˊﾞ/ᵔʾ;->ﹳٴ:[B

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ˆʾ;IZ)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lˊﾞ/ᵔʾ;->ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I

    move-result p1

    return p1
.end method

.method public final ˈ(Lʽⁱ/ﹳᐧ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˑﹳ(ILᐧˎ/ﹳᐧ;)V
    .locals 0

    invoke-static {p0, p2, p1}, Lˉˆ/ٴᴵ;->ﹳٴ(Lˊﾞ/ٴᵢ;Lᐧˎ/ﹳᐧ;I)V

    return-void
.end method

.method public final ⁱˊ(Lᐧˎ/ﹳᐧ;II)V
    .locals 0

    invoke-virtual {p1, p2}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    return-void
.end method

.method public final ﹳٴ(JIIILˊﾞ/ˊʻ;)V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lʽⁱ/ˆʾ;IZ)I
    .locals 2

    .prologue
    iget-object v0, p0, Lˊﾞ/ᵔʾ;->ﹳٴ:[B

    array-length v1, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method
