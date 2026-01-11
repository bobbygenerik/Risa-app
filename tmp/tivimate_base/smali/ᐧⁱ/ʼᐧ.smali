.class public final Lᐧⁱ/ʼᐧ;
.super Lˋˋ/ʼـ;
.source "SourceFile"


# instance fields
.field public final ˈⁱ:Landroid/view/View;

.field public final ﹳـ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    invoke-direct {p0, p1}, Lˋˋ/ʼـ;-><init>(Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    const v0, 0x7f0b0188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lᐧⁱ/ʼᐧ;->ﹳـ:Landroid/widget/TextView;

    const v0, 0x7f0b0161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lᐧⁱ/ʼᐧ;->ˈⁱ:Landroid/view/View;

    return-void
.end method
