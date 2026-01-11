.class public final Lˆʻ/ⁱˊ;
.super Lˆʻ/ˆʾ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lˆʻ/ˆʾ;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lˆʻ/ⁱˊ;->ⁱˊ:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lˆʻ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˆʻ/ⁱˊ;

    iget-object v2, p0, Lˆʻ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lˆʻ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˆʻ/ⁱˊ;->ⁱˊ:[B

    iget-object p1, p1, Lˆʻ/ⁱˊ;->ⁱˊ:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lˆʻ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    const/16 v1, 0x1f

    const/16 v2, 0x20f

    invoke-static {v2, v1, v0}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lˆʻ/ⁱˊ;->ⁱˊ:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
