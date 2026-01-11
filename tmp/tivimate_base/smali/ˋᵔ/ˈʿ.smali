.class public final synthetic Lˋᵔ/ˈʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ⁱˊ:Landroid/view/View;

.field public final synthetic ﹳٴ:Lᐧﹳ/ʽ;


# direct methods
.method public synthetic constructor <init>(Lᐧﹳ/ʽ;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋᵔ/ˈʿ;->ﹳٴ:Lᐧﹳ/ʽ;

    iput-object p2, p0, Lˋᵔ/ˈʿ;->ⁱˊ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lˋᵔ/ˈʿ;->ﹳٴ:Lᐧﹳ/ʽ;

    iget-object p1, p1, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lᵔᵢ/ᵎⁱ;

    iget-object p1, p1, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
