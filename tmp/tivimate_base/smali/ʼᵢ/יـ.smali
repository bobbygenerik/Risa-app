.class public final synthetic Lʼᵢ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʼᵢ/יـ;->ʾˋ:I

    iput-object p2, p0, Lʼᵢ/יـ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    iget v0, p0, Lʼᵢ/יـ;->ʾˋ:I

    iget-object v1, p0, Lʼᵢ/יـ;->ᴵˊ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lʼⁱ/ˎᐧ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˎᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_0
    check-cast v1, Lʼⁱ/ˑˆ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˑˆ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_1
    check-cast v1, Lˉˊ/ˈʿ;

    sget-object v0, Lᴵʽ/ˈˏ;->ˑˆ:[Lᐧˆ/ˈ;

    invoke-virtual {v1, p1, p2}, Lˉˊ/ˈʿ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_2
    check-cast v1, Lʼⁱ/יـ;

    sget-object v0, Lᴵʽ/ʼˈ;->ﾞˏ:[Lᐧˆ/ˈ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/יـ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_3
    check-cast v1, Lʼⁱ/ˎᐧ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˎᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_4
    check-cast v1, Lˏʽ/ʽ;

    invoke-virtual {v1, p1, p2}, Lˏʽ/ʽ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_5
    check-cast v1, Lˏʽ/ʽ;

    invoke-virtual {v1, p1, p2}, Lˏʽ/ʽ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_6
    check-cast v1, Lˏʽ/ʽ;

    invoke-virtual {v1, p1, p2}, Lˏʽ/ʽ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_7
    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iget-boolean v0, p1, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p2, Lcom/google/android/material/button/MaterialButton;->ˈʿ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :goto_0
    return v0

    :pswitch_8
    check-cast v1, Lˏʽ/ʽ;

    invoke-virtual {v1, p1, p2}, Lˏʽ/ʽ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_9
    check-cast v1, Lʼⁱ/ˑˆ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˑˆ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_a
    check-cast v1, Lˉˊ/ˈʿ;

    sget-object v0, Lˉˊ/ʿᵢ;->ˑˆ:[Lᐧˆ/ˈ;

    invoke-virtual {v1, p1, p2}, Lˉˊ/ˈʿ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_b
    check-cast v1, Lʼⁱ/יـ;

    sget-object v0, Lˉˊ/ᵎⁱ;->ﾞˏ:[Lᐧˆ/ˈ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/יـ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_c
    check-cast v1, Lʼⁱ/ˑˆ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˑˆ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_d
    check-cast v1, Lˉʾ/ˉʿ;

    invoke-virtual {v1, p1, p2}, Lˉʾ/ˉʿ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_e
    check-cast v1, Lʼⁱ/ˎᐧ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˎᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_f
    check-cast v1, Lʼⁱ/ˑˆ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˑˆ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_10
    check-cast v1, Lˉʾ/ˉʿ;

    invoke-virtual {v1, p1, p2}, Lˉʾ/ˉʿ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_11
    check-cast v1, Lʼⁱ/ˎᐧ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˎᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_12
    check-cast v1, Lʼⁱ/ˎᐧ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˎᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_13
    check-cast v1, Lˉʾ/יـ;

    invoke-virtual {v1, p1, p2}, Lˉʾ/יـ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_14
    check-cast v1, Lˉʾ/ﹳᐧ;

    invoke-virtual {v1, p1, p2}, Lˉʾ/ﹳᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_15
    check-cast v1, Lˉʾ/ˉʿ;

    invoke-virtual {v1, p1, p2}, Lˉʾ/ˉʿ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_16
    check-cast v1, Lʼⁱ/ˎᐧ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˎᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_17
    check-cast v1, Lʼⁱ/ˑˆ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˑˆ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_18
    check-cast v1, Lʼⁱ/ˎᐧ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˎᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_19
    check-cast v1, Lʼⁱ/ˑˆ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˑˆ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_1a
    check-cast v1, Lʼⁱ/ˎᐧ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/ˎᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_1b
    check-cast v1, Lʼⁱ/יـ;

    sget-object v0, Lʼⁱ/ᵎⁱ;->ﹶʽ:[Lᐧˆ/ˈ;

    invoke-virtual {v1, p1, p2}, Lʼⁱ/יـ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_1c
    check-cast v1, Lʼᵢ/ʻٴ;

    invoke-interface {v1, p2}, Lʼᵢ/ʻٴ;->ʽ(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v1, p1}, Lʼᵢ/ʻٴ;->ʽ(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
