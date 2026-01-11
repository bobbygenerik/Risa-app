.class public final Lיי/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:[B


# instance fields
.field public ʽ:I

.field public ˈ:[B

.field public ⁱˊ:I

.field public ﹳٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lיי/ˆʾ;->ˑﹳ:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public final ﹳٴ([BII)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lיי/ˆʾ;->ﹳٴ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    iget-object v0, p0, Lיי/ˆʾ;->ˈ:[B

    array-length v1, v0

    iget v2, p0, Lיי/ˆʾ;->ⁱˊ:I

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lיי/ˆʾ;->ˈ:[B

    :cond_1
    iget-object v0, p0, Lיי/ˆʾ;->ˈ:[B

    iget v1, p0, Lיי/ˆʾ;->ⁱˊ:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lיי/ˆʾ;->ⁱˊ:I

    add-int/2addr p1, p3

    iput p1, p0, Lיי/ˆʾ;->ⁱˊ:I

    return-void
.end method
