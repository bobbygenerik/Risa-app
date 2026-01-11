.class public final Lᵢᵢ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˎ/ﹳٴ;


# static fields
.field public static final ᴵˊ:Ljava/util/HashMap;


# instance fields
.field public final ʾˋ:Lʻˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lᵢᵢ/ˈ;->ᴵˊ:Ljava/util/HashMap;

    new-instance v1, Lᵢᵢ/ⁱˊ;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lᵢᵢ/ⁱˊ;-><init>(I)V

    const-string v2, "HMACSHA256"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lᵢᵢ/ⁱˊ;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lᵢᵢ/ⁱˊ;-><init>(I)V

    const-string v2, "HMACMD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lᵢᵢ/ˈ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵʿ/ˑﹳ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lᴵʿ/ˑﹳ;->ﹳٴ()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʻˑ/ⁱˊ;

    iput-object p1, p0, Lᵢᵢ/ˈ;->ʾˋ:Lʻˑ/ⁱˊ;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Mac defined for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final update([B)V
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lᵢᵢ/ˈ;->ʾˋ:Lʻˑ/ⁱˊ;

    check-cast v1, Lﹳˉ/ﹳٴ;

    iget-object v1, v1, Lﹳˉ/ﹳٴ;->ﹳٴ:Lᵔʿ/ﹳٴ;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    return-void
.end method

.method public final update([BII)V
    .locals 1

    iget-object v0, p0, Lᵢᵢ/ˈ;->ʾˋ:Lʻˑ/ⁱˊ;

    check-cast v0, Lﹳˉ/ﹳٴ;

    iget-object v0, v0, Lﹳˉ/ﹳٴ;->ﹳٴ:Lᵔʿ/ﹳٴ;

    invoke-virtual {v0, p1, p2, p3}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    return-void
.end method

.method public final ˉʿ([B)V
    .locals 7

    .prologue
    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lᵢᵢ/ˈ;->ʾˋ:Lʻˑ/ⁱˊ;

    check-cast p1, Lﹳˉ/ﹳٴ;

    iget-object v3, p1, Lﹳˉ/ﹳٴ;->ᵎﹶ:[B

    iget-object v4, p1, Lﹳˉ/ﹳٴ;->ﾞᴵ:[B

    iget-object v5, p1, Lﹳˉ/ﹳٴ;->ﹳٴ:Lᵔʿ/ﹳٴ;

    invoke-virtual {v5}, Lᵔʿ/ﹳٴ;->ʼˎ()V

    iget v6, p1, Lﹳˉ/ﹳٴ;->ʽ:I

    if-le v0, v6, :cond_0

    invoke-virtual {v5, v1, v2, v0}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    invoke-virtual {v5, v2, v4}, Lᵔʿ/ﹳٴ;->ʽ(I[B)I

    iget v0, p1, Lﹳˉ/ﹳٴ;->ⁱˊ:I

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_1

    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_2

    aget-byte v1, v4, v0

    xor-int/lit8 v1, v1, 0x36

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_2
    if-ge v0, v6, :cond_3

    aget-byte v1, v3, v0

    xor-int/lit8 v1, v1, 0x5c

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lᵔʿ/ﹳٴ;->ﹳٴ()Lᵔʿ/ﹳٴ;

    move-result-object v0

    iput-object v0, p1, Lﹳˉ/ﹳٴ;->ˑﹳ:Lᵔʿ/ﹳٴ;

    invoke-virtual {v0, v3, v2, v6}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    array-length v0, v4

    invoke-virtual {v5, v4, v2, v0}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    invoke-virtual {v5}, Lᵔʿ/ﹳٴ;->ﹳٴ()Lᵔʿ/ﹳٴ;

    move-result-object v0

    iput-object v0, p1, Lﹳˉ/ﹳٴ;->ˈ:Lᵔʿ/ﹳٴ;

    return-void
.end method

.method public final ᵔᵢ(B)V
    .locals 1

    iget-object v0, p0, Lᵢᵢ/ˈ;->ʾˋ:Lʻˑ/ⁱˊ;

    check-cast v0, Lﹳˉ/ﹳٴ;

    iget-object v0, v0, Lﹳˉ/ﹳٴ;->ﹳٴ:Lᵔʿ/ﹳٴ;

    invoke-virtual {v0, p1}, Lᵔʿ/ﹳٴ;->ٴﹶ(B)V

    return-void
.end method

.method public final ﾞᴵ()[B
    .locals 7

    .prologue
    iget-object v0, p0, Lᵢᵢ/ˈ;->ʾˋ:Lʻˑ/ⁱˊ;

    check-cast v0, Lﹳˉ/ﹳٴ;

    iget v1, v0, Lﹳˉ/ﹳٴ;->ⁱˊ:I

    new-array v1, v1, [B

    iget-object v2, v0, Lﹳˉ/ﹳٴ;->ﹳٴ:Lᵔʿ/ﹳٴ;

    iget-object v3, v0, Lﹳˉ/ﹳٴ;->ᵎﹶ:[B

    iget v4, v0, Lﹳˉ/ﹳٴ;->ʽ:I

    invoke-virtual {v2, v4, v3}, Lᵔʿ/ﹳٴ;->ʽ(I[B)I

    iget-object v5, v0, Lﹳˉ/ﹳٴ;->ˑﹳ:Lᵔʿ/ﹳٴ;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Lᵔʿ/ﹳٴ;->ˆʾ(Lᵔʿ/ﹳٴ;)V

    invoke-virtual {v2}, Lᵔʿ/ﹳٴ;->ˑﹳ()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    goto :goto_0

    :cond_0
    array-length v5, v3

    invoke-virtual {v2, v3, v6, v5}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    :goto_0
    invoke-virtual {v2, v6, v1}, Lᵔʿ/ﹳٴ;->ʽ(I[B)I

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lﹳˉ/ﹳٴ;->ˈ:Lᵔʿ/ﹳٴ;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Lᵔʿ/ﹳٴ;->ˆʾ(Lᵔʿ/ﹳٴ;)V

    return-object v1

    :cond_2
    iget-object v0, v0, Lﹳˉ/ﹳٴ;->ﾞᴵ:[B

    array-length v3, v0

    invoke-virtual {v2, v0, v6, v3}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    return-object v1
.end method
