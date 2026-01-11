.class public final Lˑʿ/ʼˎ;
.super Lˑʿ/ˋᵔ;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lˑʿ/ˋᵔ;-><init>()V

    iput p1, p0, Lˑʿ/ˋᵔ;->ʻᵎ:I

    return-void
.end method

.method public static ʿᵢ(Lˑʿ/ᴵᵔ;F)F
    .locals 1

    .prologue
    if-eqz p0, :cond_0

    iget-object p0, p0, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    const-string v0, "android:fade:transitionAlpha"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public final ʼˎ(Lˑʿ/ᴵᵔ;)V
    .locals 2

    .prologue
    invoke-static {p1}, Lˑʿ/ˋᵔ;->ﹳـ(Lˑʿ/ᴵᵔ;)V

    iget-object v0, p1, Lˑʿ/ᴵᵔ;->ⁱˊ:Landroid/view/View;

    const v1, 0x7f0b03bf

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lˑʿ/ٴᵢ;->ﹳٴ:Lˑʿ/ᵔי;

    invoke-virtual {v1, v0}, Lˈˊ/ᵔʾ;->ᵔʾ(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object p1, p1, Lˑʿ/ᴵᵔ;->ﹳٴ:Ljava/util/HashMap;

    const-string v0, "android:fade:transitionAlpha"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ʿ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lˑʿ/ٴᵢ;->ﹳٴ:Lˑʿ/ᵔי;

    invoke-virtual {v0, p1, p2}, Lˈˊ/ᵔʾ;->ᵢˏ(Landroid/view/View;F)V

    sget-object p2, Lˑʿ/ٴᵢ;->ⁱˊ:Landroidx/leanback/widget/ʿᵢ;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lˑʿ/ᵔᵢ;

    invoke-direct {p3, p1}, Lˑʿ/ᵔᵢ;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lˑʿ/ʻٴ;->ʽﹳ()Lˑʿ/ʻٴ;

    move-result-object p1

    invoke-virtual {p1, p3}, Lˑʿ/ʻٴ;->ﹳٴ(Lˑʿ/יـ;)V

    return-object p2
.end method

.method public final ˉـ(Landroid/view/View;Lˑʿ/ᴵᵔ;Lˑʿ/ᴵᵔ;)Landroid/animation/Animator;
    .locals 3

    .prologue
    sget-object v0, Lˑʿ/ٴᵢ;->ﹳٴ:Lˑʿ/ᵔי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v1}, Lˑʿ/ʼˎ;->ʿᵢ(Lˑʿ/ᴵᵔ;F)F

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lˑʿ/ʼˎ;->ʿ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p3, v1}, Lˑʿ/ʼˎ;->ʿᵢ(Lˑʿ/ᴵᵔ;F)F

    move-result p3

    invoke-virtual {v0, p1, p3}, Lˈˊ/ᵔʾ;->ᵢˏ(Landroid/view/View;F)V

    :cond_0
    return-object p2
.end method

.method public final ᴵˑ(Landroid/view/View;Lˑʿ/ᴵᵔ;)Landroid/animation/Animator;
    .locals 1

    sget-object v0, Lˑʿ/ٴᵢ;->ﹳٴ:Lˑʿ/ᵔי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lˑʿ/ʼˎ;->ʿᵢ(Lˑʿ/ᴵᵔ;F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lˑʿ/ʼˎ;->ʿ(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final ᵢˏ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
