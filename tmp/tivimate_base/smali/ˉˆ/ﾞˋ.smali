.class public final Lˉˆ/ﾞˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:Z

.field public ᵔᵢ:Z

.field public ⁱˊ:I

.field public ﹳٴ:I

.field public ﾞᴵ:I


# virtual methods
.method public final ﹳٴ(II)V
    .locals 2

    .prologue
    iput p1, p0, Lˉˆ/ﾞˋ;->ʽ:I

    iput p2, p0, Lˉˆ/ﾞˋ;->ˈ:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˉˆ/ﾞˋ;->ᵔᵢ:Z

    iget-boolean v0, p0, Lˉˆ/ﾞˋ;->ᵎﹶ:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    iput p2, p0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    :cond_0
    if-eq p1, v1, :cond_3

    iput p1, p0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    return-void

    :cond_1
    if-eq p1, v1, :cond_2

    iput p1, p0, Lˉˆ/ﾞˋ;->ﹳٴ:I

    :cond_2
    if-eq p2, v1, :cond_3

    iput p2, p0, Lˉˆ/ﾞˋ;->ⁱˊ:I

    :cond_3
    return-void
.end method
