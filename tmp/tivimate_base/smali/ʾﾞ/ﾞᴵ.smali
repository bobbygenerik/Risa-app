.class public final Lʾﾞ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:[Ljava/nio/ByteBuffer;

.field public ˈ:Z

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Lʼʻ/ᵎⁱ;


# direct methods
.method public constructor <init>(Lʼʻ/ᵎⁱ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾﾞ/ﾞᴵ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʾﾞ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    sget-object v0, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-boolean p1, p0, Lʾﾞ/ﾞᴵ;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʾﾞ/ﾞᴵ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾﾞ/ﾞᴵ;

    iget-object p1, p1, Lʾﾞ/ﾞᴵ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    iget-object v1, p0, Lʾﾞ/ﾞᴵ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lʾﾞ/ﾞᴵ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0}, Lʼʻ/ᵎⁱ;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ʽ()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Lʾﾞ/ﾞᴵ;->ˈ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʾﾞ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lʾﾞ/ﾞᴵ;->ⁱˊ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾﾞ/ᵔᵢ;

    invoke-interface {v0}, Lʾﾞ/ᵔᵢ;->ⁱˊ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lʾﾞ/ﾞᴵ;->ⁱˊ()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()Z
    .locals 1

    iget-object v0, p0, Lʾﾞ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final ˑﹳ(Ljava/nio/ByteBuffer;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lʾﾞ/ﾞᴵ;->ⁱˊ()I

    move-result v4

    if-gt v3, v4, :cond_7

    iget-object v4, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v4, p0, Lʾﾞ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʾﾞ/ᵔᵢ;

    invoke-interface {v5}, Lʾﾞ/ᵔᵢ;->ⁱˊ()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lʾﾞ/ﾞᴵ;->ⁱˊ()I

    move-result v5

    if-ge v3, v5, :cond_6

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾﾞ/ᵔᵢ;

    invoke-interface {v4}, Lʾﾞ/ᵔᵢ;->ˑﹳ()V

    goto :goto_5

    :cond_1
    if-lez v3, :cond_2

    iget-object v4, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v3, -0x1

    aget-object v4, v4, v6

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p1

    goto :goto_2

    :cond_3
    sget-object v4, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    :goto_2
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v4}, Lʾﾞ/ᵔᵢ;->ﾞᴵ(Ljava/nio/ByteBuffer;)V

    iget-object v8, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lʾﾞ/ᵔᵢ;->ˈ()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gtz v4, :cond_5

    iget-object v4, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v0

    :goto_4
    or-int/2addr v2, v4

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final ⁱˊ()I
    .locals 1

    iget-object v0, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final ﹳٴ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lʾﾞ/ﾞᴵ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lʾﾞ/ﾞᴵ;->ˈ:Z

    move v2, v1

    :goto_0
    iget-object v3, p0, Lʾﾞ/ﾞᴵ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʾﾞ/ᵔᵢ;

    invoke-interface {v3}, Lʾﾞ/ᵔᵢ;->flush()V

    invoke-interface {v3}, Lʾﾞ/ᵔᵢ;->ʽ()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {p0}, Lʾﾞ/ﾞᴵ;->ⁱˊ()I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lʾﾞ/ﾞᴵ;->ʽ:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʾﾞ/ᵔᵢ;

    invoke-interface {v3}, Lʾﾞ/ᵔᵢ;->ˈ()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
