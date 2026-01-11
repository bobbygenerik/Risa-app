.class public final Lʻᐧ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic ⁱˊ:Landroidx/preference/TwoStatePreference;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/TwoStatePreference;I)V
    .locals 0

    iput p2, p0, Lʻᐧ/ﹳٴ;->ﹳٴ:I

    iput-object p1, p0, Lʻᐧ/ﹳٴ;->ⁱˊ:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    iget p1, p0, Lʻᐧ/ﹳٴ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lʻᐧ/ﹳٴ;->ⁱˊ:Landroidx/preference/TwoStatePreference;

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->ٴᵢ(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lʻᐧ/ﹳٴ;->ⁱˊ:Landroidx/preference/TwoStatePreference;

    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->ٴᵢ(Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lʻᐧ/ﹳٴ;->ⁱˊ:Landroidx/preference/TwoStatePreference;

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->ٴᵢ(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
