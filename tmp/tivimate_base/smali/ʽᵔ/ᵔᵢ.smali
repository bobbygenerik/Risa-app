.class public abstract Lʽᵔ/ᵔᵢ;
.super Lˑʼ/ᴵᵔ;
.source "SourceFile"


# instance fields
.field public final ᐧˎ:Lʻᐧ/ˈٴ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lˑʼ/ᴵᵔ;-><init>()V

    new-instance v0, Lʻᐧ/ˈٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lʻᐧ/ˈٴ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʽᵔ/ᵔᵢ;->ᐧˎ:Lʻᐧ/ˈٴ;

    return-void
.end method


# virtual methods
.method public ʻᴵ(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lʽᵔ/ᵔᵢ;->ˈـ()V

    :cond_0
    return-void
.end method

.method public final ʽⁱ()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    check-cast v0, Landroidx/leanback/preference/LeanbackSettingsRootView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lʽᵔ/ᵔᵢ;->ᐧˎ:Lʻᐧ/ˈٴ;

    invoke-virtual {v0, v1}, Landroidx/leanback/preference/LeanbackSettingsRootView;->setOnBackKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public abstract ˈـ()V
.end method

.method public final ˎʾ(Lˑʼ/ᴵᵔ;)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˉـ()Lˑʼ/ʿ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lˑʼ/ﹳٴ;

    invoke-direct {v1, v0}, Lˑʼ/ﹳٴ;-><init>(Lˑʼ/ʿ;)V

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ˉـ()Lˑʼ/ʿ;

    move-result-object v0

    const-string v2, "androidx.leanback.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    invoke-virtual {v0, v2}, Lˑʼ/ʿ;->ᴵᵔ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v0

    const v3, 0x7f0b0350

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lˑʼ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v1, v3, p1, v2}, Lˑʼ/ﹳٴ;->ﾞʻ(ILˑʼ/ᴵᵔ;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v3, p1, v2, v0}, Lˑʼ/ﹳٴ;->ʼˎ(ILˑʼ/ᴵᵔ;Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v1}, Lˑʼ/ﹳٴ;->ﾞᴵ()V

    return-void
.end method

.method public final ˎᐧ()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    check-cast v0, Landroidx/leanback/preference/LeanbackSettingsRootView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/preference/LeanbackSettingsRootView;->setOnBackKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public final ᐧﹶ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e00db

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ﾞˋ(Lʻᐧ/ˏי;Landroidx/preference/DialogPreference;)Z
    .locals 3

    .prologue
    if-eqz p1, :cond_3

    instance-of v0, p2, Landroidx/preference/ListPreference;

    const-string v1, "key"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/preference/ListPreference;

    iget-object p2, p2, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lʽᵔ/ˑﹳ;

    invoke-direct {p2}, Lʽᵔ/ˑﹳ;-><init>()V

    invoke-virtual {p2, v0}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lˑʼ/ᴵᵔ;->ˋˊ(Lʻᐧ/ˏי;)V

    invoke-virtual {p0, p2}, Lʽᵔ/ᵔᵢ;->ˎʾ(Lˑʼ/ᴵᵔ;)V

    return v2

    :cond_0
    instance-of v0, p2, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    check-cast p2, Landroidx/preference/MultiSelectListPreference;

    iget-object p2, p2, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lʽᵔ/ˑﹳ;

    invoke-direct {p2}, Lʽᵔ/ˑﹳ;-><init>()V

    invoke-virtual {p2, v0}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lˑʼ/ᴵᵔ;->ˋˊ(Lʻᐧ/ˏי;)V

    invoke-virtual {p0, p2}, Lʽᵔ/ᵔᵢ;->ˎʾ(Lˑʼ/ᴵᵔ;)V

    return v2

    :cond_1
    instance-of v0, p2, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_2

    iget-object p2, p2, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lʽᵔ/ⁱˊ;

    invoke-direct {p2}, Lʽᵔ/ⁱˊ;-><init>()V

    invoke-virtual {p2, v0}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lˑʼ/ᴵᵔ;->ˋˊ(Lʻᐧ/ˏי;)V

    invoke-virtual {p0, p2}, Lʽᵔ/ᵔᵢ;->ˎʾ(Lˑʼ/ᴵᵔ;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot display dialog for preference "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", Caller must not be null!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
