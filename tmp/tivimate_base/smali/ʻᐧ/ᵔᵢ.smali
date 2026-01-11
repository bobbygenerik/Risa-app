.class public Lʻᐧ/ᵔᵢ;
.super Lʻᐧ/ʼᐧ;
.source "SourceFile"


# instance fields
.field public ˋـ:I

.field public ᵔⁱ:[Ljava/lang/CharSequence;

.field public ﹶʽ:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lʻᐧ/ʼᐧ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽᵔ(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Lʻᐧ/ʼᐧ;->ʽᵔ(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lʻᐧ/ʼᐧ;->ᵢˋ()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iget-object v0, p1, Landroidx/preference/ListPreference;->ʼـ:[Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/ListPreference;->ˎᐧ:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroidx/preference/ListPreference;->יﹳ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->ٴᵢ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lʻᐧ/ᵔᵢ;->ˋـ:I

    iget-object p1, p1, Landroidx/preference/ListPreference;->ʼـ:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lʻᐧ/ᵔᵢ;->ﹶʽ:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lʻᐧ/ᵔᵢ;->ᵔⁱ:[Ljava/lang/CharSequence;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "ListPreferenceDialogFragment.index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lʻᐧ/ᵔᵢ;->ˋـ:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ᵔᵢ;->ﹶʽ:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lʻᐧ/ᵔᵢ;->ᵔⁱ:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final ʾﾞ(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lʻᐧ/ʼᐧ;->ʾﾞ(Landroid/os/Bundle;)V

    const-string v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, Lʻᐧ/ᵔᵢ;->ˋـ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, Lʻᐧ/ᵔᵢ;->ﹶʽ:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Lʻᐧ/ᵔᵢ;->ᵔⁱ:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ᵔⁱ(Lᵔᵢ/ᵎﹶ;)V
    .locals 3

    iget-object v0, p0, Lʻᐧ/ᵔᵢ;->ﹶʽ:[Ljava/lang/CharSequence;

    iget v1, p0, Lʻᐧ/ᵔᵢ;->ˋـ:I

    new-instance v2, Lʻᐧ/ᵎﹶ;

    invoke-direct {v2, p0}, Lʻᐧ/ᵎﹶ;-><init>(Lʻᐧ/ᵔᵢ;)V

    iget-object p1, p1, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iput-object v0, p1, Lᵔᵢ/ˈ;->ﾞʻ:[Ljava/lang/CharSequence;

    iput-object v2, p1, Lᵔᵢ/ˈ;->ᵔʾ:Landroid/content/DialogInterface$OnClickListener;

    iput v1, p1, Lᵔᵢ/ˈ;->יـ:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lᵔᵢ/ˈ;->ﹳᐧ:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lᵔᵢ/ˈ;->ᵎﹶ:Ljava/lang/CharSequence;

    iput-object v0, p1, Lᵔᵢ/ˈ;->ᵔᵢ:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final ﹶʽ(Z)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    iget p1, p0, Lʻᐧ/ᵔᵢ;->ˋـ:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lʻᐧ/ᵔᵢ;->ᵔⁱ:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lʻᐧ/ʼᐧ;->ᵢˋ()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->ˉٴ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
