.class public final Lʻᐧ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʻᐧ/ⁱˊ;->ʾˋ:I

    iput-object p2, p0, Lʻᐧ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ⁱˊ(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method private final ﹳٴ(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    iget p1, p0, Lʻᐧ/ⁱˊ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lʻᐧ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˉˆ/ʿـ;

    iget-object p1, p1, Lˉˆ/ʿـ;->ʽʽ:Lˉˆ/ʾˊ;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lˉˆ/ʾˊ;->setListSelectionHidden(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lʻᐧ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/preference/DropDownPreference;

    if-ltz p3, :cond_1

    iget-object p2, p1, Landroidx/preference/ListPreference;->ˎᐧ:[Ljava/lang/CharSequence;

    aget-object p2, p2, p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Landroidx/preference/ListPreference;->יﹳ:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->ˉٴ(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    iget p1, p0, Lʻᐧ/ⁱˊ;->ʾˋ:I

    return-void
.end method
