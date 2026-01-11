.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public final ʽᵔ:Ljava/lang/String;

.field public final ʾˊ:Ljava/lang/String;

.field public final ˑ:I

.field public final י:Ljava/lang/String;

.field public ـᵎ:Ljava/lang/CharSequence;

.field public final ᐧﹶ:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0401f4

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Lˉٴ/ⁱˊ;->ⁱˊ(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lʻᐧ/ᴵˊ;->ʽ:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroidx/preference/DialogPreference;->ـᵎ:Ljava/lang/CharSequence;

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/preference/DialogPreference;->ـᵎ:Ljava/lang/CharSequence;

    :cond_1
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Landroidx/preference/DialogPreference;->ʽᵔ:Ljava/lang/String;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_3
    iput-object p2, p0, Landroidx/preference/DialogPreference;->ᐧﹶ:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    iput-object p2, p0, Landroidx/preference/DialogPreference;->י:Ljava/lang/String;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    iput-object p2, p0, Landroidx/preference/DialogPreference;->ʾˊ:Ljava/lang/String;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/DialogPreference;->ˑ:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public ˉˆ()V
    .locals 8

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    iget-object v0, v0, Lʻᐧ/ʼʼ;->ʼˎ:Lʻᐧ/ˏי;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lʻᐧ/ˏי;->ˈـ()Lˑʼ/ᴵᵔ;

    move-result-object v1

    instance-of v1, v1, Lʽᵔ/ᵔᵢ;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lʻᐧ/ˏי;->ˈـ()Lˑʼ/ᴵᵔ;

    move-result-object v1

    check-cast v1, Lʽᵔ/ᵔᵢ;

    invoke-virtual {v1, v0, p0}, Lʽᵔ/ᵔᵢ;->ﾞˋ(Lʻᐧ/ˏי;Landroidx/preference/DialogPreference;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move-object v3, v0

    :goto_1
    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    instance-of v4, v3, Lʽᵔ/ᵔᵢ;

    if-eqz v4, :cond_1

    move-object v1, v3

    check-cast v1, Lʽᵔ/ᵔᵢ;

    invoke-virtual {v1, v0, p0}, Lʽᵔ/ᵔᵢ;->ﾞˋ(Lʻᐧ/ˏי;Landroidx/preference/DialogPreference;)Z

    move-result v1

    :cond_1
    iget-object v3, v3, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ʿ()Landroid/content/Context;

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    :cond_4
    if-eqz v1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object v1

    const-string v3, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v3}, Lˑʼ/ʿ;->ᴵᵔ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v1

    if-eqz v1, :cond_6

    goto/16 :goto_3

    :cond_6
    instance-of v1, p0, Landroidx/preference/EditTextPreference;

    const/4 v4, 0x1

    const-string v5, "key"

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    new-instance v6, Lʻᐧ/ˈ;

    invoke-direct {v6}, Lʻᐧ/ˈ;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v4}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v7, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    instance-of v1, p0, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    new-instance v6, Lʻᐧ/ᵔᵢ;

    invoke-direct {v6}, Lʻᐧ/ᵔᵢ;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v4}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v7, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_8
    instance-of v1, p0, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    new-instance v6, Lʻᐧ/ٴﹶ;

    invoke-direct {v6}, Lʻᐧ/ٴﹶ;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v4}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v7, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    :goto_2
    invoke-virtual {v6, v0}, Lˑʼ/ᴵᵔ;->ˋˊ(Lʻᐧ/ˏי;)V

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object v0

    iput-boolean v2, v6, Lˑʼ/ʻٴ;->ʽˑ:Z

    iput-boolean v4, v6, Lˑʼ/ʻٴ;->ˋˊ:Z

    new-instance v1, Lˑʼ/ﹳٴ;

    invoke-direct {v1, v0}, Lˑʼ/ﹳٴ;-><init>(Lˑʼ/ʿ;)V

    iput-boolean v4, v1, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    invoke-virtual {v1, v2, v6, v3, v4}, Lˑʼ/ﹳٴ;->ʼˎ(ILˑʼ/ᴵᵔ;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lˑʼ/ﹳٴ;->ﾞᴵ()V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot display dialog for an unknown Preference type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    return-void
.end method
