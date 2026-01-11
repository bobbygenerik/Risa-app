.class public abstract Lʽᵔ/ᵎﹶ;
.super Lʽᵔ/ﹳٴ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lʽᵔ/ﹳٴ;-><init>()V

    invoke-static {p0}, Lﹳˋ/ʽʽ;->ⁱˊ(Lˑʼ/ᴵᵔ;)V

    return-void
.end method


# virtual methods
.method public ʻᴵ(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lʻᐧ/ˏי;->ʻᴵ(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iget-object p1, p1, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    iget-object p1, p1, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lʽᵔ/ᵎﹶ;->ﹶʽ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lʻᐧ/ˏי;->ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0e00d4

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b0265

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public ﹶʽ(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
