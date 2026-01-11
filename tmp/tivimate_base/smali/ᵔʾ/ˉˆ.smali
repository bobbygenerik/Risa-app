.class public final Lᵔʾ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field public final synthetic ⁱˊ:Lᵔʾ/ᵔﹳ;

.field public final ﹳٴ:Landroid/view/MenuItem$OnActionExpandListener;


# direct methods
.method public constructor <init>(Lᵔʾ/ᵔﹳ;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔʾ/ˉˆ;->ⁱˊ:Lᵔʾ/ᵔﹳ;

    iput-object p2, p0, Lᵔʾ/ˉˆ;->ﹳٴ:Landroid/view/MenuItem$OnActionExpandListener;

    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lᵔʾ/ˉˆ;->ⁱˊ:Lᵔʾ/ᵔﹳ;

    invoke-virtual {v0, p1}, Lיٴ/ˉʿ;->ᵔᵢ(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lᵔʾ/ˉˆ;->ﹳٴ:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lᵔʾ/ˉˆ;->ⁱˊ:Lᵔʾ/ᵔﹳ;

    invoke-virtual {v0, p1}, Lיٴ/ˉʿ;->ᵔᵢ(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lᵔʾ/ˉˆ;->ﹳٴ:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
