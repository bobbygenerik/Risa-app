.class public final Lˋᵔ/ﹳـ;
.super Lˋᵔ/ʿ;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:Landroid/view/animation/PathInterpolator;

.field public static final ᵎﹶ:Landroid/view/animation/DecelerateInterpolator;

.field public static final ᵔᵢ:Landroid/view/animation/AccelerateInterpolator;

.field public static final ﾞᴵ:Lᵎʻ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lˋᵔ/ﹳـ;->ˑﹳ:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lᵎʻ/ﹳٴ;

    invoke-direct {v0}, Lᵎʻ/ﹳٴ;-><init>()V

    sput-object v0, Lˋᵔ/ﹳـ;->ﾞᴵ:Lᵎʻ/ﹳٴ;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lˋᵔ/ﹳـ;->ᵎﹶ:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lˋᵔ/ﹳـ;->ᵔᵢ:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public static ʼˎ(Landroid/view/View;Lˋᵔ/ʿᵢ;Lﹶﾞ/ⁱי;)V
    .locals 2

    .prologue
    invoke-static {p0}, Lˋᵔ/ﹳـ;->ٴﹶ(Landroid/view/View;)Lʽⁱ/ᵎﹶ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lʽⁱ/ᵎﹶ;->ⁱˉ(Lˋᵔ/ʿᵢ;Lﹶﾞ/ⁱי;)Lﹶﾞ/ⁱי;

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lˋᵔ/ﹳـ;->ʼˎ(Landroid/view/View;Lˋᵔ/ʿᵢ;Lﹶﾞ/ⁱי;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ˆʾ(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .prologue
    const v0, 0x7f0b038a

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static ٴﹶ(Landroid/view/View;)Lʽⁱ/ᵎﹶ;
    .locals 1

    .prologue
    const v0, 0x7f0b0393

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lˋᵔ/ـˏ;

    if-eqz v0, :cond_0

    check-cast p0, Lˋᵔ/ـˏ;

    iget-object p0, p0, Lˋᵔ/ـˏ;->ﹳٴ:Lʽⁱ/ᵎﹶ;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ᵎﹶ(Landroid/view/View;Lˋᵔ/ʿᵢ;Lˋᵔ/ᐧﹶ;Z)V
    .locals 2

    .prologue
    invoke-static {p0}, Lˋᵔ/ﹳـ;->ٴﹶ(Landroid/view/View;)Lʽⁱ/ᵎﹶ;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-virtual {v0, p1}, Lʽⁱ/ᵎﹶ;->ʽⁱ(Lˋᵔ/ʿᵢ;)V

    const/4 p3, 0x1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lˋᵔ/ﹳـ;->ᵎﹶ(Landroid/view/View;Lˋᵔ/ʿᵢ;Lˋᵔ/ᐧﹶ;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ᵔᵢ(Landroid/view/View;Lˋᵔ/ᐧﹶ;Ljava/util/List;)V
    .locals 2

    .prologue
    invoke-static {p0}, Lˋᵔ/ﹳـ;->ٴﹶ(Landroid/view/View;)Lʽⁱ/ᵎﹶ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lʽⁱ/ᵎﹶ;->ʾﾞ(Lˋᵔ/ᐧﹶ;Ljava/util/List;)Lˋᵔ/ᐧﹶ;

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lˋᵔ/ﹳـ;->ᵔᵢ(Landroid/view/View;Lˋᵔ/ᐧﹶ;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ﾞᴵ(Landroid/view/View;Lˋᵔ/ʿᵢ;)V
    .locals 2

    .prologue
    invoke-static {p0}, Lˋᵔ/ﹳـ;->ٴﹶ(Landroid/view/View;)Lʽⁱ/ᵎﹶ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lʽⁱ/ᵎﹶ;->יﹳ(Lˋᵔ/ʿᵢ;)V

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lˋᵔ/ﹳـ;->ﾞᴵ(Landroid/view/View;Lˋᵔ/ʿᵢ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
