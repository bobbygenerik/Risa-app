.class public Landroidx/datastore/preferences/protobuf/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ʽʽ:Landroidx/datastore/preferences/protobuf/ᵎﹶ;

.field public static final ˈٴ:Landroidx/datastore/preferences/protobuf/ˑﹳ;


# instance fields
.field public ʾˋ:I

.field public final ᴵˊ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ:[B

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;-><init>([B)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʽʽ:Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/ʽ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ˑﹳ;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ˑﹳ;-><init>(I)V

    :goto_0
    sput-object v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ˑﹳ;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʾˋ:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    return-void
.end method

.method public static ˈ([BII)Landroidx/datastore/preferences/protobuf/ᵎﹶ;
    .locals 3

    .prologue
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ⁱˊ(III)I

    new-instance v0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ˑﹳ;

    iget v1, v1, Landroidx/datastore/preferences/protobuf/ˑﹳ;->ﹳٴ:I

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
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;-><init>([B)V

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
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v0

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    if-eqz v0, :cond_9

    check-cast p1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʾˋ:I

    iget v1, p1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʾˋ:I

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v1

    if-gt v0, v1, :cond_8

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v1

    if-gt v0, v1, :cond_7

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ﾞᴵ()I

    move-result v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ﾞᴵ()I

    move-result p1

    :goto_0
    if-ge v0, v2, :cond_6

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    aget-byte v3, v3, v0

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_5

    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ran off end of other: 0, "

    const-string v3, ", "

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʾˋ:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ﾞᴵ()I

    move-result v1

    move v3, v0

    move v2, v1

    :goto_0
    add-int v4, v1, v0

    if-ge v2, v4, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    aget-byte v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput v3, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʾˋ:I

    return v3

    :cond_2
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/ˈ;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/ˈ;-><init>(Landroidx/datastore/preferences/protobuf/ᵎﹶ;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/ʽ;->ˈ(Landroidx/datastore/preferences/protobuf/ᵎﹶ;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->size()I

    move-result v4

    const/16 v5, 0x2f

    invoke-static {v3, v5, v4}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ⁱˊ(III)I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ʽʽ:Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    goto :goto_0

    :cond_1
    new-instance v4, Landroidx/datastore/preferences/protobuf/ﾞᴵ;

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ﾞᴵ()I

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Landroidx/datastore/preferences/protobuf/ﾞᴵ;-><init>([BII)V

    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lcom/bumptech/glide/ʽ;->ˈ(Landroidx/datastore/preferences/protobuf/ᵎﹶ;)Ljava/lang/String;

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

.method public ˑﹳ(I[B)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    invoke-static {v1, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public ᵎﹶ(I)B
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public ﹳٴ(I)B
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᵎﹶ;->ᴵˊ:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public ﾞᴵ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
