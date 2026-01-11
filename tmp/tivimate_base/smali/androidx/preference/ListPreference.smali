.class public Landroidx/preference/ListPreference;
.super Landroidx/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field public final ʼـ:[Ljava/lang/CharSequence;

.field public ʽⁱ:Ljava/lang/String;

.field public ʾﾞ:Z

.field public final ˎᐧ:[Ljava/lang/CharSequence;

.field public יﹳ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0401f4

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Lˉٴ/ⁱˊ;->ⁱˊ(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lʻᐧ/ᴵˊ;->ˑﹳ:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Landroidx/preference/ListPreference;->ʼـ:[Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Landroidx/preference/ListPreference;->ˎᐧ:[Ljava/lang/CharSequence;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lˋⁱ/ﾞᴵ;->ʾˋ:Lˋⁱ/ﾞᴵ;

    if-nez v2, :cond_2

    new-instance v2, Lˋⁱ/ﾞᴵ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lˋⁱ/ﾞᴵ;->ʾˋ:Lˋⁱ/ﾞᴵ;

    :cond_2
    sget-object v2, Lˋⁱ/ﾞᴵ;->ʾˋ:Lˋⁱ/ﾞᴵ;

    iput-object v2, p0, Landroidx/preference/Preference;->ٴﹳ:Lʻᐧ/ᵔʾ;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lʻᐧ/ᴵˊ;->ᵎﹶ:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    iput-object p2, p0, Landroidx/preference/ListPreference;->ʽⁱ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ʾˋ(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroidx/preference/Preference;->ʾˋ(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/ListPreference;->ʽⁱ:Ljava/lang/String;

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/ListPreference;->ʽⁱ:Ljava/lang/String;

    return-void
.end method

.method public final ˉٴ(Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/preference/ListPreference;->יﹳ:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/preference/ListPreference;->ʾﾞ:Z

    if-nez v1, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/preference/ListPreference;->יﹳ:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/preference/ListPreference;->ʾﾞ:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ʻٴ(Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_1
    return-void
.end method

.method public final ˏי(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ﾞᴵ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->ˉٴ(Ljava/lang/String;)V

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
    new-instance v0, Lʻᐧ/ﾞᴵ;

    invoke-direct {v0}, Lʻᐧ/ﾞᴵ;-><init>()V

    iget-object v1, p0, Landroidx/preference/ListPreference;->יﹳ:Ljava/lang/String;

    iput-object v1, v0, Lʻᐧ/ﾞᴵ;->ʾˋ:Ljava/lang/String;

    return-object v0
.end method

.method public final ٴᵢ(Ljava/lang/String;)I
    .locals 3

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/preference/ListPreference;->ˎᐧ:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final ᵔᵢ()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ٴﹳ:Lʻᐧ/ᵔʾ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lʻᐧ/ᵔʾ;->ᵔﹳ(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/ListPreference;->יﹳ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->ٴᵢ(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/preference/ListPreference;->ʼـ:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0}, Landroidx/preference/Preference;->ᵔᵢ()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/ListPreference;->ʽⁱ:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    return-object v1

    :cond_4
    const-string v1, "ListPreference"

    const-string v2, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead."

    nop

    return-object v0
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

    const-class v1, Lʻᐧ/ﾞᴵ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lʻᐧ/ﾞᴵ;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lʻᐧ/ﾞᴵ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->ˉٴ(Ljava/lang/String;)V

    return-void
.end method
