.class public final Lˑʼ/ﾞᴵ;
.super Lˑʼ/ـᵎ;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˑʼ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lˑʼ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ﾞᴵ;->ʽ:Lˑʼ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final ʽ(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lˑʼ/ﾞᴵ;->ʽ:Lˑʼ/ᵎﹶ;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˑʼ/ʽᵔ;

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ʼـ()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lˑʼ/ʽᵔ;->ʽ(Lˑʼ/ـᵎ;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v3, v3, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v0, v2}, Lˑʼ/ᵎﹶ;->ﹶˎ(Landroid/content/Context;)Lﹳʽ/ˊʻ;

    move-result-object v0

    const-string v2, "Required value was null."

    if-eqz v0, :cond_4

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    iget v2, v1, Lˑʼ/ʽᵔ;->ﹳٴ:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, p0}, Lˑʼ/ʽᵔ;->ʽ(Lˑʼ/ـᵎ;)V

    return-void

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v2, Lˑʼ/ˉٴ;

    invoke-direct {v2, v0, p1, v3}, Lˑʼ/ˉٴ;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v0, Lˑʼ/ˑﹳ;

    invoke-direct {v0, v1, p1, v3, p0}, Lˑʼ/ˑﹳ;-><init>(Lˑʼ/ʽᵔ;Landroid/view/ViewGroup;Landroid/view/View;Lˑʼ/ﾞᴵ;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x2

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animation from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has started."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    nop

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ﾞᴵ;->ʽ:Lˑʼ/ᵎﹶ;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˑʼ/ʽᵔ;

    iget-object v2, v1, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v2, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ʽᵔ;

    invoke-virtual {p1, p0}, Lˑʼ/ʽᵔ;->ʽ(Lˑʼ/ـᵎ;)V

    const/4 p1, 0x2

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animation from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has been cancelled."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    nop

    :cond_0
    return-void
.end method
