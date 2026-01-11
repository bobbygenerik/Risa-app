.class public final Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ⁱˊ:I

.field public final ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ˆʾ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public static ʾᵎ(I)V
    .locals 0

    .prologue
    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static ـˆ(I)V
    .locals 0

    .prologue
    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final ʻٴ(I)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ʼˎ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 5

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int v4, v1, p1

    :cond_4
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final ʼᐧ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 3

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ʽ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞʻ(I)I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ᵎﹶ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ(I)V

    iget p1, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˆʾ(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽﹳ(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ᵎﹶ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final ˆʾ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 6

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʾᵎ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʾᵎ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ˈ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 3

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ˈ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ˈ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˈ;->ⁱˊ(Z)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˈ;->ⁱˊ(Z)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ˉʿ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 5

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ˉˆ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 6

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʾᵎ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʾᵎ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ˏי(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 5

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉˆ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    return-object v0
.end method

.method public final יـ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 3

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ٴﹶ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 5

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/יـ;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/יـ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/יـ;->ⁱˊ(F)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int v4, v1, p1

    :cond_4
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/יـ;->ⁱˊ(F)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final ᵎﹶ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 6

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʾᵎ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;->ⁱˊ(D)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/ˉʿ;->ⁱˊ(D)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʾᵎ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ᵔʾ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 5

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int v4, v1, p1

    :cond_4
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_9
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 3

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ᵔﹳ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 5

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵᵔ;->ⁱˊ(J)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ⁱˊ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/ˈⁱ;->ᵎﹶ(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    iget p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ:I

    throw p1
.end method

.method public final ﹳٴ()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    :goto_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽ:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final ﹳᐧ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;Z)V
    .locals 3

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵˊ()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʻٴ(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾˋ()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 3

    .prologue
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ʾᵎ;->ⁱˊ(I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result p1

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ʽﹳ(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ﾞᴵ(Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;)V
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˑﹳ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->ʽ()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method
