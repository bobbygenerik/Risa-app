.class public Landroidx/preference/SwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "SourceFile"


# instance fields
.field public final ʼـ:Ljava/lang/String;

.field public final ˎᐧ:Ljava/lang/String;

.field public final ˑ:Lʻᐧ/ﹳٴ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0405dd

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Lˉٴ/ⁱˊ;->ⁱˊ(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lʻᐧ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lʻᐧ/ﹳٴ;-><init>(Landroidx/preference/TwoStatePreference;I)V

    iput-object v0, p0, Landroidx/preference/SwitchPreference;->ˑ:Lʻᐧ/ﹳٴ;

    sget-object v0, Lʻᐧ/ᴵˊ;->ﾞʻ:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

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
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->ʼـ:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->ˎᐧ:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

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
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreference;->ᵎⁱ(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->ˉٴ(Landroid/view/View;)V

    return-void
.end method

.method public final ᵎⁱ(Landroid/view/View;)V
    .locals 3

    .prologue
    instance-of v0, p1, Landroid/widget/Switch;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/Switch;

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

    check-cast p1, Landroid/widget/Switch;

    iget-object v0, p0, Landroidx/preference/SwitchPreference;->ʼـ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/SwitchPreference;->ˎᐧ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/preference/SwitchPreference;->ˑ:Lʻᐧ/ﹳٴ;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

.method public ᵔʾ(Lʻᐧ/ʾˋ;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ᵔʾ(Lʻᐧ/ʾˋ;)V

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/SwitchPreference;->ᵎⁱ(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->ˉٴ(Landroid/view/View;)V

    return-void
.end method
