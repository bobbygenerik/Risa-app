.class public Landroidx/preference/MultiSelectListPreference;
.super Landroidx/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field public final ʼـ:[Ljava/lang/CharSequence;

.field public final ˎᐧ:[Ljava/lang/CharSequence;

.field public final יﹳ:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const v0, 0x7f0401f4

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Lˉٴ/ⁱˊ;->ⁱˊ(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/preference/MultiSelectListPreference;->יﹳ:Ljava/util/HashSet;

    sget-object v1, Lʻᐧ/ᴵˊ;->ﾞᴵ:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroidx/preference/MultiSelectListPreference;->ʼـ:[Ljava/lang/CharSequence;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Landroidx/preference/MultiSelectListPreference;->ˎᐧ:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ˏי(Ljava/lang/Object;)V
    .locals 2

    .prologue
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v0}, Lʻᐧ/ʼʼ;->ˈ()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/MultiSelectListPreference;->ٴᵢ(Ljava/util/Set;)V

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
    new-instance v0, Lʻᐧ/ʼˎ;

    invoke-direct {v0}, Lʻᐧ/ʼˎ;-><init>()V

    iget-object v1, p0, Landroidx/preference/MultiSelectListPreference;->יﹳ:Ljava/util/HashSet;

    iput-object v1, v0, Lʻᐧ/ʼˎ;->ʾˋ:Ljava/util/HashSet;

    return-object v0
.end method

.method public final ٴᵢ(Ljava/util/Set;)V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreference;->יﹳ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v0

    const/4 v1, 0x0

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

    iget-object v2, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v0}, Lʻᐧ/ʼʼ;->ⁱˊ()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    iget-boolean p1, p1, Lʻᐧ/ʼʼ;->ˑﹳ:Z

    if-nez p1, :cond_4

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented on this data store"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔﹳ(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public final ﹳᐧ(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lʻᐧ/ʼˎ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lʻᐧ/ʼˎ;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lʻᐧ/ʼˎ;->ʾˋ:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Landroidx/preference/MultiSelectListPreference;->ٴᵢ(Ljava/util/Set;)V

    return-void
.end method
