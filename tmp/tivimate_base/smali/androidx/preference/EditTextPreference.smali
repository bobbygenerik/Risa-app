.class public Landroidx/preference/EditTextPreference;
.super Landroidx/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field public ʼـ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const v0, 0x7f04021f

    const v1, 0x1010092

    invoke-static {p1, v0, v1}, Lˉٴ/ⁱˊ;->ⁱˊ(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lʻᐧ/ᴵˊ;->ˈ:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lﹳˋ/ʼˎ;->ᴵˊ:Lﹳˋ/ʼˎ;

    if-nez p2, :cond_0

    new-instance p2, Lﹳˋ/ʼˎ;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object p2, Lﹳˋ/ʼˎ;->ᴵˊ:Lﹳˋ/ʼˎ;

    :cond_0
    sget-object p2, Lﹳˋ/ʼˎ;->ᴵˊ:Lﹳˋ/ʼˎ;

    iput-object p2, p0, Landroidx/preference/Preference;->ٴﹳ:Lʻᐧ/ᵔʾ;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ˈٴ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->ʼـ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/preference/Preference;->ˈٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ˏי(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ﾞᴵ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->ٴᵢ(Ljava/lang/String;)V

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
    new-instance v0, Lʻᐧ/ʽ;

    invoke-direct {v0}, Lʻᐧ/ʽ;-><init>()V

    iget-object v1, p0, Landroidx/preference/EditTextPreference;->ʼـ:Ljava/lang/String;

    iput-object v1, v0, Lʻᐧ/ʽ;->ʾˋ:Ljava/lang/String;

    return-object v0
.end method

.method public final ٴᵢ(Ljava/lang/String;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->ˈٴ()Z

    move-result v0

    iput-object p1, p0, Landroidx/preference/EditTextPreference;->ʼـ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ʻٴ(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->ˈٴ()Z

    move-result p1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ٴﹶ(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    return-void
.end method

.method public final ᵔﹳ(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳᐧ(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lʻᐧ/ʽ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lʻᐧ/ʽ;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lʻᐧ/ʽ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->ٴᵢ(Ljava/lang/String;)V

    return-void
.end method
