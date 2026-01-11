.class public final Lˋˋ/ـᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ˑﹳ:Landroid/view/animation/Interpolator;

.field public ᵎﹶ:I

.field public ⁱˊ:I

.field public ﹳٴ:I

.field public ﾞᴵ:Z


# virtual methods
.method public final ﹳٴ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    .prologue
    iget v0, p0, Lˋˋ/ـᵎ;->ˈ:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lˋˋ/ـᵎ;->ˈ:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ʼˈ(I)V

    iput-boolean v1, p0, Lˋˋ/ـᵎ;->ﾞᴵ:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lˋˋ/ـᵎ;->ﾞᴵ:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lˋˋ/ـᵎ;->ˑﹳ:Landroid/view/animation/Interpolator;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lˋˋ/ـᵎ;->ʽ:I

    if-lt v3, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget v3, p0, Lˋˋ/ـᵎ;->ʽ:I

    if-lt v3, v2, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ᐧˎ:Lˋˋ/ˑ;

    iget v4, p0, Lˋˋ/ـᵎ;->ﹳٴ:I

    iget v5, p0, Lˋˋ/ـᵎ;->ⁱˊ:I

    invoke-virtual {p1, v4, v5, v3, v0}, Lˋˋ/ˑ;->ʽ(IIILandroid/view/animation/Interpolator;)V

    iget p1, p0, Lˋˋ/ـᵎ;->ᵎﹶ:I

    add-int/2addr p1, v2

    iput p1, p0, Lˋˋ/ـᵎ;->ᵎﹶ:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    nop

    :cond_3
    iput-boolean v1, p0, Lˋˋ/ـᵎ;->ﾞᴵ:Z

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iput v1, p0, Lˋˋ/ـᵎ;->ᵎﹶ:I

    return-void
.end method
