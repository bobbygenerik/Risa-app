.class public Landroidx/preference/SwitchPreferenceCompat;
.super Landroidx/preference/TwoStatePreference;
.source "SourceFile"


# instance fields
.field public final ʼـ:Ljava/lang/String;

.field public final ˎᐧ:Ljava/lang/String;

.field public final ˑ:Lʻᐧ/ﹳٴ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v0, 0x7f0405dc

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Lʻᐧ/ﹳٴ;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lʻᐧ/ﹳٴ;-><init>(Landroidx/preference/TwoStatePreference;I)V

    iput-object v2, p0, Landroidx/preference/SwitchPreferenceCompat;->ˑ:Lʻᐧ/ﹳٴ;

    sget-object v2, Lʻᐧ/ᴵˊ;->ˉʿ:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->ʽᵔ:Ljava/lang/CharSequence;

    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_1
    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->ᐧﹶ:Ljava/lang/CharSequence;

    iget-boolean p2, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_3
    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    iput-object p2, p0, Landroidx/preference/SwitchPreferenceCompat;->ʼـ:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    iput-object p2, p0, Landroidx/preference/SwitchPreferenceCompat;->ˎᐧ:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/TwoStatePreference;->ʾˊ:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ʽﹳ(Landroid/view/View;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroidx/preference/Preference;->ʽﹳ(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/preference/Preference;->ʾˋ:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0383

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreferenceCompat;->ᵎⁱ(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->ˉٴ(Landroid/view/View;)V

    return-void
.end method

.method public final ᵎⁱ(Landroid/view/View;)V
    .locals 3

    .prologue
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->ـᵎ:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->ʼـ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->ˎᐧ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->ˑ:Lʻᐧ/ﹳٴ;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

.method public final ᵔʾ(Lʻᐧ/ʾˋ;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ᵔʾ(Lʻᐧ/ʾˋ;)V

    const v0, 0x7f0b0383

    invoke-virtual {p1, v0}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreferenceCompat;->ᵎⁱ(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->ˉٴ(Landroid/view/View;)V

    return-void
.end method
