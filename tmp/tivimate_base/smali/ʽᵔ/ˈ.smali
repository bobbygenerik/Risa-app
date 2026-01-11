.class public final Lʽᵔ/ˈ;
.super Lˋˋ/ʼـ;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final ˈⁱ:Landroid/widget/TextView;

.field public final ᴵˑ:Lˋˋ/ᴵˑ;

.field public final ﹳـ:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lʽᵔ/ʽ;)V
    .locals 2

    invoke-direct {p0, p1}, Lˋˋ/ʼـ;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lʽᵔ/ˈ;->ﹳـ:Landroid/widget/Checkable;

    const v0, 0x7f0b00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lʽᵔ/ˈ;->ˈⁱ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    check-cast p2, Lˋˋ/ᴵˑ;

    iput-object p2, p0, Lʽᵔ/ˈ;->ᴵˑ:Lˋˋ/ᴵˑ;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    iget-object p1, p0, Lʽᵔ/ˈ;->ᴵˑ:Lˋˋ/ᴵˑ;

    check-cast p1, Lʽᵔ/ʽ;

    iget v0, p1, Lʽᵔ/ʽ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lʽᵔ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lʽᵔ/ˑﹳ;

    iget-object v1, p1, Lʽᵔ/ʽ;->ﾞᴵ:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lʽᵔ/ﾞᴵ;->ﾞˋ()Landroidx/preference/DialogPreference;

    move-result-object v4

    check-cast v4, Landroidx/preference/ListPreference;

    if-ltz v2, :cond_1

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {v4, v1}, Landroidx/preference/ListPreference;->ˉٴ(Ljava/lang/String;)V

    iput-object v3, p1, Lʽᵔ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ˈⁱ()V

    invoke-virtual {p1}, Lˋˋ/ᴵˑ;->ˈ()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, Lʽᵔ/ʽ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lʽᵔ/ˑﹳ;

    iget-object v1, p1, Lʽᵔ/ʽ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ⁱˊ()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lʽᵔ/ʽ;->ﾞᴵ:[Ljava/lang/CharSequence;

    aget-object v2, v3, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Lʽᵔ/ﾞᴵ;->ﾞˋ()Landroidx/preference/DialogPreference;

    move-result-object v2

    check-cast v2, Landroidx/preference/MultiSelectListPreference;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Landroidx/preference/MultiSelectListPreference;->ٴᵢ(Ljava/util/Set;)V

    iput-object v1, v0, Lʽᵔ/ˑﹳ;->ⁱי:Ljava/util/Set;

    invoke-virtual {p1}, Lˋˋ/ᴵˑ;->ˈ()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
