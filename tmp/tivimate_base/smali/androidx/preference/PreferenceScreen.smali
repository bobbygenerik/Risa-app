.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;
.source "SourceFile"


# instance fields
.field public final יﹳ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404f9

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Lˉٴ/ⁱˊ;->ⁱˊ(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->יﹳ:Z

    return-void
.end method


# virtual methods
.method public final ˉˆ()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ᵔٴ:Landroid/content/Intent;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/preference/Preference;->ˈʿ:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->ᐧﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    iget-object v0, v0, Lʻᐧ/ʼʼ;->ˆʾ:Lʻᐧ/ˏי;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lʻᐧ/ˏי;->ˈـ()Lˑʼ/ᴵᵔ;

    move-result-object v1

    instance-of v1, v1, Lʽᵔ/ᵔᵢ;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lʻᐧ/ˏי;->ˈـ()Lˑʼ/ᴵᵔ;

    move-result-object v1

    check-cast v1, Lʽᵔ/ᵔᵢ;

    check-cast v1, Lʼⁱ/ʼᐧ;

    invoke-virtual {v1, p0}, Lʼⁱ/ʼᐧ;->ˑˆ(Landroidx/preference/PreferenceScreen;)V

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v3, v0

    :goto_1
    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    instance-of v4, v3, Lʽᵔ/ᵔᵢ;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Lʽᵔ/ᵔᵢ;

    check-cast v1, Lʼⁱ/ʼᐧ;

    invoke-virtual {v1, p0}, Lʼⁱ/ʼᐧ;->ˑˆ(Landroidx/preference/PreferenceScreen;)V

    move v1, v2

    :cond_2
    iget-object v3, v3, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    :cond_5
    :goto_2
    return-void
.end method
