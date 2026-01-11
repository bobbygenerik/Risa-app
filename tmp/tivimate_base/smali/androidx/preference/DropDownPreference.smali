.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source "SourceFile"


# instance fields
.field public final ʻᴵ:Lʻᐧ/ⁱˊ;

.field public ᐧˎ:Landroid/widget/Spinner;

.field public final ⁱˉ:Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const v0, 0x7f04021a

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lʻᐧ/ⁱˊ;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lʻᐧ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->ʻᴵ:Lʻᐧ/ⁱˊ;

    new-instance p2, Landroid/widget/ArrayAdapter;

    const v0, 0x1090009

    invoke-direct {p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->ⁱˉ:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Landroidx/preference/ListPreference;->ʼـ:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ˆʾ()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroidx/preference/Preference;->ˆʾ()V

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->ⁱˉ:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final ˉˆ()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->ᐧˎ:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method

.method public final ᵔʾ(Lʻᐧ/ʾˋ;)V
    .locals 5

    .prologue
    iget-object v0, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    const v1, 0x7f0b0369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Landroidx/preference/DropDownPreference;->ᐧˎ:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->ⁱˉ:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->ᐧˎ:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->ʻᴵ:Lʻᐧ/ⁱˊ;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->ᐧˎ:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/ListPreference;->יﹳ:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/preference/ListPreference;->ˎᐧ:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, v2, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->ᵔʾ(Lʻᐧ/ʾˋ;)V

    return-void
.end method
