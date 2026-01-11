.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public ʼـ:Landroid/widget/TextView;

.field public ʽᵔ:I

.field public final ʽⁱ:Z

.field public ʾˊ:Z

.field public final ʾﾞ:Lʻᐧ/ʽʽ;

.field public final ˎᐧ:Z

.field public ˑ:Landroid/widget/SeekBar;

.field public י:I

.field public final יﹳ:Z

.field public ـᵎ:I

.field public ᐧﹶ:I

.field public final ⁱˉ:Lʻᐧ/ˈٴ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v0, 0x7f04054e

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Lʻᐧ/ʽʽ;

    invoke-direct {v2, p0}, Lʻᐧ/ʽʽ;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v2, p0, Landroidx/preference/SeekBarPreference;->ʾﾞ:Lʻᐧ/ʽʽ;

    new-instance v2, Lʻᐧ/ˈٴ;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lʻᐧ/ˈٴ;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/preference/SeekBarPreference;->ⁱˉ:Lʻᐧ/ˈٴ;

    sget-object v2, Lʻᐧ/ᴵˊ;->ٴﹶ:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    const/16 p2, 0x64

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iget v2, p0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    if-ge p2, v2, :cond_0

    move p2, v2

    :cond_0
    iget v2, p0, Landroidx/preference/SeekBarPreference;->ᐧﹶ:I

    if-eq p2, v2, :cond_1

    iput p2, p0, Landroidx/preference/SeekBarPreference;->ᐧﹶ:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_1
    const/4 p2, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iget v2, p0, Landroidx/preference/SeekBarPreference;->י:I

    if-eq p2, v2, :cond_2

    iget v2, p0, Landroidx/preference/SeekBarPreference;->ᐧﹶ:I

    iget v3, p0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    sub-int/2addr v2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->י:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_2
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->ˎᐧ:Z

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->יﹳ:Z

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->ʽⁱ:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ˏי(Ljava/lang/Object;)V
    .locals 2

    .prologue
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

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

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->ٴᵢ(IZ)V

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
    new-instance v0, Lʻᐧ/ᴵᵔ;

    invoke-direct {v0}, Lʻᐧ/ᴵᵔ;-><init>()V

    iget v1, p0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    iput v1, v0, Lʻᐧ/ᴵᵔ;->ʾˋ:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    iput v1, v0, Lʻᐧ/ᴵᵔ;->ᴵˊ:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->ᐧﹶ:I

    iput v1, v0, Lʻᐧ/ᴵᵔ;->ʽʽ:I

    return-object v0
.end method

.method public final ٴᵢ(IZ)V
    .locals 3

    .prologue
    iget v0, p0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->ᐧﹶ:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->ʼـ:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    not-int v0, p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v1}, Lʻᐧ/ʼʼ;->ˈ()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v0}, Lʻᐧ/ʼʼ;->ⁱˊ()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    iget-boolean p1, p1, Lʻᐧ/ʼʼ;->ˑﹳ:Z

    if-nez p1, :cond_7

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    :goto_1
    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented on this data store"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void
.end method

.method public final ᵔʾ(Lʻᐧ/ʾˋ;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Landroidx/preference/Preference;->ᵔʾ(Lʻᐧ/ʾˋ;)V

    iget-object v0, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->ⁱˉ:Lʻᐧ/ˈٴ;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0b0347

    invoke-virtual {p1, v0}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->ˑ:Landroid/widget/SeekBar;

    const v0, 0x7f0b0348

    invoke-virtual {p1, v0}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->ʼـ:Landroid/widget/TextView;

    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->יﹳ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->ʼـ:Landroid/widget/TextView;

    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->ˑ:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    nop

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->ʾﾞ:Lʻᐧ/ʽʽ;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->ˑ:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->ᐧﹶ:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->י:I

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->ˑ:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->ˑ:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->י:I

    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->ˑ:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->ʼـ:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->ˑ:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ʼˎ()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final ᵔﹳ(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳᐧ(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lʻᐧ/ᴵᵔ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lʻᐧ/ᴵᵔ;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    iget v0, p1, Lʻᐧ/ᴵᵔ;->ʾˋ:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    iget v0, p1, Lʻᐧ/ᴵᵔ;->ᴵˊ:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    iget p1, p1, Lʻᐧ/ᴵᵔ;->ʽʽ:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->ᐧﹶ:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    return-void
.end method
