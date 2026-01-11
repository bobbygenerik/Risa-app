.class public final Landroidx/leanback/transition/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ﹳٴ:I

    iput-object p2, p0, Landroidx/leanback/transition/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ʽ(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method private final ˈ(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method private final ⁱˊ(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method private final ﹳٴ(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    iget p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lﹳי/ʽ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .prologue
    iget p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lﹳי/ʽ;

    iget-object p1, p1, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/ˑٴ;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    iget p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lﹳי/ʽ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    iget p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lﹳי/ʽ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    iget p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/transition/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lﹳי/ʽ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
