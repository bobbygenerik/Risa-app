.class public abstract Lˑʿ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ⁱˊ(Landroid/animation/Animator;J)V
    .locals 0

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method

.method public static ﹳٴ(Landroid/animation/Animator;)J
    .locals 2

    invoke-virtual {p0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method
