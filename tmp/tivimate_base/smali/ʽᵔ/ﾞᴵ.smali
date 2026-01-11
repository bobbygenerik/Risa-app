.class public Lʽᵔ/ﾞᴵ;
.super Lˑʼ/ᴵᵔ;
.source "SourceFile"


# instance fields
.field public ᐧˎ:Landroidx/preference/DialogPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lˑʼ/ᴵᵔ;-><init>()V

    invoke-static {p0}, Lﹳˋ/ʽʽ;->ⁱˊ(Lˑʼ/ᴵᵔ;)V

    return-void
.end method


# virtual methods
.method public ʽᵔ(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ᴵᵔ;->ʽᵔ(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lˑʼ/ᴵᵔ;->ᴵʼ(Z)Lˑʼ/ᴵᵔ;

    move-result-object p1

    instance-of v0, p1, Lʻᐧ/ˏי;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target fragment "

    const-string v2, " must implement TargetFragment interface"

    invoke-static {v1, p1, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﾞˋ()Landroidx/preference/DialogPreference;
    .locals 2

    .prologue
    iget-object v0, p0, Lʽᵔ/ﾞᴵ;->ᐧˎ:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lˑʼ/ᴵᵔ;->ᴵʼ(Z)Lˑʼ/ᴵᵔ;

    move-result-object v1

    check-cast v1, Lʻᐧ/ˏי;

    invoke-virtual {v1, v0}, Lʻᐧ/ˏי;->ﾞˋ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Lʽᵔ/ﾞᴵ;->ᐧˎ:Landroidx/preference/DialogPreference;

    :cond_0
    iget-object v0, p0, Lʽᵔ/ﾞᴵ;->ᐧˎ:Landroidx/preference/DialogPreference;

    return-object v0
.end method
