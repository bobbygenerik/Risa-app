.class public abstract Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ʽʽ:Lcom/google/crypto/tink/shaded/protobuf/ˑﹳ;

.field public static final ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;


# instance fields
.field public ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ:[B

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;-><init>([B)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ʽ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˑﹳ;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ˑﹳ;-><init>(I)V

    :goto_0
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ʽʽ:Lcom/google/crypto/tink/shaded/protobuf/ˑﹳ;

    return-void
.end method

.method public static ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;
    .locals 3

    .prologue
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ⁱˊ(III)I

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ʽʽ:Lcom/google/crypto/tink/shaded/protobuf/ˑﹳ;

    iget v1, v1, Lcom/google/crypto/tink/shaded/protobuf/ˑﹳ;->ﹳٴ:I

    packed-switch v1, :pswitch_data_0

    new-array v1, p2, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :pswitch_0
    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;-><init>([B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static ⁱˊ(III)I
    .locals 3

    .prologue
    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Beginning index larger than ending index: "

    const-string v1, ", "

    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "End index: "

    const-string v1, " >= "

    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    invoke-static {p0, p2, v0}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ʾˋ:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v0

    move-object v1, p0

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v2

    move v4, v0

    move v3, v2

    :goto_0
    add-int v5, v2, v0

    if-ge v3, v5, :cond_0

    mul-int/lit8 v4, v4, 0x1f

    iget-object v5, v1, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    aget-byte v5, v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput v4, p0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ʾˋ:I

    return v4

    :cond_2
    return v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/ʽ;->ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p0

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->size()I

    move-result v5

    const/16 v6, 0x2f

    invoke-static {v4, v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ⁱˊ(III)I

    move-result v4

    if-nez v4, :cond_1

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;

    iget-object v6, v3, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ˈٴ:[B

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;->ᵎﹶ()I

    move-result v3

    invoke-direct {v5, v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ﾞᴵ;-><init>([BII)V

    move-object v3, v5

    :goto_0
    invoke-static {v3}, Lcom/bumptech/glide/ʽ;->ˑﹳ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<ByteString@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contents=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-static {v3, v2, v0}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract ˑﹳ(I[B)V
.end method

.method public abstract ﹳٴ(I)B
.end method

.method public final ﾞᴵ()[B
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ʾˋ;->ⁱˊ:[B

    return-object v0

    :cond_0
    new-array v1, v0, [B

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˑﹳ(I[B)V

    return-object v1
.end method
