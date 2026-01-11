.class public abstract Lיـ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lיـ/ᵔﹳ;->ﹳٴ:[J

    new-instance v0, Lיـ/ʼᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ʼᐧ;-><init>(I)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x7f7f7f7f7f7f7f01L    # -2.937446524423077E-306
        -0x1
    .end array-data
.end method

.method public static final ʽ(I)I
    .locals 1

    .prologue
    if-lez p0, :cond_0

    const/4 v0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    ushr-int p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final ˈ(I)I
    .locals 2

    .prologue
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v0

    add-int/2addr v1, p0

    return v1
.end method

.method public static final ⁱˊ(I)I
    .locals 0

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final ﹳٴ(I)I
    .locals 1

    .prologue
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    div-int/lit8 v0, p0, 0x8

    sub-int/2addr p0, v0

    return p0
.end method
