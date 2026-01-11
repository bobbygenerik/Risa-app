.class public final Lᵢʼ/ﹳٴ;
.super Lᵢʼ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public ʽʽ:I

.field public ˈٴ:I

.field public final ᴵˊ:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᵢʼ/ﹳٴ;->ᴵˊ:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lᵢʼ/ⁱˊ;->ʾˋ:J

    const/4 p2, 0x0

    iput p2, p0, Lᵢʼ/ﹳٴ;->ʽʽ:I

    iput p1, p0, Lᵢʼ/ﹳٴ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final ʽ()I
    .locals 1

    iget v0, p0, Lᵢʼ/ﹳٴ;->ˈٴ:I

    return v0
.end method

.method public final ᵎﹶ([B)I
    .locals 4

    .prologue
    array-length v0, p1

    iget v1, p0, Lᵢʼ/ﹳٴ;->ˈٴ:I

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    iget v1, p0, Lᵢʼ/ﹳٴ;->ʽʽ:I

    const/4 v2, 0x0

    iget-object v3, p0, Lᵢʼ/ﹳٴ;->ᴵˊ:[B

    invoke-static {v3, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lᵢʼ/ﹳٴ;->ʽʽ:I

    add-int/2addr p1, v0

    iput p1, p0, Lᵢʼ/ﹳٴ;->ʽʽ:I

    iget p1, p0, Lᵢʼ/ﹳٴ;->ˈٴ:I

    sub-int/2addr p1, v0

    iput p1, p0, Lᵢʼ/ﹳٴ;->ˈٴ:I

    return v0
.end method
