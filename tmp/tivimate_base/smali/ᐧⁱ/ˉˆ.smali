.class public final Lᐧⁱ/ˉˆ;
.super Lˋˋ/ʼـ;
.source "SourceFile"


# instance fields
.field public final ˈⁱ:Landroid/widget/TextView;

.field public final synthetic ˉـ:Lᐧⁱ/ˏי;

.field public final ᴵˑ:Landroid/widget/ImageView;

.field public final ﹳـ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lᐧⁱ/ˏי;Landroid/view/View;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lᐧⁱ/ˉˆ;->ˉـ:Lᐧⁱ/ˏי;

    invoke-direct {p0, p2}, Lˋˋ/ʼـ;-><init>(Landroid/view/View;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    const p1, 0x7f0b016f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lᐧⁱ/ˉˆ;->ﹳـ:Landroid/widget/TextView;

    const p1, 0x7f0b0185

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lᐧⁱ/ˉˆ;->ˈⁱ:Landroid/widget/TextView;

    const p1, 0x7f0b016d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lᐧⁱ/ˉˆ;->ᴵˑ:Landroid/widget/ImageView;

    new-instance p1, Lcom/google/android/material/datepicker/ˉʿ;

    const/16 v0, 0xc

    invoke-direct {p1, v0, p0}, Lcom/google/android/material/datepicker/ˉʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
