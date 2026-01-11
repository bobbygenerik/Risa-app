.class public Lʻᐧ/ˈ;
.super Lʻᐧ/ʼᐧ;
.source "SourceFile"


# instance fields
.field public ˋـ:Landroid/widget/EditText;

.field public ٴʿ:J

.field public final ᵔⁱ:Landroidx/leanback/widget/ᵔʾ;

.field public ﹶʽ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lʻᐧ/ʼᐧ;-><init>()V

    new-instance v0, Landroidx/leanback/widget/ᵔʾ;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʻᐧ/ˈ;->ᵔⁱ:Landroidx/leanback/widget/ᵔʾ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lʻᐧ/ˈ;->ٴʿ:J

    return-void
.end method


# virtual methods
.method public final ʽᵔ(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lʻᐧ/ʼᐧ;->ʽᵔ(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʻᐧ/ʼᐧ;->ᵢˋ()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    iget-object p1, p1, Landroidx/preference/EditTextPreference;->ʼـ:Ljava/lang/String;

    iput-object p1, p0, Lʻᐧ/ˈ;->ﹶʽ:Ljava/lang/CharSequence;

    return-void

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lʻᐧ/ˈ;->ﹶʽ:Ljava/lang/CharSequence;

    return-void
.end method

.method public final ʾﾞ(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lʻᐧ/ʼᐧ;->ʾﾞ(Landroid/os/Bundle;)V

    const-string v0, "EditTextPreferenceDialogFragment.text"

    iget-object v1, p0, Lʻᐧ/ˈ;->ﹶʽ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˋـ(Landroid/view/View;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lʻᐧ/ʼᐧ;->ˋـ(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    iget-object v0, p0, Lʻᐧ/ˈ;->ﹶʽ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Lʻᐧ/ʼᐧ;->ᵢˋ()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ٴʿ()V
    .locals 6

    .prologue
    iget-wide v0, p0, Lʻᐧ/ˈ;->ٴʿ:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-wide v2, p0, Lʻᐧ/ˈ;->ٴʿ:J

    return-void

    :cond_1
    iget-object v0, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    iget-object v1, p0, Lʻᐧ/ˈ;->ᵔⁱ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    iput-wide v2, p0, Lʻᐧ/ˈ;->ٴʿ:J

    :cond_3
    return-void
.end method

.method public final ﹶʽ(Z)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    iget-object p1, p0, Lʻᐧ/ˈ;->ˋـ:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lʻᐧ/ʼᐧ;->ᵢˋ()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->ٴᵢ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
