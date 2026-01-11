.class public final Lˆᵢ/ⁱˊ;
.super Lᴵˋ/ˊʻ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public final synthetic ˈ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˆᵢ/ⁱˊ;->ʽ:I

    const/16 p1, 0x13

    invoke-direct {p0, p1}, Lᴵˋ/ˊʻ;-><init>(I)V

    iput-object p2, p0, Lˆᵢ/ⁱˊ;->ˈ:Ljava/lang/Object;

    return-void
.end method

.method private final ʼˈ(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final ˈٴ(I)V
    .locals 1

    .prologue
    iget p1, p0, Lˆᵢ/ⁱˊ;->ʽ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˆᵢ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast p1, Lˈᐧ/ʼˎ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lˈᐧ/ʼˎ;->ˈ:Z

    iget-object p1, p1, Lˈᐧ/ʼˎ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˈᐧ/ᵔᵢ;

    if-eqz p1, :cond_0

    check-cast p1, Lˆᵢ/ﾞᴵ;

    invoke-virtual {p1}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    invoke-virtual {p1}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᴵᵔ(Landroid/graphics/Typeface;Z)V
    .locals 1

    .prologue
    iget p1, p0, Lˆᵢ/ⁱˊ;->ʽ:I

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lˆᵢ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast p1, Lˈᐧ/ʼˎ;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lˈᐧ/ʼˎ;->ˈ:Z

    iget-object p1, p1, Lˈᐧ/ʼˎ;->ˑﹳ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˈᐧ/ᵔᵢ;

    if-eqz p1, :cond_1

    check-cast p1, Lˆᵢ/ﾞᴵ;

    invoke-virtual {p1}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    invoke-virtual {p1}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lˆᵢ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iget-object p2, p1, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    iget-boolean v0, p2, Lˆᵢ/ﾞᴵ;->ˎـ:Z

    if-eqz v0, :cond_2

    iget-object p2, p2, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
