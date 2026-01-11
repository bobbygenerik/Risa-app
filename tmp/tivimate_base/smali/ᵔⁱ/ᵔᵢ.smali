.class public final Lᵔⁱ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᵔⁱ/ᵔᵢ;->ﹳٴ:I

    iput p2, p0, Lᵔⁱ/ᵔᵢ;->ⁱˊ:I

    iput p3, p0, Lᵔⁱ/ᵔᵢ;->ʽ:I

    iput p4, p0, Lᵔⁱ/ᵔᵢ;->ˈ:I

    return-void
.end method


# virtual methods
.method public final ﹳٴ(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lᵔⁱ/ᵔᵢ;->ﹳٴ:I

    iget v1, p0, Lᵔⁱ/ᵔᵢ;->ⁱˊ:I

    sub-int/2addr p1, v1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget p1, p0, Lᵔⁱ/ᵔᵢ;->ʽ:I

    iget v1, p0, Lᵔⁱ/ᵔᵢ;->ˈ:I

    sub-int/2addr p1, v1

    if-le p1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
