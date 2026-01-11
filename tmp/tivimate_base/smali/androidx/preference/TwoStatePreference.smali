.class public abstract Landroidx/preference/TwoStatePreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public ʽᵔ:Ljava/lang/CharSequence;

.field public ʾˊ:Z

.field public י:Z

.field public ـᵎ:Z

.field public ᐧﹶ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final ˈٴ()Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->ʾˊ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-super {p0}, Landroidx/preference/Preference;->ˈٴ()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public final ˉˆ()V
    .locals 2

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->ٴᵢ(Z)V

    return-void
.end method

.method public final ˉٴ(Landroid/view/View;)V
    .locals 4

    .prologue
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    check-cast p1, Landroid/widget/TextView;

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->ʽᵔ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->ʽᵔ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->ᐧﹶ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->ᐧﹶ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵔᵢ()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public ˏי(Ljava/lang/Object;)V
    .locals 2

    .prologue
    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v0}, Lʻᐧ/ʼʼ;->ˈ()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->ٴᵢ(Z)V

    return-void
.end method

.method public final יـ()Landroid/os/Parcelable;
    .locals 2

    .prologue
    invoke-super {p0}, Landroidx/preference/Preference;->יـ()Landroid/os/Parcelable;

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    iget-boolean v1, p0, Landroidx/preference/Preference;->ـˏ:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lʻᐧ/ˊʻ;

    invoke-direct {v0}, Lʻᐧ/ˊʻ;-><init>()V

    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    iput-boolean v1, v0, Lʻᐧ/ˊʻ;->ʾˋ:Z

    return-object v0
.end method

.method public ٴᵢ(Z)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->י:Z

    if-nez v2, :cond_7

    :cond_1
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    iput-boolean v1, p0, Landroidx/preference/TwoStatePreference;->י:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v2}, Lʻᐧ/ʼʼ;->ˈ()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v1}, Lʻᐧ/ʼʼ;->ⁱˊ()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    iget-boolean p1, p1, Lʻᐧ/ʼʼ;->ˑﹳ:Z

    if-nez p1, :cond_6

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->ˈٴ()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ٴﹶ(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented on this data store"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔﹳ(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳᐧ(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lʻᐧ/ˊʻ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lʻᐧ/ˊʻ;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lʻᐧ/ˊʻ;->ʾˋ:Z

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->ٴᵢ(Z)V

    return-void
.end method
