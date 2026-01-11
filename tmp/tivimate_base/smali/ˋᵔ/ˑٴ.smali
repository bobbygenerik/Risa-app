.class public final Lˋᵔ/ˑٴ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Ljava/lang/Object;

.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lˋᵔ/ˑٴ;->ﹳٴ:I

    iput-object p1, p0, Lˋᵔ/ˑٴ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lˋᵔ/ˑٴ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lˑʿ/ʻٴ;Lיـ/ˑﹳ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˋᵔ/ˑٴ;->ﹳٴ:I

    iput-object p1, p0, Lˋᵔ/ˑٴ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˋᵔ/ˑٴ;->ʽ:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    iget v0, p0, Lˋᵔ/ˑٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋᵔ/ˑٴ;->ʽ:Ljava/lang/Object;

    check-cast p1, Lˋᵔ/ˊˋ;

    invoke-interface {p1}, Lˋᵔ/ˊˋ;->ﹳٴ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    iget v0, p0, Lˋᵔ/ˑٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˋᵔ/ˑٴ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lיـ/ˑﹳ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lˋᵔ/ˑٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˑʿ/ʻٴ;

    iget-object v0, v0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋᵔ/ˑٴ;->ʽ:Ljava/lang/Object;

    check-cast p1, Lˋᵔ/ʿᵢ;

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p1, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    invoke-virtual {v1, v0}, Lˋᵔ/ʿ;->ˑﹳ(F)V

    iget-object v0, p0, Lˋᵔ/ˑٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lˋᵔ/ﹳـ;->ﾞᴵ(Landroid/view/View;Lˋᵔ/ʿᵢ;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lˋᵔ/ˑٴ;->ʽ:Ljava/lang/Object;

    check-cast p1, Lˋᵔ/ˊˋ;

    invoke-interface {p1}, Lˋᵔ/ˊˋ;->ʽ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    iget v0, p0, Lˋᵔ/ˑٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lˋᵔ/ˑٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˑʿ/ʻٴ;

    iget-object v0, v0, Lˑʿ/ʻٴ;->ˈʿ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    iget-object p1, p0, Lˋᵔ/ˑٴ;->ʽ:Ljava/lang/Object;

    check-cast p1, Lˋᵔ/ˊˋ;

    invoke-interface {p1}, Lˋᵔ/ˊˋ;->ⁱˊ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
