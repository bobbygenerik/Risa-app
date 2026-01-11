.class public final Lˆᵢ/ʽ;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Landroid/view/View;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lˆᵢ/ʽ;->ﹳٴ:I

    iput-object p1, p0, Lˆᵢ/ʽ;->ⁱˊ:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .prologue
    iget v0, p0, Lˆᵢ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˆᵢ/ʽ;->ⁱˊ:Landroid/view/View;

    check-cast v0, Landroidx/leanback/preference/internal/OutlineOnlyWithChildrenFrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, v0, Landroidx/leanback/preference/internal/OutlineOnlyWithChildrenFrameLayout;->ᴵˊ:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lˆᵢ/ʽ;->ⁱˊ:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iget-object p1, p1, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lˆᵢ/ﾞᴵ;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
