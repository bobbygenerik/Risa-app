.class public final Lˑⁱ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:[B

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(ILʼˊ/ﹳٴ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lˑⁱ/ﹳٴ;->ʽ:I

    iput v0, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    iput v0, p0, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    iput v0, p0, Lˑⁱ/ﹳٴ;->ﾞᴵ:I

    iput v0, p0, Lˑⁱ/ﹳٴ;->ᵎﹶ:I

    iput v0, p0, Lˑⁱ/ﹳٴ;->ᵔᵢ:I

    iput p1, p0, Lˑⁱ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {p2, p1}, Lʼˊ/ﹳٴ;->ﹳٴ(I)[B

    move-result-object p1

    iput-object p1, p0, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    return-void
.end method


# virtual methods
.method public final ﹳٴ(II)V
    .locals 3

    .prologue
    if-ltz p1, :cond_3

    iget v0, p0, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lˑⁱ/ﹳٴ;->ﾞᴵ:I

    iget v1, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lˑⁱ/ﹳٴ;->ᵎﹶ:I

    iput p1, p0, Lˑⁱ/ﹳٴ;->ᵔᵢ:I

    iget p2, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    iget-object p1, p0, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    if-gez p2, :cond_1

    iget v1, p0, Lˑⁱ/ﹳٴ;->ⁱˊ:I

    add-int/2addr p2, v1

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    invoke-static {p1, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    add-int/2addr p2, v1

    iput p2, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget v1, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    invoke-static {p1, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    add-int/2addr v2, v1

    iput v2, p0, Lˑⁱ/ﹳٴ;->ˈ:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    iget p1, p0, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    if-ge p1, v2, :cond_2

    iput v2, p0, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1
.end method
