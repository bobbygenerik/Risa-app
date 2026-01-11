.class public final Lʻᴵ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public ⁱˊ:[B

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    iput p1, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    iput-object p1, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    iput p2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    new-array p1, p2, [B

    iput-object p1, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    const/4 p1, 0x0

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    return-void
.end method

.method public constructor <init>(Lʼˊ/ﹳٴ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    iput v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    const v0, 0xfffb

    invoke-virtual {p1, v0}, Lʼˊ/ﹳٴ;->ﹳٴ(I)[B

    move-result-object p1

    iput-object p1, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length p1, p1

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length p1, p1

    iput p1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iput p2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iput p3, p0, Lʻᴵ/ʻٴ;->ʽ:I

    const/4 p1, 0x0

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void
.end method

.method public static final ˆʾ([S)V
    .locals 1

    const/16 v0, 0x400

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([SS)V

    return-void
.end method


# virtual methods
.method public ʻٴ(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ʼʼ(I)V
    .locals 1

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/2addr v0, p1

    iput v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void
.end method

.method public ʼˎ()I
    .locals 2

    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public ʼᐧ(I[B)V
    .locals 3

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v2, p0, Lʻᴵ/ʻٴ;->ʽ:I

    invoke-static {v0, v2, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/2addr p2, p1

    iput p2, p0, Lʻᴵ/ʻٴ;->ʽ:I

    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void
.end method

.method public ʽ()V
    .locals 1

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void
.end method

.method public ʽﹳ(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void
.end method

.method public ʾᵎ(I)V
    .locals 4

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/2addr v1, v0

    iput v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    iget v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    :cond_0
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void

    :pswitch_1
    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/2addr v1, v0

    iput v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget v2, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    const/4 v0, 0x7

    const/4 v2, 0x1

    if-le p1, v0, :cond_1

    add-int/2addr v1, v2

    iput v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    :cond_1
    iget p1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    if-ltz p1, :cond_2

    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    if-lt p1, v0, :cond_3

    if-ne p1, v0, :cond_2

    iget p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    return-void

    :pswitch_2
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iput v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget v3, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr p1, v1

    add-int/2addr p1, v3

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    const/4 v1, 0x7

    if-le p1, v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget p1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    if-gt v0, p1, :cond_5

    invoke-virtual {p0, v0}, Lʻᴵ/ʻٴ;->ʻٴ(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ˈ(I)Z
    .locals 4

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iget v3, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    add-int/2addr v3, p1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v3, v1

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v2, :cond_2

    iget v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v0}, Lʻᴵ/ʻٴ;->ʻٴ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    if-lt v2, v0, :cond_4

    if-ne v2, v0, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method public ˉʿ(I)I
    .locals 9

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/2addr v1, p1

    iput v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    move v1, v0

    :goto_0
    iget v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget-object v3, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v4, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lʻᴵ/ʻٴ;->ʽ:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v5, p0, Lʻᴵ/ʻٴ;->ʽ:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    const/4 v4, -0x1

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_2

    iput v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lʻᴵ/ʻٴ;->ʽ:I

    :cond_2
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    move v0, p1

    :goto_1
    return v0

    :pswitch_1
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget v1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v4, 0xff

    and-int/2addr v0, v4

    iget v5, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    shr-int/2addr v0, v5

    rsub-int/lit8 v5, v1, 0x8

    shr-int v5, v4, v5

    and-int/2addr v0, v5

    :goto_2
    if-ge v1, p1, :cond_3

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v2, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x8

    move v3, v5

    goto :goto_2

    :cond_3
    rsub-int/lit8 v1, p1, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    return v0

    :pswitch_2
    iget v0, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    add-int/2addr v0, p1

    iput v0, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget v2, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-le v2, v5, :cond_5

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    iget-object v5, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v6, p0, Lʻᴵ/ʻٴ;->ˈ:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int v2, v5, v2

    or-int/2addr v1, v2

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v2}, Lʻᴵ/ʻٴ;->ʻٴ(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    add-int/2addr v6, v3

    iput v6, p0, Lʻᴵ/ʻٴ;->ˈ:I

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v7, p0, Lʻᴵ/ʻٴ;->ˈ:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v6, v8

    or-int/2addr v1, v6

    rsub-int/lit8 p1, p1, 0x20

    const/4 v6, -0x1

    ushr-int p1, v6, p1

    and-int/2addr p1, v1

    if-ne v2, v5, :cond_7

    iput v0, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, Lʻᴵ/ʻٴ;->ʻٴ(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    add-int/2addr v7, v3

    iput v7, p0, Lʻᴵ/ʻٴ;->ˈ:I

    :cond_7
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ˉˆ(I)J
    .locals 6

    .prologue
    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p1

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    int-to-long v2, p1

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result p1

    invoke-virtual {p0, v2}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v3

    sget-object v4, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    int-to-long v4, p1

    and-long/2addr v4, v0

    shl-long/2addr v4, v2

    int-to-long v2, v3

    and-long/2addr v0, v2

    or-long/2addr v0, v4

    return-wide v0
.end method

.method public ˏי(Lᐧˎ/ﹳᐧ;)V
    .locals 2

    iget-object v0, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v1, p1, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-virtual {p0, v1, v0}, Lʻᴵ/ʻٴ;->יـ(I[B)V

    iget p1, p1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    return-void
.end method

.method public ˑﹳ()Z
    .locals 7

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget v1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget v5, p0, Lʻᴵ/ʻٴ;->ʽ:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget v5, p0, Lʻᴵ/ʻٴ;->ʽ:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iput v1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lʻᴵ/ʻٴ;->ˈ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v6

    :cond_2
    return v2
.end method

.method public יـ(I[B)V
    .locals 0

    iput-object p2, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    const/4 p2, 0x0

    iput p2, p0, Lʻᴵ/ʻٴ;->ʽ:I

    iput p2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    return-void
.end method

.method public ـˆ()V
    .locals 3

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    :cond_0
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void

    :pswitch_0
    iget v0, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lʻᴵ/ʻٴ;->ʻٴ(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    :cond_2
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ٴﹶ()V
    .locals 5

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    :try_start_0
    iget v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v3, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lʻᴵ/ʻٴ;->ʽ:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public ᵎﹶ([S)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v0

    or-int/2addr v0, v1

    array-length v1, p1

    if-lt v0, v1, :cond_0

    array-length p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public ᵔʾ(I[B)V
    .locals 9

    .prologue
    shr-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v6, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lʻᴵ/ʻٴ;->ʽ:I

    aget-byte v6, v5, v6

    iget v8, p0, Lʻᴵ/ʻٴ;->ˈ:I

    shl-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    aget-byte v5, v5, v7

    and-int/2addr v3, v5

    sub-int/2addr v4, v8

    shr-int/2addr v3, v4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_1

    return-void

    :cond_1
    aget-byte v2, p2, v0

    shr-int v5, v3, p1

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    iget v5, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int v6, v5, p1

    if-le v6, v4, :cond_2

    iget-object v6, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v7, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lʻᴵ/ʻٴ;->ʽ:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    sub-int/2addr v5, v4

    iput v5, p0, Lʻᴵ/ʻٴ;->ˈ:I

    :cond_2
    iget v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/2addr v2, p1

    iput v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    iget-object v5, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v6, p0, Lʻᴵ/ʻٴ;->ʽ:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x8

    shr-int/2addr v3, v5

    aget-byte v5, p2, v0

    rsub-int/lit8 p1, p1, 0x8

    shl-int p1, v3, p1

    int-to-byte p1, p1

    or-int/2addr p1, v5

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    if-ne v2, v4, :cond_3

    iput v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lʻᴵ/ʻٴ;->ʽ:I

    :cond_3
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﹳٴ()V

    return-void
.end method

.method public ᵔᵢ()I
    .locals 1

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    return v0
.end method

.method public ᵔﹳ()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method public ᵢˏ([BII)V
    .locals 4

    .prologue
    iget-object v0, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, p3, :cond_2

    array-length v1, v0

    iget v2, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_1

    iget v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int v2, v1, p3

    array-length v3, v0

    if-gt v2, v3, :cond_0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    const/4 v1, 0x0

    sub-int v2, p3, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/2addr p1, p3

    array-length p2, v0

    rem-int/2addr p1, p2

    iput p1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    iget p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    add-int/2addr p1, p3

    iput p1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Size of bytes to be written is greater than available buffer space"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bytes to write do not exist in source"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ⁱˊ()I
    .locals 2

    iget v0, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    iget v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public ﹳٴ()V
    .locals 2

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʻᴵ/ʻٴ;->ʽ:I

    if-ltz v0, :cond_1

    iget v1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    return-void

    :pswitch_0
    iget v0, p0, Lʻᴵ/ʻٴ;->ˈ:I

    if-ltz v0, :cond_3

    iget v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    if-lt v0, v1, :cond_2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳᐧ()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ᵔﹳ()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public ﾞʻ()Z
    .locals 3

    .prologue
    iget v0, p0, Lʻᴵ/ʻٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ـˆ()V

    return v0

    :pswitch_1
    iget-object v0, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    shr-int/2addr v0, v1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    return v0

    :pswitch_2
    iget-object v0, p0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v1, p0, Lʻᴵ/ʻٴ;->ˈ:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    iget v2, p0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    shr-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ـˆ()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ﾞᴵ([SI)I
    .locals 4

    .prologue
    invoke-virtual {p0}, Lʻᴵ/ʻٴ;->ٴﹶ()V

    aget-short v0, p1, p2

    iget v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    iget v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    xor-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-gez v2, :cond_0

    iput v1, p0, Lʻᴵ/ʻٴ;->ʽ:I

    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v2, p0, Lʻᴵ/ʻٴ;->ʽ:I

    sub-int/2addr v2, v1

    iput v2, p0, Lʻᴵ/ʻٴ;->ʽ:I

    iget v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    sub-int/2addr v2, v1

    iput v2, p0, Lʻᴵ/ʻٴ;->ˈ:I

    ushr-int/lit8 v1, v0, 0x5

    sub-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    const/4 p1, 0x1

    return p1
.end method
