.class public final Lᐧⁱ/ʾᵎ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lᐧⁱ/ʼʼ;

.field public final synthetic ⁱˊ:Lᐧⁱ/ˏי;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lᐧⁱ/ʼʼ;Lᐧⁱ/ˏי;I)V
    .locals 0

    iput p3, p0, Lᐧⁱ/ʾᵎ;->ﹳٴ:I

    iput-object p1, p0, Lᐧⁱ/ʾᵎ;->ʽ:Lᐧⁱ/ʼʼ;

    iput-object p2, p0, Lᐧⁱ/ʾᵎ;->ⁱˊ:Lᐧⁱ/ˏי;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    iget p1, p0, Lᐧⁱ/ʾᵎ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x2

    iget-object v0, p0, Lᐧⁱ/ʾᵎ;->ʽ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0, p1}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    iget-boolean p1, v0, Lᐧⁱ/ʼʼ;->ᴵˊ:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lᐧⁱ/ʾᵎ;->ⁱˊ:Lᐧⁱ/ˏי;

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->יـ:Lᐧⁱ/ʽﹳ;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Lᐧⁱ/ʼʼ;->ᴵˊ:Z

    :cond_0
    return-void

    :pswitch_0
    const/4 p1, 0x2

    iget-object v0, p0, Lᐧⁱ/ʾᵎ;->ʽ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0, p1}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    iget-boolean p1, v0, Lᐧⁱ/ʼʼ;->ᴵˊ:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lᐧⁱ/ʾᵎ;->ⁱˊ:Lᐧⁱ/ˏי;

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->יـ:Lᐧⁱ/ʽﹳ;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Lᐧⁱ/ʼʼ;->ᴵˊ:Z

    :cond_1
    return-void

    :pswitch_1
    const/4 p1, 0x1

    iget-object v0, p0, Lᐧⁱ/ʾᵎ;->ʽ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0, p1}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    iget-boolean p1, v0, Lᐧⁱ/ʼʼ;->ᴵˊ:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lᐧⁱ/ʾᵎ;->ⁱˊ:Lᐧⁱ/ˏי;

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->יـ:Lᐧⁱ/ʽﹳ;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Lᐧⁱ/ʼʼ;->ᴵˊ:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    iget p1, p0, Lᐧⁱ/ʾᵎ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lᐧⁱ/ʾᵎ;->ʽ:Lᐧⁱ/ʼʼ;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lᐧⁱ/ʾᵎ;->ʽ:Lᐧⁱ/ʼʼ;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lᐧⁱ/ʾᵎ;->ʽ:Lᐧⁱ/ʼʼ;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
