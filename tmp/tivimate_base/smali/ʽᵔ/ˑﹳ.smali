.class public Lʽᵔ/ˑﹳ;
.super Lʽᵔ/ﾞᴵ;
.source "SourceFile"


# instance fields
.field public ʻʿ:Ljava/lang/String;

.field public ʻᴵ:Z

.field public ʿـ:Ljava/lang/CharSequence;

.field public ـˊ:[Ljava/lang/CharSequence;

.field public ᵎʿ:[Ljava/lang/CharSequence;

.field public ⁱי:Ljava/util/Set;

.field public ﹳⁱ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lʽᵔ/ﾞᴵ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽᵔ(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Lʽᵔ/ﾞᴵ;->ʽᵔ(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lʽᵔ/ﾞᴵ;->ﾞˋ()Landroidx/preference/DialogPreference;

    move-result-object p1

    iget-object v1, p1, Landroidx/preference/DialogPreference;->ـᵎ:Ljava/lang/CharSequence;

    iput-object v1, p0, Lʽᵔ/ˑﹳ;->ʿـ:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/DialogPreference;->ʽᵔ:Ljava/lang/String;

    iput-object v1, p0, Lʽᵔ/ˑﹳ;->ﹳⁱ:Ljava/lang/CharSequence;

    instance-of v1, p1, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lʽᵔ/ˑﹳ;->ʻᴵ:Z

    check-cast p1, Landroidx/preference/ListPreference;

    iget-object v0, p1, Landroidx/preference/ListPreference;->ʼـ:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lʽᵔ/ˑﹳ;->ـˊ:[Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/ListPreference;->ˎᐧ:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lʽᵔ/ˑﹳ;->ᵎʿ:[Ljava/lang/CharSequence;

    iget-object p1, p1, Landroidx/preference/ListPreference;->יﹳ:Ljava/lang/String;

    iput-object p1, p0, Lʽᵔ/ˑﹳ;->ʻʿ:Ljava/lang/String;

    return-void

    :cond_0
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʽᵔ/ˑﹳ;->ʻᴵ:Z

    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    iget-object v0, p1, Landroidx/preference/MultiSelectListPreference;->ʼـ:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lʽᵔ/ˑﹳ;->ـˊ:[Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/MultiSelectListPreference;->ˎᐧ:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lʽᵔ/ˑﹳ;->ᵎʿ:[Ljava/lang/CharSequence;

    iget-object p1, p1, Landroidx/preference/MultiSelectListPreference;->יﹳ:Ljava/util/HashSet;

    iput-object p1, p0, Lʽᵔ/ˑﹳ;->ⁱי:Ljava/util/Set;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Preference must be a ListPreference or MultiSelectListPreference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v1, "LeanbackListPreferenceDialogFragment.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lʽᵔ/ˑﹳ;->ʿـ:Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lʽᵔ/ˑﹳ;->ﹳⁱ:Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.isMulti"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lʽᵔ/ˑﹳ;->ʻᴵ:Z

    const-string v1, "LeanbackListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lʽᵔ/ˑﹳ;->ـˊ:[Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lʽᵔ/ˑﹳ;->ᵎʿ:[Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lʽᵔ/ˑﹳ;->ʻᴵ:Z

    if-eqz v1, :cond_5

    const-string v1, "LeanbackListPreferenceDialogFragment.initialSelections"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lיـ/ﾞᴵ;

    if-eqz p1, :cond_3

    array-length v0, p1

    :cond_3
    invoke-direct {v1, v0}, Lיـ/ﾞᴵ;-><init>(I)V

    iput-object v1, p0, Lʽᵔ/ˑﹳ;->ⁱי:Ljava/util/Set;

    if-eqz p1, :cond_4

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    return-void

    :cond_5
    const-string v0, "LeanbackListPreferenceDialogFragment.initialSelection"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lʽᵔ/ˑﹳ;->ʻʿ:Ljava/lang/String;

    return-void
.end method

.method public final ʾﾞ(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const-string v0, "LeanbackListPreferenceDialogFragment.title"

    iget-object v1, p0, Lʽᵔ/ˑﹳ;->ʿـ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "LeanbackListPreferenceDialogFragment.message"

    iget-object v1, p0, Lʽᵔ/ˑﹳ;->ﹳⁱ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "LeanbackListPreferenceDialogFragment.isMulti"

    iget-boolean v1, p0, Lʽᵔ/ˑﹳ;->ʻᴵ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "LeanbackListPreferenceDialogFragment.entries"

    iget-object v1, p0, Lʽᵔ/ˑﹳ;->ـˊ:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "LeanbackListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Lʽᵔ/ˑﹳ;->ᵎʿ:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lʽᵔ/ˑﹳ;->ʻᴵ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʽᵔ/ˑﹳ;->ⁱי:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "LeanbackListPreferenceDialogFragment.initialSelections"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "LeanbackListPreferenceDialogFragment.initialSelection"

    iget-object v1, p0, Lʽᵔ/ˑﹳ;->ʻʿ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0404fb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    if-nez p3, :cond_0

    const p3, 0x7f1401b3

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0e00cf

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/VerticalGridView;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/ᵔᵢ;->setWindowAlignment(I)V

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/ᵔᵢ;->setFocusScrollStrategy(I)V

    iget-boolean p3, p0, Lʽᵔ/ˑﹳ;->ʻᴵ:Z

    if-eqz p3, :cond_1

    new-instance p3, Lʽᵔ/ʽ;

    iget-object v1, p0, Lʽᵔ/ˑﹳ;->ـˊ:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lʽᵔ/ˑﹳ;->ᵎʿ:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lʽᵔ/ˑﹳ;->ⁱי:Ljava/util/Set;

    invoke-direct {p3, p0, v1, v2, v3}, Lʽᵔ/ʽ;-><init>(Lʽᵔ/ˑﹳ;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    new-instance p3, Lʽᵔ/ʽ;

    iget-object v1, p0, Lʽᵔ/ˑﹳ;->ـˊ:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lʽᵔ/ˑﹳ;->ᵎʿ:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lʽᵔ/ˑﹳ;->ʻʿ:Ljava/lang/String;

    invoke-direct {p3, p0, v1, v2, v3}, Lʽᵔ/ʽ;-><init>(Lʽᵔ/ˑﹳ;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    iget-object p2, p0, Lʽᵔ/ˑﹳ;->ʿـ:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const p3, 0x7f0b0115

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p2, p0, Lʽᵔ/ˑﹳ;->ﹳⁱ:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const p3, 0x102000b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p1
.end method
