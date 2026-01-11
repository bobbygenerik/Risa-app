.class public final Lˋⁱ/ᵔᵢ;
.super Lcom/google/android/gms/internal/play_billing/י;
.source "SourceFile"


# instance fields
.field public final ᵔٴ:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˋⁱ/ᵔᵢ;->ᵔٴ:I

    return-void
.end method


# virtual methods
.method public final ʽʽ(Lˋⁱ/ʼʼ;F)V
    .locals 3

    .prologue
    check-cast p1, Lˋⁱ/ʼˎ;

    iget-object v0, p1, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    if-eqz v0, :cond_1

    iget v1, p0, Lˋⁱ/ᵔᵢ;->ᵔٴ:I

    aget v2, v0, v1

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_1

    aput p2, v0, v1

    iget-object p2, p1, Lˋⁱ/ʼˎ;->ˏᵢ:Lٴˉ/ﹳٴ;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lˋⁱ/ʼˎ;->ᵔᵢ()F

    move-result v0

    iget-object p2, p2, Lٴˉ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x3de147ae    # 0.11f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p2, Lcom/google/android/material/button/MaterialButton;->ˉـ:I

    if-eq v1, v0, :cond_0

    iput v0, p2, Lcom/google/android/material/button/MaterialButton;->ˉـ:I

    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->ٴﹶ()V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-virtual {p1}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final ʽﹳ(Lˋⁱ/ʼʼ;)F
    .locals 1

    .prologue
    check-cast p1, Lˋⁱ/ʼˎ;

    iget-object p1, p1, Lˋⁱ/ʼˎ;->ᐧﾞ:[F

    if-eqz p1, :cond_0

    iget v0, p0, Lˋⁱ/ᵔᵢ;->ᵔٴ:I

    aget p1, p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
